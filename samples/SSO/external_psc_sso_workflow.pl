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
use VMware::VIRuntime;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Cis::Tagging::Category;
use Com::Vmware::Cis::Tagging::CategoryModel;

use Common::SampleBase;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $stubFactory, $stubConfig, $category_service, $category_id,
   $session, $vapi_url )
  = ();

# Declare the mandatory parameter list
my @required_options = ( 'lsurl', 'username', 'password' );

sub init {

   #
   # User inputs
   #
   GetOptions( \%params, "lsurl=s", "username=s", "password=s", "privatekey:s",
      "cert:s", "mgmtnode:s", "help:s" )
     or die
"\nValid options are --lsurl <lookup service url> --username <user> --password <password>
                         --privatekey <private key> --cert <cert> --mgmtnode <management node> or --help\n";

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
"#### Example: Login to vCenter server with external Platform Services Controller"
   );
   my $ls_url = $params{'lsurl'};
   log_info( MSG =>
"Step 1: Connect to the lookup service on the Platform Services Controller node: $ls_url"
   );
   my $loc = index( $ls_url, "https" );
   if ( $loc == -1 ) {
      $ls_url = 'https://' . $ls_url;
   }

   my $lookup_service = new LookupService( 'lookup_url' => $ls_url );

   log_info( MSG =>
        "Step 2: Discover the Single Sign-On service URL from lookup service."
   );
   my $sso_url = $lookup_service->find_sso_url();
   log_info( MSG => $sso_url );
   log_info( MSG =>
"Step 3: Connect to the Single Sign-On URL and retrieve the SAML bearer token."
   );
   my $ssoConnection = new VMware::SSOConnection( 'sso_url' => $sso_url );
   $ssoConnection->get_bearer_saml_token(
      'user_name'   => $params{'username'},
      'password'    => $params{'password'}
   );
   my $token = $ssoConnection->get_token();

   log_info(
      MSG => "Step 4. Discover the vAPI service URL from lookup service." );
   my $ip = Common::SampleBase::get_mgmt_node(
      'lookup_service' => $lookup_service,
      'mgmt_node'      => $params{'mgmtnode'}
   );
   if ( !defined $ip ) {
      $ls_url =~ /(?:.*?\/){3}/g;
      $vapi_url = substr( $ls_url, 0, pos($ls_url) - 1 ) . "/api";
   }
   else {
      $vapi_url = $ip . "/api";
   }
   log_info( MSG => $vapi_url );
   log_info(
      MSG => "Step 5. Login to vAPI service using the SAML bearer token." );

   #
   # Create a VAPI transport connection
   #
   my $protocolConn =
     new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();
   my $config = $protocolConn->get_connection(
      'protocol_type' => 'https',
      'uri'           => $vapi_url
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
   log_info( MSG => "Step 6: Creating and Deleting Tag Category..." );
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
sub getUsage {
   print "\nUsage:\n";
   print "external_psc_sso_workflow.pl --lsurl <lookup service url> --username <user> --password <password> \n";
   print "                                --privatekey <private key> --cert <cert> --mgmtnode <management node>\n";
   print "Sample Options:\n\n";

   print "  --lsurl                       Lookup service URL\n";
   print "  --username                    SSO user name\n";
   print "  --password                    SSO user password\n";
   print "  --privatekey                  OPTIONAL: Private key file\n";
   print "  --cert                        OPTIONAL: vCenter Server's certificate file\n";
   print "  --mgmtnode                    It is mandatory parameter if your VC setup has multiple Nodes\n";
   print "                                It can take only Node's host name. IP address is not allowed\n\n";
   print "  --help                        Display this help screen.\n";
   print "This is ONLY FOR THE PURPOSE OF DEVELOPMENT ENVIRONMENT.";
   exit;
}

#
# Demonstrates how to Login to vCenter vAPI service with external Platform Services Controller.
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

