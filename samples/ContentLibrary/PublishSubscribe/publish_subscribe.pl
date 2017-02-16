#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @vcenter version: 6.0+

#
# Perl Core Modules
#
use Exception::Class;
use Getopt::Long;
use strict;
use Data::UUID;
use File::Spec::Functions qw(catdir);

#
# VMware runtime library
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Sample helper module
#
use Common::SampleBase;
use Vcenter::Helpers::DatastoreHelper;
use ContentLibrary::Helpers::ItemUploadHelper;
use ContentLibrary::Helpers::ClsApiHelper;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Content::Library::Item;
use Com::Vmware::Content::Library::ItemModel;
use Com::Vmware::Content::Library::StorageBacking;
use Com::Vmware::Content::Library::PublishInfo;
use Com::Vmware::Content::Library::SubscriptionInfo;
use Com::Vmware::Content::LibraryModel;
use ContentLibrary::Client::ClsApiClient;
use Com::Vmware::Content::SubscribedLibrary;
use Com::Vmware::Content::Library::Item::Downloadsession::File;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,                      $sampleBase,
   $published_lib_name,          $subscribed_item_service,
   $client,                      $stubFactory,
   $stubConfig,                  $local_library_service,
   $subscribed_lib_name,         $item_service,
   $subscribed_library_service,  $update_session_service,
   $update_session_file_service, $datastore_name,
   $datacenter_name,             $datastore_id,
   $published_lib_id,            $subscribed_lib_id
) = ();

use constant {
   VCSP_USERNAME    => "vcsp",
   DEMO_PASSWORD    => "Password!23",
   SYNC_TIMEOUT_SEC => 60
};

# Declare the mandatory parameter list
my @required_options = (
   'username',  'password',   'lsurl', 'server',
   'datastore', 'datacenter', 'cleanup'
);

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,      "server=s",     "lsurl=s",      "username=s",
      "password=s",  "privatekey:s", "servercert:s", "cert:s",
      "datastore:s", "datacenter:s", "mgmtnode:s", "cleanup:s",    "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --datastore <datastore name> --datacenter <datacenter name> --cleanup <true or false> or --help\n"
     ;

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"publish_subscribe.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --datastore <datastore name> --datacenter <datacenter name> --cleanup <true or false>\n";
      exit;
   }

   my $mandatory_params_list = 'Missing mandatory parameter(s) i.e. ';
   my $flag                  = 0;
   foreach (@required_options) {
      if ( !defined( $params{$_} ) ) {
         $flag = 1;
         $mandatory_params_list =
           ' ' . $mandatory_params_list . '--' . $_ . ', ';
      }
   }
   if ( $flag == 1 ) {
      print $mandatory_params_list;
      exit;
   }

   $datastore_name  = $params{'datastore'};
   $datacenter_name = $params{'datacenter'};
   $sampleBase      = new Common::SampleBase( 'params' => \%params );
   $stubConfig      = $sampleBase->{'stub_config'};
   $stubFactory     = $sampleBase->{'stub_factory'};
}

sub setup {
   ( $published_lib_name, $subscribed_lib_name ) =
     ( "demo-publib", "demo-sublib" );
   $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
      'stub_config'  => $stubConfig
   );

   # Get the Item Service
   $item_service = $client->get_item_service();

   # Get the Local Library Service
   $local_library_service = $client->get_local_library_service();

   # Get the Subscribed Library Service
   $subscribed_library_service = $client->get_subscribed_library_service();

   # Get the Update Session Service
   $update_session_service = $client->get_update_session_service();

   # Get the Update Session File Service
   $update_session_file_service = $client->get_update_session_file_service();

   # Get the Subscribed Item Service
   $subscribed_item_service = $client->get_subscribed_item_service();

   log_info( MSG => "#### Setup: Get the datastore id" );
   $datastore_id = Vcenter::Helpers::DatastoreHelper::getDatastore(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'datastoreName'     => $datastore_name
   );
}

sub run {

   # Build the storage backing for the libraries to be created
   my $storage_backing = create_storage_backing();

   # Build the authenticated publish information.
   # The username defaults to "vcsp".
   my $publish_info = new Com::Vmware::Content::Library::PublishInfo();
   $publish_info->set_published( 'published' => 1 );
   $publish_info->set_authentication_method( 'authentication_method' =>
        Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod::BASIC
   );
   $publish_info->set_password( 'password' => DEMO_PASSWORD );

   # Build the specification for the published library
   my $publish_spec = new Com::Vmware::Content::LibraryModel();
   $publish_spec->set_name( 'name' => $published_lib_name );
   $publish_spec->set_type(
      'type' => Com::Vmware::Content::LibraryModel::LibraryType::LOCAL );
   $publish_spec->set_publish_info( 'publish_info' => $publish_info );
   $publish_spec->set_storage_backings(
      'storage_backings' => [$storage_backing] );

   # Create the published library and add a library item
   my $publish_token = Data::UUID->new();
   $published_lib_id = $local_library_service->create(
      'client_token' => $publish_token,
      'create_spec'  => $publish_spec
   );
   log_info( MSG => "Published library created: $published_lib_id" );

   my $published_lib =
     $local_library_service->get( 'library_id' => $published_lib_id );
   log_info( MSG => "Publish URL: "
        . $published_lib->get_publish_info()->get_publish_url() );

   create_library_item(
      'library_id' => $published_lib_id,
      'item_name'  => 'item 1'
   );

   # Build the subscription information using the publish URL of the
   # published library. The username must be "vcsp".
   my $subscription_info =
     new Com::Vmware::Content::Library::SubscriptionInfo();
   $subscription_info->set_authentication_method( 'authentication_method' =>
        Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod::BASIC
   );
   $subscription_info->set_user_name( 'user_name' => VCSP_USERNAME );
   $subscription_info->set_password( 'password' => DEMO_PASSWORD );
   $subscription_info->set_on_demand( 'on_demand' => 0 );
   $subscription_info->set_automatic_sync_enabled(
      'automatic_sync_enabled' => 1 );
   $subscription_info->set_subscription_url( 'subscription_url' =>
        $published_lib->get_publish_info()->get_publish_url() );

   # Build the specification for the subscribed library
   my $subscription_spec = new Com::Vmware::Content::LibraryModel();
   $subscription_spec->set_name( 'name' => $subscribed_lib_name );
   $subscription_spec->set_type(
      'type' => Com::Vmware::Content::LibraryModel::LibraryType::SUBSCRIBED );
   $subscription_spec->set_subscription_info(
      'subscription_info' => $subscription_info );
   $subscription_spec->set_storage_backings(
      'storage_backings' => [$storage_backing] );

   # Create the subscribed library
   my $subscription_token = Data::UUID->new();
   $subscribed_lib_id = $subscribed_library_service->create(
      'client_token' => $subscription_token,
      'create_spec'  => $subscription_spec
   );
   log_info( MSG => "Subscribed library created: $subscribed_lib_id" );

   my $subscribed_lib =
     $subscribed_library_service->get( 'library_id' => $subscribed_lib_id );

   my $cls_api =
     ContentLibrary::Helpers::ClsApiHelper->new( 'client' => $client );

   # Wait for the initial synchronization to finish
   my $sync_success = $cls_api->wait_for_library_sync(
      'published_lib_id'  => $published_lib_id,
      'subscribed_lib_id' => $subscribed_lib_id,
      'timeout'           => SYNC_TIMEOUT_SEC
   );
   log_info( MSG => "Timed out while waiting for sync success" )
     unless $sync_success;
   $subscribed_lib =
     $subscribed_library_service->get( 'library_id' => $subscribed_lib_id );

   log_info( MSG => "Subscribed library synced: "
        . $subscribed_lib->get_last_sync_time() );

   my $subscribed_item_ids =
     $item_service->list( 'library_id' => $subscribed_lib_id );
   log_info( MSG => "Subscribed library has one item" )
     if ( @$subscribed_item_ids == 1 );

   # Add another item to the publish library
   create_library_item(
      'library_id' => $published_lib->get_id(),
      'item_name'  => 'item 2'
   );

   # Manually synchronize the subscribed library to get the latest changes immediately
   $subscribed_library_service->sync( 'library_id' => $subscribed_lib_id );
   $sync_success = $cls_api->wait_for_library_sync(
      'published_lib_id'  => $published_lib_id,
      'subscribed_lib_id' => $subscribed_lib_id,
      'timeout'           => SYNC_TIMEOUT_SEC
   );
   log_info( MSG => "Timed out while waiting for sync success" )
     unless $sync_success;
   $subscribed_lib =
     $subscribed_library_service->get( 'library_id' => $subscribed_lib_id );
   log_info( MSG => "Subscribed library synced: "
        . $subscribed_lib->get_last_sync_time() );

   # List the subscribed items
   $subscribed_item_ids =
     $item_service->list( 'library_id' => $subscribed_lib_id );
   log_info( MSG => "Subscribed library has two items" )
     if ( @$subscribed_item_ids == 2 );
   foreach my $item_id (@$subscribed_item_ids) {
      my $subscribed_item = $item_service->get( 'library_item_id' => $item_id );
      print_subscribed_item($subscribed_item);

   }

   # Change the subscribed library to be on-demand
   $subscription_info->set_on_demand( 'on_demand' => 1 );
   $subscribed_library_service->update(
      'library_id'  => $subscribed_lib_id,
      'update_spec' => $subscription_spec
   );

   # Evict the cached content of the first subscribed library item
   my $subscibed_item_id = $subscribed_item_ids->[0];
   $subscribed_item_service->evict( 'library_item_id' => $subscibed_item_id );

   my $subscribed_item =
     $item_service->get( 'library_item_id' => $subscibed_item_id );
   log_info( MSG => "Subscribed item evicted" );

   # Force synchronize the subscribed library item to fetch and cache the content
   $subscribed_item_service->sync(
      'library_item_id'    => $subscibed_item_id,
      'force_sync_content' => 1
   );
   $sync_success = $cls_api->wait_for_item_sync(
      'subscribed_item_id' => $subscibed_item_id,
      'timeout'            => SYNC_TIMEOUT_SEC
   );
   $subscribed_item =
     $item_service->get( 'library_item_id' => $subscibed_item_id );
   log_info( MSG => "Subscribed item force synced" );
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup {
   if ( defined $subscribed_lib_id ) {

      # Delete the subscribed content library
      $subscribed_library_service->delete( 'library_id' => $subscribed_lib_id );
      log_info( MSG => "Deleted subscribed library: $subscribed_lib_id" );
   }

   if ( defined $published_lib_id ) {

      # Delete the published content library
      $local_library_service->delete( 'library_id' => $published_lib_id );
      log_info( MSG => "Deleted published library: $published_lib_id" );
   }
}

#
# Creates a datastore storage backing
#
sub create_storage_backing {
   my $storage_backing = new Com::Vmware::Content::Library::StorageBacking();
   $storage_backing->set_type( 'type' =>
        Com::Vmware::Content::Library::StorageBacking::Type::DATASTORE );
   $storage_backing->set_datastore_id( 'datastore_id' => $datastore_id );
   return $storage_backing;
}

#
# Creates a library item with mock content, for demonstration purposes
#
sub create_library_item {
   my (%args)    = @_;
   my $lib_id    = $args{'library_id'};
   my $item_name = $args{'item_name'};

   # Build the specification for the library item to be created
   my $create_spec = new Com::Vmware::Content::Library::ItemModel();
   $create_spec->set_library_id( 'library_id' => $lib_id );
   $create_spec->set_name( 'name' => $item_name );

   # Create the library item
   my $client_token = Data::UUID->new();
   my $lib_item_id  = $item_service->create(
      'client_token' => $client_token,
      'create_spec'  => $create_spec
   );

   # Create a temporary file
   my ( $fh, $temp_file ) = File::Temp::tempfile(
      $item_name . "-XXXX",
      SUFFIX => '.txt',
      UNLINK => 1
   );

   # Write default content to the file
   my $content = "Contents of " . $item_name;
   print $fh ($content);
   close($fh);

   # Upload file to the library item
   ContentLibrary::Helpers::ItemUploadHelper::perform_upload(
      'update_session_service'      => $update_session_service,
      'update_session_file_service' => $update_session_file_service,
      'item_service'                => $item_service,
      'lib_item_id'                 => $lib_item_id,
      'file_locations'              => [$temp_file]
   );

   log_info( MSG => "Library item created: " . $lib_item_id );
   return $lib_item_id;
}

#
# print subscribed item
#
sub print_subscribed_item {
   my $subscribed_item = shift;
   log_info( MSG => "   { ID: "
        . $subscribed_item->get_id()
        . ", Name: "
        . $subscribed_item->get_name()
        . ", Size: "
        . $subscribed_item->get_size()
        . ", Library ID: "
        . $subscribed_item->get_library_id()
        . ", Content Version: "
        . $subscribed_item->get_content_version()
        . ", Creation Time: "
        . $subscribed_item->get_creation_time()
        . ", Last Modified Time: "
        . $subscribed_item->get_last_modified_time()
        . ", Last Synced Time: "
        . $subscribed_item->get_last_sync_time()
        . ", Metadata Version: "
        . $subscribed_item->get_metadata_version()
        . ", Last Modified Time: "
        . $subscribed_item->get_last_modified_time()
        . " }" );
}

#
# Demonstrates the workflow to publish and subscribe content libraries
#
# Sample Prerequisites:
# The sample needs an existing VC datastore with available storage.
#

# Call main
&main();

sub main() {
   init();
   setup();
   run();
   if ( $params{cleanup} eq 'true' ) {
      cleanup();
   }
   log_info( MSG => "#### Done!" );
}

# END
