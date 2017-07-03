#!/usr/bin/perl

#
########################################################
# Copyright (c) VMware, Inc. 2017.  All Rights Reserved.
# SPDX-License-Identifier: MIT
########################################################
#
# DISCLAIMER. THIS PROGRAM IS PROVIDED TO YOU "AS IS" WITHOUT
# WARRANTIES OR CONDITIONS # OF ANY KIND, WHETHER ORAL OR WRITTEN,
# EXPRESS OR IMPLIED. THE AUTHOR SPECIFICALLY # DISCLAIMS ANY IMPLIED
# WARRANTIES OR CONDITIONS OF MERCHANTABILITY, SATISFACTORY # QUALITY,
# NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
#

$__author__          = 'VMware, Inc.';
$__copyright__       = 'Copyright 2017 VMware, Inc. All rights reserved.';
$__vcenter_version__ = '6.0+';

#
# Perl Core Modules
#
use strict;
use Getopt::Long;

#
# VMware runtime library
#
use VMware::SSOConnection;
use Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory;
use Com::Vmware::Vapi::Dsig::SecurityContextFactory;
use Com::Vmware::Vapi::Bindings::StubConfiguration;
use Com::Vmware::Vapi::Bindings::StubFactory;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Cis::Tagging::Category;
use Com::Vmware::Cis::Tagging::CategoryModel;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $stubFactory, $stubConfig, $category_service, $category_id,
   $session )
  = ();

# Declare the mandatory parameter list
my @required_options = ( 'server', 'username', 'password' );

sub init {

   #
   # User inputs
   #
   GetOptions( \%params, "server=s", "username=s", "password=s", "privatekey:s",
      "cert:s", "help:s" )
     or die
"\nValid options are --server <server> --username <user> --password <password>
                         --privatekey <private key> --cert <cert> or --help\n";

   if ( defined( $params{'help'} ) ) {
      getUsage();
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

   log_info( MSG =>
"#### Example: Login to vCenter server with embedded Platform Services Controller"
   );
   my $ip = $params{'server'};
   my $loc = index( $ip, "https" );
   if ( $loc == -1 ) {
      $ip = 'https://' . $ip;
   }

   # Since the platform services controller is embedded, the sso server
   # is the same as the vCenter server.
   my $sso_url = "$ip/sts/STSService";

   log_info( MSG =>
"Step 1: Connect to the Single Sign-On URL and retrieve the SAML bearer token."
   );
   my $ssoConnection = new SSOConnection( 'sso_url' => $sso_url );
   $ssoConnection->login(
      'user_name'   => $params{'username'},
      'password'    => $params{'password'},
      'public_key'  => $params{'cert'},
      'private_key' => $params{'privatekey'}
   );
   my $token = $ssoConnection->get_token();

   #
   # Create a VAPI transport connection
   #
   my $protocolConn =
     new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();
   my $config = $protocolConn->get_connection(
      'protocol_type' => 'https',
      'uri'           => "$ip/api"
   );

   #
   # Create a VAPI security context
   #
   my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();
   my $samlTokenSecurityContext = $scFactory->create_saml_security_context(
      'token'       => $token,
      'private_key' => $params{'privatekey'}
   );

   $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();
   $stubConfig->set_security_context(
      security_context => $samlTokenSecurityContext );

   #
   # Get the instance of stub factory
   #
   $stubFactory = new Com::Vmware::Vapi::Bindings::StubFactory(
      'api_provider' => $config->get_api_provider() );

   #
   # Get the Session Service
   #
   $session = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Cis::Session',
      'stub_config'  => $stubConfig
   );

   log_info(
      MSG => "Step 2: Login to vAPI services using the SAML bearer token." );
   my $sessionId = $session->create();

   #
   # Update the VAPI security context with session id
   #
   my $ssContext =
     $scFactory->create_session_security_context( 'session_id' => $sessionId );

   $stubConfig->set_security_context( security_context => $ssContext );
}

sub setup {

   # Create and Delete TagCategory to Verify connection is successful
   log_info( MSG => "Step 3: Creating and Deleting Tag Category..." );
   $category_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Cis::Tagging::Category',
      'stub_config'  => $stubConfig
   );
}

sub run {
   $category_id = createTagCategory(
      'category_name' => 'TestTagCat',
      'description'   => 'TestTagDesc',
      'cardinality' =>
        Com::Vmware::Cis::Tagging::CategoryModel::Cardinality::MULTIPLE
   );
   if ( !defined($category_id) ) {
      log_info( MSG => "Not created Tag category" );
      exit;
   }
   log_info( MSG => "Tag category created. Id: $category_id" );

   # Delete TagCategory
   $category_service->delete( 'category_id' => $category_id );
   log_info( MSG => "Tag category deleted." );

   $session->delete();
   log_info( MSG => "VAPI session disconnected successfully..." );
}

#
# API to create a category. User who invokes this needs create category privilege.
#
sub createTagCategory {
   my %args            = @_;
   my $category_name   = $args{'category_name'};
   my $tag_description = $args{'description'};
   my $cardinality     = $args{'cardinality'};

   #
   # Create a new tag category
   #
   my $spec = new Com::Vmware::Cis::Tagging::Category::CreateSpec();
   $spec->set_name( 'name' => $category_name );
   $spec->set_description( 'description' => $tag_description );
   $spec->set_cardinality( 'cardinality' => $cardinality );

   # Set empty types
   $spec->set_associable_types( 'associable_types' => [] );
   $category_id = $category_service->create( 'create_spec' => $spec );
   return $category_id;
}

#
# Prints sample usage
#
sub getUsage{
   print "\nUsage:\n";
   print "embedded_psc_sso_workflow.pl --server <server> --username <user> --password <password> \n";
   print "                                --privatekey <private key> --cert <cert>\n";
   print "Sample Options:\n\n";

   print "  --server                      Hostname of vCenter Server\n";
   print "  --username                    Username to login to vCenter Server\n";
   print "  --password                    Password to login to vCenter Server\n";
   print "  --privatekey                  OPTIONAL: Private key file\n";
   print "  --cert                        OPTIONAL: vCenter Server's certificate file\n";
   print "  --help                        Display this help screen.\n";
   print "This is ONLY FOR THE PURPOSE OF DEVELOPMENT ENVIRONMENT.";
   exit;
}

#
# Demonstrates how to Login to vCenter vAPI service with embedded Platform Services Controller.
#

# Call main
&main();

sub main() {
   init();
   setup();
   run();
   log_info( MSG => "#### Done!" );
}

# END
