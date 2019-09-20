#########################################################
# Copyright 2014,2016 VMware, Inc.  All rights reserved.
#########################################################
#
# @file LookupService.pm
# The file implements Lookup service perl module.
#
# @copy 2014, VMware Inc.
#

#
# @class LookupService
# This class used to get the service's url registered with Lookup service.
#
package LookupService;

#
# Core Perl modules
#
use strict;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Headers;
use XML::LibXML;

# Standard values used for VC service
my $vc_product_id = "com.vmware.cis";
my $vc_type_id = "vcenterserver";
my $ep_vc_protocol = "vmomi";
my $ep_vc_type_id = "com.vmware.vim";

# Standard values used for SSO service
my $sso_product_id = "com.vmware.cis";
my $sso_type_id = "cs.identity";
my $ep_sso_protocol = "wsTrust";
my $ep_sso_type_id = "com.vmware.cis.cs.identity.sso";

# Standard values used for vAPI service
my $vapi_product_id = "com.vmware.cis";
my $vapi_type_id = "cs.vapi";
my $ep_vapi_protocol = "vapi.json.https.public";
my $ep_vapi_type_id = "com.vmware.vapi.endpoint";

# Standard values used for PBM service
my $pbm_product_id = "com.vmware.vim.sms";
my $pbm_type_id = "sms";
my $ep_pbm_protocol = "https";
my $ep_pbm_type_id = "com.vmware.vim.pbm";


#To remove SSL Warning, switching from IO::Socket::SSL to Net::SSL
# $ENV{PERL_NET_HTTPS_SSL_SOCKET_CLASS} = "Net::SSL";
#To remove host verification
$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME} = 0;

#
# @method new
# Constructor
#
# @param lookup_url  - Lookup service url
#
# @return Blessed object
#
sub new {
   my ( $class, %params ) = @_;
   my $self = {};
   $self->{lookup_url} = $params{lookup_url};
   bless( $self, $class );
   return $self;
}

#
# @method url_ipv6_check
# To check type of IP specified
#
# @param $lookup_url  - Lookup Service URL
#
# @return Formated Lookup URL
#
sub url_ipv6_check{
   my $lookup_url = shift;
   my $url = $lookup_url;
   # Triming out, host IP from "$url" i.e. $2 = "fe:10:20:30:70e:fe"
   if ($url =~ s|http(s?)://(.*)/lookupservice/.*|http$1://$2/lookupservice(.*)|i) {
      $url = $2;
      # Checking if the host specified is in IPv6 format
      if (($url =~ tr/:/:/) > 1){
         # Loading IPv6 module
         require Net::INET6Glue::INET_is_INET6;
         if (!($url =~ /]/)){
            # If host is in IPv6 and doesen't have any square bracket then adding it
            $url = "[" . $url . "]";
            # Constructing lookup url as "http(s)//[fe:10:20:30:70e:fe]/lookupservice/sdk"
            $lookup_url =~ s|http(s?)://(.*)/lookupservice.*|http$1://$url/lookupservice/sdk|i;
         }
      }
   }
   return $lookup_url;
}

#
# @method soap_message
# To construct the SOAP message
#
# @param product  - Product
# @param product_type_id  - Type of Product
# @param protocol  - Protocol
# @param protocol_type_id  - Type of Protocol
#
# @return SOAP message
#
sub soap_message{
   my ($product, $product_type_id, $protocol, $protocol_type_id) = @_;
   my $soap_message = "
    <S:Envelope xmlns:S=\"http://schemas.xmlsoap.org/soap/envelope/\">
        <S:Body>
            <List xmlns=\"urn:lookup\">
                <_this type=\"LookupServiceRegistration\">ServiceRegistration</_this>
                <filterCriteria>
                    <serviceType>
                        <product>$product</product>
                        <type>$product_type_id</type>
                    </serviceType>
                    <endpointType>
                        <protocol>$protocol</protocol>
                        <type>$protocol_type_id</type>
                    </endpointType>
                </filterCriteria>
            </List>
        </S:Body>
    </S:Envelope>
   ";
   return $soap_message;
}

#
# @method byte_length
# To get the length of the request, used for setting the HTTP header
#
# @param $string  - HTTP request string
#
# @return Blessed object
#
sub byte_length {
   my ($string) = @_;
   use bytes;
   return length($string);
}

#
# @method request_dispatcher
# Dispatch HTTP request to Lookup Service
#
# @param $soap_message  - SOAP message request
# @param url  - Lookup Service URL
#
# @return HTTP response
#
sub request_dispatcher {
   my $soap_message = shift;
   my $url = shift;
   my $user_agent = LWP::UserAgent->new(agent => 'viperl');
   my $http_header = HTTP::Headers->new(
                        Content_Type => 'text/xml',
                        SOAPAction => 'urn:lookup/2.0',
                        Content_Length => byte_length($soap_message));
   my $http_request = HTTP::Request->new('POST',
                                    $url,
                                    $http_header,
                                    $soap_message);
   my $response = $user_agent->request($http_request);

   if ($response->content =~ /Connection refused/) {
      die $response->content . "\n";
   } elsif ($response->content =~ /Bad hostname/) {
      # Loading IPv6 module, for pure IPv6
      eval {
         require Net::INET6Glue::INET_is_INET6;
      };
      if ($@){
         die $response->content . "\n";
      }
      $response = $user_agent->request($http_request);
      # Still not able to resolve hostname
      if ($response->content =~ /Bad hostname/) {
         die $response->content . "\n";
      }
   } elsif ($response->content =~ /Connect failed/) {
      die $response->content . "\n";
   }
   return $response;
}

#
# @method get_list_structure_value
# To get proper value of attribute from HTTP response
#
# @param $response  - HTTP response
#
# @return %data - hash of nodeId and URL
#
sub get_list_structure_value{
   my $response = shift;
   my $xml_parser = XML::LibXML->new;
   my $result;
   my %data;
   eval { $result = $xml_parser->parse_string($response->content) };

   if ($@) {
      # Response is not well formed xml - possibly be a setup issue
      die "SOAP request error - possibly a protocol issue: " . $response->content . "\n";
   }

   my $body = $result->documentElement()->getChildrenByTagName('soapenv:Body')->shift;
   my @list_response = $body->getChildrenByTagName('ListResponse');
   foreach my $ls (@list_response) {
      my @return_val = $ls->getChildrenByTagName('returnval');
      foreach my $rv (@return_val) {
         my @service_endpoints = $rv->getChildrenByTagName('serviceEndpoints');
         my $node_id = $rv->getChildrenByTagName('nodeId')->shift;
         $node_id = $node_id->textContent;
         foreach my $se (@service_endpoints) {
            my @urls = $se->getChildrenByTagName('url');
            foreach my $url (@urls) {
               $data{$node_id} = $url->textContent;
            }
         }
      }
   }
   return %data;
}

#
# @method get_mgmt_nodes_value
# To get proper value of attribute from HTTP response
#
# @param $response  - HTTP response
#
# @return %data - hash of instance name and nodeId
#
sub get_mgmt_nodes_value{
   my $response = shift;
   my $xml_parser = XML::LibXML->new;
   my $result;
   my %data;
   eval { $result = $xml_parser->parse_string($response->content) };

   if ($@) {
      # Response is not well formed xml - possibly be a setup issue
      die "SOAP request error - possibly a protocol issue: " . $response->content . "\n";
   }

   my $body = $result->documentElement()->getChildrenByTagName('soapenv:Body')->shift;
   my @list_response = $body->getChildrenByTagName('ListResponse');
   foreach my $ls (@list_response) {
      my @return_val = $ls->getChildrenByTagName('returnval');
      foreach my $rv (@return_val) {
         my @service_attributes = $rv->getChildrenByTagName('serviceAttributes');
         my $node_id = $rv->getChildrenByTagName('nodeId')->shift;
         $node_id = $node_id->textContent;
         foreach my $sa (@service_attributes) {
            my @keys = $sa->getChildrenByTagName('key');
            my @values = $sa->getChildrenByTagName('value');
            foreach my $key (@keys) {
               my $key_value = $key->textContent;
               foreach my $value (@values) {
                  if ($key_value eq 'com.vmware.vim.vcenter.instanceName'){
                     $data{$value->textContent} = $node_id;
                  }
               }
            }
         }
      }
   }
   return %data;
}

#
# @method find_mgmt_nodes
# Finds all the management nodes
#
# @param url  - Lookup service URL
#
# @return hash of instance name and nodeId
#
sub find_mgmt_nodes{
   my( $self ) = @_;
   my $url = $self->{lookup_url};
   $url = url_ipv6_check($url);
   # Getting response
   my $response = request_dispatcher(soap_message(
                            $vc_product_id, $vc_type_id, $ep_vc_protocol,
                            $ep_vc_type_id), $url);
   return get_mgmt_nodes_value($response);
}

#
# @method get_mgmt_node_id
# Get the management node id from the instance name
#
# @param instance_name  - The instance name of the management node
#
# @return node Id
#
sub get_mgmt_node_id{
   my( $self, $instance_name ) = @_;
   my %result = find_mgmt_nodes($self);
   if (!defined $result{$instance_name}){
      die "Management nodes not found \n";
   }
   return $result{$instance_name};
}

#
# @method get_mgmt_node_instance_name
# Get the management instance name from node id
#
# @param node_id - The UUID of the management node
#
# @return Instance name
#
sub get_mgmt_node_instance_name{
   my( $self, $node_id ) = @_;
   if (!defined $node_id){
      die "node_id is required \n";
   }
   my %result = find_mgmt_nodes($self);
   if (!defined $result{$node_id}){
      die "Management nodes not found \n";
   }
   return $result{$node_id};
}

#
# @method get_default_mgmt_node
# Finds the instance name and UUID of the management node for M1xN1 or
# when the PSC and management services all reside on a single node.
#
# @param url  - Lookup service URL
#
# @return hash of instance name and nodeId for first node
#
sub get_default_mgmt_node{
   my( $self ) = @_;
   my %result;
   my %results = find_mgmt_nodes($self);
   my @instance_name = keys %results;
   my @instance_nodeid = values %results;
   my $node_number = keys %results;
   if (scalar $node_number lt 1){
      die "No management node found \n";
   }
   if (scalar $node_number gt 1){
      eval {
         die Exception->new();
      };
      if ($@) {
         print Exception->format(%results);
      }
   }
   $result{$instance_name[0]} = $instance_nodeid[0];
   return %result;
}

#
# @method find_sso_url
# In a MxN setup where there are more than one PSC nodes,
# this method returns the first SSO service endpoint URL
# as returned by the lookup service.
#
# @param lookup_url  - Lookup service URL
#
# @return SSO Service endpoint URL
#
sub find_sso_url{
   my( $self ) = @_;
   my $url = $self->{lookup_url};
   $url = url_ipv6_check($url);
   # Getting response
   my $response = request_dispatcher(soap_message(
                            $sso_product_id, $sso_type_id,$ep_sso_protocol,
                            $ep_sso_type_id), $url);
   my %result = get_list_structure_value($response);
   my @value = values %result;
   if (!defined $value[0]){
      die "SSO URL not found \n";
   }
   return $value[0];

}

#
# @method find_vim_urls
# In a MxN setup where there are more than one management node,
# this method returns more than one URL
#
# @param lookup_url  - Lookup Service URL
#
# @return hash of nodeId and VIM URL
#
sub find_vim_urls{
   my( $self ) = @_;
   my $url = $self->{lookup_url};
   $url = url_ipv6_check($url);
   # Getting response
   my $response = request_dispatcher(soap_message(
                            $vc_product_id, $vc_type_id, $ep_vc_protocol,
                            $ep_vc_type_id), $url);
   return get_list_structure_value($response);
}

#
# @method find_vim_url
# Finds the vim service endpoint URL of a management node
#
# @param node_id - The UUID of the management node.
#
# @return vim service endpoint URL of a management node
#
sub find_vim_url{
   my( $self, $node_id ) = @_;
   if (!defined $node_id){
      die "node_id is required \n";
   }
   my %result = find_vim_urls($self);
   if (!defined $result{$node_id}){
      die "VIM URLs not found \n";
   }
   return $result{$node_id};
}

#
# @method find_vapi_urls
# Finds all the vAPI service endpoint URLs.
# In a MxN setup where there are more than one management node,
# this method returns more than one URL
#
# @param lookup_url  - Lookup Service URL
#
# @return hash of nodeId and vAPI URL
#
sub find_vapi_urls{
   my( $self ) = @_;
   my $url = $self->{lookup_url};
   $url = url_ipv6_check($url);
   # Getting response
   my $response = request_dispatcher(soap_message(
                            $vapi_product_id, $vapi_type_id, $ep_vapi_protocol,
                            $ep_vapi_type_id), $url);
   return get_list_structure_value($response);
}

#
# @method find_vapi_url
# Finds the vapi service endpoint URL of a management node.
#
# @param node_id - The UUID of the management node.
#
# @return vapi service endpoint URL of a management node
#
sub find_vapi_url{
   my( $self, $node_id ) = @_;
   if (!defined $node_id){
      die "node_id is required \n";
   }
   my %result = find_vapi_urls($self);
   if (!defined $result{$node_id}){
      die "VAPI URLs not found \n";
   }
   return $result{$node_id};
}

#
# @method find_vim_pbm_urls
# Finds all the spbm service endpoint URLs.
# In a MxN setup where there are more than one management node,
# this method returns more than one URL
#
# @param lookup_url  - Lookup Service URL
#
# @return spbm service endpoint URLs in a hash where
# the key is the node_id and the value is the service URL.
#
sub find_vim_pbm_urls{
   my( $self ) = @_;
   my $url = $self->{lookup_url};
   $url = url_ipv6_check($url);
   # Getting response
   my $response = request_dispatcher(soap_message(
                            $pbm_product_id, $pbm_type_id, $ep_pbm_protocol,
                            $ep_pbm_type_id), $url);
   return get_list_structure_value($response);
}

#
# @method find_vim_pbm_url
# This method returns PBM url registred with Lookup Service based on node id
#
# @param node_id - The UUID of the management node
#
# @return PBM url
#
sub find_vim_pbm_url{
   my( $self, $node_id ) = @_;
   if (!defined $node_id){
      die "node_id is required \n";
   }
   my %result = find_vim_pbm_urls($self);
   if (!defined $result{$node_id}){
      die "PBM URLs not found \n";
   }
   return $result{$node_id};
}

1;

#########################################################
package Exception;

#
# @method new
# Constructor
#
# @return Blessed object
#
sub new{
   my ( $class ) = @_;
   my $self = {};
   bless ( $self, $class );
   return $self;
}

#
# @method format
# Formats the multiple management node exception message
#
# @param nodes - Hash containg management node
#
sub format{
   my ($self, %nodes) = @_;
   my $message = "Multiple Management Node Found on server, ";
   my @keys = keys %nodes;
   my @values = values %nodes;
   my $msg;
   foreach (keys %nodes){
      $msg = $message . "Node name: " . $_ . " uuid: " . $nodes{$_};
      print $msg . "\n";
   }
   exit();
}

1;