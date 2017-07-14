#
##############################################################
# Copyright (c) VMware, Inc. 2016, 2017.  All Rights Reserved.
# SPDX-License-Identifier: MIT
##############################################################
#
# DISCLAIMER. THIS PROGRAM IS PROVIDED TO YOU "AS IS" WITHOUT
# WARRANTIES OR CONDITIONS # OF ANY KIND, WHETHER ORAL OR WRITTEN,
# EXPRESS OR IMPLIED. THE AUTHOR SPECIFICALLY # DISCLAIMS ANY IMPLIED
# WARRANTIES OR CONDITIONS OF MERCHANTABILITY, SATISFACTORY # QUALITY,
# NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
#

$__author__ = 'VMware, Inc.';
$__copyright__ = 'Copyright 2016, 2017 VMware, Inc. All rights reserved.';

#
# @class SampleBase
# This class represents the base class for all samples.
#
package Common::SampleBase;

#
# Core Perl modules
#
use strict;
use warnings;

#
# vApi runtime libraries
#
use VMware::VIRuntime;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);
use Common::Authentication::VapiAuthenticationHelper;

# Initialize global variable
my ( $mgmtnode, $ip, $ls_url, $username, $password ) = ();

#
# @method new
# Constructor for creating stubs
#
# @param none.
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;

   my $params = $args{'params'};
   my %params = %$params;

   $ip     = $params{'server'};
   my $loc = index($ip, "https");
   if ($loc == -1) {
      $ip = 'https://' . $ip;
   }
   $username = $params{'username'};
   $password = $params{'password'};
   my $private_key = $params{'privatekey'};
   my $cert        = $params{'cert'};
   my $server_cert = $params{'servercert'};
   $mgmtnode = $params{'mgmtnode'};
   $ls_url = $ip . '/lookupservice/sdk';

   my $lookup_service = new LookupService( 'lookup_url' => $ls_url );
   get_mgmt_node( 'lookup_service' => $lookup_service );

   # login using basic authentication
   my $stubs =
     Common::Authentication::VapiAuthenticationHelper::loginByUsernameAndPassword(
      'server'   => $ip,
      'username' => $username,
      'password' => $password
     );

 # login using saml bearer token
 #   my $stubs =
 #     Common::Authentication::VapiAuthenticationHelper::loginBySamlBearerToken(
 #      'server'         => $ip,
 #      'username'       => $username,
 #      'password'       => $password,
 #      'cert'           => $cert,
 #      'private_key'    => $private_key,
 #      'lookup_service' => $lookup_service
 #     );
   return bless( $stubs, $class );
}

#
# @method get_mgmt_node
# Get the management node from the server
#
# @param lookup_service lookup service for getting the management node.
#
# @return Blessed object
#
sub get_mgmt_node {
   my %args           = @_;
   my $lookup_service = $args{'lookup_service'};
   if (defined $args{'mgmt_node'}){
      $mgmtnode = $args{'mgmt_node'};
   }

   # Get all management nodes available on server
   my %mgmt_nodes = $lookup_service->find_vim_urls();
   my @nodes      = values %mgmt_nodes;
   my @temp_node_array;
   foreach my $node (@nodes) {
      my @split_node_url = split /:/, $node;
      $split_node_url[1] =~ s/\/\///;
      push( @temp_node_array, $split_node_url[1] );
   }

   if ( scalar(@temp_node_array) > 1 && !defined($mgmtnode) ) {
      log_info( MSG =>
"Multiple management node found on this server. please specify one management node with parameter --mgmtnode"
      );
      my $index = 1;
      foreach my $node (@temp_node_array) {
         log_info( MSG => $index . '. ' . $node );
         $index++;
      }
      exit;
   }
   elsif ( defined($mgmtnode) ) {
      if ( grep $_ eq $mgmtnode, @temp_node_array ) {
         $ip     = 'https://' . $mgmtnode;
         $ls_url = 'https://' . $mgmtnode . '/lookupservice/sdk';
         return $ip;
      }
      else {
         log_info( MSG => "Not found management node <"
              . $mgmtnode
              . "> on the server." );
         exit;
      }
   }
   return undef;
}

#
# @method get_cluster_view
# Get the cluster's view
#
# @param none
#
# @return cluster's view
#
sub get_cluster_view {
   my ( $self, %args ) = @_;
   my $cluster_name = $args{'cluster_name'};

   #
   # Retrieve the Cluster's MoRef by using vSphere Perl SDK
   #
   $ls_url =~ m/http(s?):\/\/(.*)\/lookupservice\/sdk.*/g;
   my $psc_url = $2;
   Util::connect( $ip . '/sdk', $username, $password );
   my $cluster_view = undef;
   if ( defined $cluster_name ) {
      $cluster_view = Vim::find_entity_view(
         view_type => 'ClusterComputeResource',
         filter    => { name => $cluster_name }
      );
      if ( !defined($cluster_view) || !defined( $cluster_view->{'name'} ) ) {
         die "\nCould not find Cluster '" . $cluster_name . "' ..";
      }
   }
   else {
      $cluster_view =
        Vim::find_entity_view( view_type => 'ClusterComputeResource' );
      if ( !defined($cluster_view) || !defined( $cluster_view->{'name'} ) ) {
         die "\nCould not find any valid cluster ..";
      }
      $cluster_name = $cluster_view->{'name'};
      log_info( MSG =>
"Cluster name is not supplied, hence automatically choosing cluster '"
           . $cluster_name
           . "'" );
   }
   return $cluster_view;
}

#
# @method get_datastore_view
# Get the datastore's view
#
# @param none
#
# @return datastore's view
#
sub get_datastore_view {
   my ( %args ) = @_;
   my $datastore_name = $args{'datastore_name'};

   #
   # Retrieve the Datastore's MoRef by using vSphere Perl SDK
   #
   $ls_url =~ m/http(s?):\/\/(.*)\/lookupservice\/sdk.*/g;
   my $psc_url = $2;
   Util::connect( $ip . '/sdk', $username, $password );
   my $datastore_view = undef;
   if ( defined $datastore_name ) {
      my $datastore_views = Vim::find_entity_views(
         view_type => 'Datastore',
         filter    => { name => $datastore_name }
      );
      $datastore_view = $datastore_views->[0];
      if (scalar(@$datastore_views) > 1){
         $datastore_view = $datastore_views->[1];
      }
      if ( !defined($datastore_view) || !defined( $datastore_view->{'name'} ) )
      {
         log_info( MSG => "\nCould not find datastore '" . $datastore_name . "' ..");
         exit;
      }
   }
   else {
      log_info( MSG => "Datastore name is not supplied" );
      exit;
   }
   return $datastore_view;
}

#
# @method get_resourcepool_view
# Get the resourcepool's view
#
# @param none
#
# @return resourcepool's view
#
sub get_resourcepool_view {
   my ( $self, %args ) = @_;
   #
   # Retrieve the Datastore's MoRef by using vSphere Perl SDK
   #
   $ls_url =~ m/http(s?):\/\/(.*)\/lookupservice\/sdk.*/g;
   my $psc_url = $2;
   Util::connect( $ip . '/sdk', $username, $password );
   return Vim::find_entity_view( view_type => 'ResourcePool' );
}

1;
