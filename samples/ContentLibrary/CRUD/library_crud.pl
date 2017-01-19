#!/usr/bin/perl

#
# Perl Core Modules
#
use strict;
use Getopt::Long;

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

#
# Perl CPAN Modules
#
use Data::UUID;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Content::SubscribedLibrary;
use Com::Vmware::Content::Library::Item::Downloadsession::File;
use Com::Vmware::Content::Library::StorageBacking;
use Com::Vmware::Content::LibraryModel;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,      $sampleBase, $datastore_name, $client,
   $stubFactory, $stubConfig, $localLibrary
) = ();
my $lib_name = "demo-local-lib";

# Declare the mandatory parameter list
my @required_options =
  ( 'username', 'password', 'lsurl', 'server', 'datastorename', 'cleanup' );

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,          "server=s",     "lsurl=s",      "username=s",
      "password=s",      "privatekey:s", "servercert:s", "cert:s",
      "datastorename:s", "mgmtnode:s",   "cleanup:s",    "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --datastorename <datastore name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"library_crud.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --datastorename <datastore name> --cleanup <true or false>\n";
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

   $datastore_name = $params{'datastorename'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {
   $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
      'stub_config'  => $stubConfig
   );
}

sub run {

   # List of visible content libraries
   my $visibleCls = $client->get_local_library_service()->list();
   log_info( MSG => "All libraries :" );
   my $size = scalar(@$visibleCls);
   for ( my $i = 0 ; $i < $size ; $i++ ) {
      log_info( MSG => ' ' . $i + 1 . '. ' . $visibleCls->[$i] );
   }

   my $datastore_view =
     $sampleBase->get_datastore_view( 'datastore_name' => $datastore_name );
   my $datastore_moref = $datastore_view->{'mo_ref'};

   if ($datastore_moref) {
      log_info( MSG => "Datastore MoRef : "
           . $datastore_moref->{type} . " : "
           . $datastore_moref->{value} );
   }

   # Build the storage backing for the library to be created
   my $storage = new Com::Vmware::Content::Library::StorageBacking();
   $storage->set_type( 'type' =>
        Com::Vmware::Content::Library::StorageBacking::Type::DATASTORE );
   $storage->set_datastore_id( 'datastore_id' => $datastore_moref->{value} );

   # Build the specification for the library to be created
   my $createSpec = new Com::Vmware::Content::LibraryModel();
   $createSpec->set_name( 'name' => $lib_name );
   $createSpec->set_description(
      'description' => "Local library backed by VC datastore" );
   $createSpec->set_type(
      'type' => Com::Vmware::Content::LibraryModel::LibraryType::LOCAL );
   $createSpec->set_storage_backings( 'storage_backings' => [$storage] );

   # Create a local content library backed the VC datastore using vAPIs
   my $clientToken = new Data::UUID();
   my $libraryId =
     $client->get_local_library_service()
     ->create( 'client_token' => $clientToken, 'create_spec' => $createSpec );
   log_info( MSG => "Local library created : " . $libraryId );

   # Retrieve the local content library
   $localLibrary =
     $client->get_local_library_service()->get( 'library_id' => $libraryId );
   log_info( MSG => "Retrieved library :" );
   log_info( MSG => " name : " . $localLibrary->get_name() );
   log_info( MSG => " id: " . $localLibrary->get_id() );
   log_info( MSG => " type: " . $localLibrary->get_type() );
   log_info( MSG => " description: " . $localLibrary->get_description() );
   log_info( MSG => " version: " . $localLibrary->get_version() );

   # Update the local content library
   my $updateSpec = new Com::Vmware::Content::LibraryModel();
   $updateSpec->set_description( 'description' => "new description" );
   $client->get_local_library_service()
     ->update( 'library_id' => $libraryId, 'update_spec' => $updateSpec );
   log_info( MSG => "Updated library description" );
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup() {
   if ( defined($localLibrary) ) {

      # Delete the content library
      $client->get_local_library_service()
        ->delete( 'library_id' => $localLibrary->get_id() );
      log_info( MSG => "Deleted library : " . $localLibrary->get_id() );
   }
}

#
# Demonstrates the basic operations of a content library. The sample also
# demonstrates the interoperability of the VIM and vAPI. Note: The sample needs
# an existing VC datastore with available storage.
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
