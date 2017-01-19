#!/usr/bin/perl

#
# Perl Core Modules
#
use Exception::Class;
use Getopt::Long;
use strict;

#
# VMware Lookup and SSO libraries
#
use VMware::SSOConnection;
use VMware::LookupService;

#
# vApi runtime libraries
#
use Com::Vmware::Vapi::Protocol::HttpConfiguration;
use Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory;
use Com::Vmware::Vapi::Bindings::StubConfiguration;
use Com::Vmware::Vapi::Bindings::StubFactory;
use Com::Vmware::Vapi::Dsig::SecurityContextFactory;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_dumper log_framework set_verbosity);
use Com::Vmware::Vapi::Lib::Asynchronous qw(invoke_async);
use Com::Vmware::Vapi::Lib::AsyncResult;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Cis::Tagging::Category;
use Com::Vmware::Cis::Tagging::Tag;
use Com::Vmware::Cis::Tagging::CategoryModel;

#
# This sample demonstrates vAPI connection and service initialization callflow
# Step 1: Connect to the Lookup service and get the SSO URL
# Step 2: Connect to SSO service and retrieve the SAML token.
# Step 3: Connect to the vapi service endpoint.
# Step 4: Use the SAML token to login to vAPI service endpoint.
# Step 5: Create a vAPI session.
# Step 6: Creates a new Tag Category.
# Step 7: Creates a new Tag asynchronously
# Step 8: Delete the Tag and Tag Category asynchronously
#

# Call main
main();

sub main() {

   #
   # User inputs
   #
   my %params;
   GetOptions(
               \%params,     "server=s",     "lsurl=s",      "username=s",
               "password=s", "privatekey:s", "servercert:s", "cert:s",
               "tagname:s",  "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --tagname <tag name> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"vdcWorkflow.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --tagname <tag name>\n";
      exit;
   }

   if (
         !defined( $params{'username'} )
      && !defined( $params{'password'} )
      && !defined( $params{'lsurl'} )
      && !defined( $params{'server'} )

     )
   {
      print
"\nMissing mandatory parameter(s) i.e. --server <server> --lsurl <lookup service url> --username <user> --password <password> \n";
      exit;
   }

   my $ip               = $params{'server'};
   my $ls_url           = $params{'lsurl'};
   my $sso_url          = undef;
   my $username         = $params{'username'};
   my $password         = $params{'password'};
   my $private_key      = $params{'privatekey'};
   my $cert             = $params{'cert'};
   my $server_cert      = $params{'servercert'};
   my $tag_name         = $params{'tagname'};
   my $tag_description  = "Sample Tag";
   my $category_service = undef;
   my $tagging_service  = undef;
   my $category_id      = undef;
   my $tag_id           = undef;

   #
   # If tag name is not supplied use the default
   #
   if ( $tag_name eq "" ) {
      $tag_name = "vCloud-Suite-Perl-Sdk-Sample-Tag3";
   }

   my $category_name = $tag_name . "-Category";

   set_verbosity( 'Level' => 3 );

   #
   # Get the SSO url
   #
   log_info( MSG => "Getting the SSO URL via Lookup Service..." );
   $sso_url = LookupService::get_ssourl_from_lookupservice($ls_url);

   #
   # Get the SSO token
   #
   log_info( MSG => "Getting the SSO token..." );
   my $ssoConnection = new SSOConnection( 'sso_url' => $sso_url );
   $ssoConnection->login(
                          'user_name'   => $username,
                          'password'    => $password,
                          'public_key'  => $cert,
                          'private_key' => $private_key
   );
   my $token = $ssoConnection->get_token();

   #
   # Create a VAPI transport connection
   #
   my $protocolConn = new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();
   my $config = $protocolConn->get_connection( 'protocol_type' => 'https',
                                               'uri'           => "$ip/api" );

   #
   # Create a VAPI security context
   #
   my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();
   my $samlTokenSecurityContext = $scFactory->create_saml_security_context(
                                                             'token'       => $token,
                                                             'private_key' => $private_key
   );
   my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();
   $stubConfig->set_security_context( security_context => $samlTokenSecurityContext );

   #
   # Get the instance of stub factory
   #
   my $stubFactory =
     new Com::Vmware::Vapi::Bindings::StubFactory(
                                          'api_provider' => $config->get_api_provider() );

   #
   # Get the Session Service
   #
   my $session = $stubFactory->create_stub( 'service_name' => 'Com::Vmware::Cis::Session',
                                            'stub_config'  => $stubConfig );
   log_info( MSG => "Getting the Session id in Asynhronous mode");
   my $func = sub {
      return $session->create();
   };
   my $async_result = invoke_async($func);

   while ( $async_result->is_done() eq 0 ) {
      log_info( MSG => "Waiting in the loop to complete 'session->create()' Async call");
      sleep (1);
   }
   my $e = $async_result->get_error();
   if ($e) {
      die "Got an error: ".$e;
   }
   my $sessionId = $async_result->get_result();
   log_info( 'MSG' => "Got the Session Id ".$sessionId );

   #
   # Update the VAPI security context with session id
   #
   my $ssContext =
     $scFactory->create_session_security_context( 'session_id' => $sessionId );

   $stubConfig->set_security_context( security_context => $ssContext );

   #
   # Get the Tag Category Service
   #
   log_info( MSG => "Creating Tag Category Service..." );
   $category_service = $stubFactory->create_stub(
                                  'service_name' => 'Com::Vmware::Cis::Tagging::Category',
                                  'stub_config'  => $stubConfig );

   #
   # Get the Tagging Service
   #
   log_info( MSG => "Creating Tagging Service..." );
   my $tagging_service = $stubFactory->create_stub(
                                       'service_name' => 'Com::Vmware::Cis::Tagging::Tag',
                                       'stub_config'  => $stubConfig );

   #
   # Create a tag category
   #
   log_info( MSG => "Creating a new Tag category '$category_name' in Asynchronous mode ..." );
   my $spec = new Com::Vmware::Cis::Tagging::Category::CreateSpec();
   $spec->set_name( 'name' => $category_name );
   $spec->set_description( 'description' => $tag_description );
   $spec->set_cardinality(
       'cardinality' => Com::Vmware::Cis::Tagging::CategoryModel::Cardinality::MULTIPLE );
   # Set empty types
   $spec->set_associable_types( 'associable_types' => [] );

   my $call = sub {
      $category_id = $category_service->create( 'create_spec' => $spec );
   };

   my $async_result1 = invoke_async($call);
   my $async_result2 = invoke_async($call);

   $async_result1->wait();
   $async_result2->wait();
   my $category_id = undef;

   my $e = $async_result1->get_error();
   if (defined($e)) {
      log_info( MSG => "Tag category create failed for Async 1: $e" );
   } else {
      $category_id = $async_result1->get_result();
      log_info( MSG => "Tag category create result for Aync 1: $category_id" );
   }

   my $e = $async_result2->get_error();
   if (defined($e)) {
      log_info( MSG => "Tag category create failed for Async 2: $e" );
   } else {
      $category_id = $async_result2->get_result();
      log_info( MSG => "Tag category create result for Async 2: $category_id" );
   }

   #
   # Delete the tag
   #
   log_info( MSG => "Deleting the tag category '$category_name' ..." );
   $category_service->delete( 'category_id' => $category_id );

   log_info( 'MSG' => "Done!" );

}

# END
