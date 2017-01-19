#!/usr/bin/perl

#
# Perl Core Modules
#
use Getopt::Long;
use strict;
use File::Basename qw(dirname);
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
use ContentLibrary::Client::ClsApiClient;
use ContentLibrary::Helpers::ItemUploadHelper;
use ContentLibrary::Helpers::ItemDownloadHelper;

#
# Perl CPAN Modules
#
use Data::UUID;

# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Content::SubscribedLibrary;
use Com::Vmware::Vcenter::Ovf::LibraryItem;
use Com::Vmware::Content::Library::ItemModel;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params, $sampleBase,  $library_name, $libItem,
   $client, $stubFactory, $stubConfig
) = ();
my $libItemName = "simpleVmTemplate";

# Declare the mandatory parameter list
my @required_options =
  ( 'username', 'password', 'lsurl', 'server', 'clname', 'cleanup' );

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,     "server=s",     "lsurl=s",      "username=s",
      "password=s", "privatekey:s", "servercert:s", "cert:s",
      "clname:s",   "mgmtnode:s",   "cleanup:s",    "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --clname <content library name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"ovf_import_export.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --clname <content library name> --cleanup <true or false>\n";
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

   $library_name = $params{'clname'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   # Create the Content Library services with authenticated session
   $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
      'stub_config'  => $stubConfig
   );
}

sub run {

   # Get the template's OVF and VMDK files
   my $tempDir = ContentLibrary::Helpers::ItemUploadHelper::create_temp_dir(
      'prefix' => "simpleVmTemplate" );
   use FindBin qw($Bin);

   my $ovfFile =
     ContentLibrary::Helpers::ItemUploadHelper::copy_resource_to_file(
      'resource_name' => File::Spec::Functions::catdir(
         File::Basename::dirname($Bin), '..',
         'resources',                   'simpleVmTemplate',
         'descriptor.ovf'
      ),
      'dir'      => $tempDir,
      'filename' => "descriptor.ovf"
     );
   my $vmdkFile =
     ContentLibrary::Helpers::ItemUploadHelper::copy_resource_to_file(
      'resource_name' => File::Spec::Functions::catdir(
         File::Basename::dirname($Bin), '..',
         'resources',                   'simpleVmTemplate',
         'disk-0.vmdk'
      ),
      'dir'      => $tempDir,
      'filename' => "disk-0.vmdk"
     );
   log_info( MSG => "OVF Path : " . $ovfFile );
   log_info( MSG => "VMDK Path : " . $vmdkFile );

   # Find the library item by name
   my $findSpec = new Com::Vmware::Content::Library::Item::FindSpec();
   $findSpec->set_name( 'name' => $library_name );
   my $libraryIds = $client->get_library_service()->find( 'spec' => $findSpec );
   if ( scalar(@$libraryIds) == 0 ) {
      log_info( MSG => "Unable to find a library with name: " . $library_name );
      exit();
   }
   my $libraryId = $libraryIds->[0];
   log_info( MSG => "Found library : " . $libraryId );

   # Build the specification for the library item to be created
   my $createSpec = new Com::Vmware::Content::Library::ItemModel();
   $createSpec->set_name( 'name' => $libItemName );
   $createSpec->set_library_id( 'library_id' => $libraryId );
   $createSpec->set_type( 'type' => "ovf" );

   # Create a new library item in the content library for uploading the files
   my $clientToken = Data::UUID->new();
   my $libItemId =
     $client->get_item_service()
     ->create( 'client_token' => $clientToken, 'create_spec' => $createSpec );
   $libItem =
     $client->get_item_service()->get( 'library_item_id' => $libItemId );
   log_info( MSG => "Library item created : " . $libItem->get_id() );

   # Upload the files in the OVF package into the library item
   ContentLibrary::Helpers::ItemUploadHelper::perform_upload(
      'update_session_service' => $client->get_update_session_service(),
      'update_session_file_service' =>
        $client->get_update_session_file_service(),
      'item_service'   => $client->get_item_service(),
      'lib_item_id'    => $libItem->get_id(),
      'file_locations' => [ $ovfFile, $vmdkFile ]
   );

   log_info( MSG => "Uploaded files : " );
   my $storage_info =
     $client->get_storage_service()
     ->list( 'library_item_id' => $libItem->get_id() );
   my $index = 1;
   foreach my $file_info (@$storage_info) {
      log_info( MSG => ' ' . $index . '. ' . $file_info->get_name() );
      $index++;
   }

   # Download the template files from the library item into a folder
   my $downloadDir = ContentLibrary::Helpers::ItemUploadHelper::create_temp_dir(
      'prefix' => "simpleVmTemplate" );

   ContentLibrary::Helpers::ItemDownloadHelper::perform_download(
      'download_session_service' => $client->get_download_session_service(),
      'download_session_file_service' =>
        $client->get_download_session_file_service(),
      'lib_item_service'  => $client->get_item_service(),
      'lib_item_id'       => $libItem->get_id(),
      'download_location' => $downloadDir
   );
   log_info( MSG => "Downloaded files to directory : " . $downloadDir );
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup() {
   if ( defined($libItem) ) {

      # Delete the library item
      $client->get_item_service()
        ->delete( 'library_item_id' => $libItem->get_id() );
      log_info( MSG => "Deleted library item : " . $libItem->get_id() );
   }
}

#
# Demonstrates the workflow to import an OVF package into the content library.
#
# Note: The sample needs an existing content library to place the library item.
# with resources for creating the VM."
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
