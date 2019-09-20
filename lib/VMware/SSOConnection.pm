
########################################################
# Copyright 2013,2017 VMware, Inc.  All rights reserved.
########################################################
#
# @file SSOConnection.pm
# The file implements SSOConnection perl module.
#
# @copy 2013,2017 VMware Inc.
#

#
# @class SSOConnection
# This class is used for to login with sso server and gets
# the hok or bearer token.
#
package VMware::SSOConnection;

#
# Core Perl modules
#
use strict;
use warnings;
use utf8;
use Text::Template;
use LWP::UserAgent;
use UUID;
use Date::Format;
use HTML::Entities;
use XML::LibXML;

#
# Format strings
#
use constant TIMESTAMP_FORMAT => "%Y-%m-%dT%H:%M:%S.987Z";
use constant STS_REQUEST_BODY =>
"<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<soapenv:Envelope xmlns:soapenc=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">
   <soapenv:Body>
      <Search xmlns=\"urn:cis.cm\">
         <_this type=\"CmServiceManager\">ServiceManager</_this>
         <searchCriteria>
            <serviceType>
               <productId>com.vmware.cis</productId>
               <typeId>cs.identity</typeId>
            </serviceType>
            <folder>
               <id/>
               <parentId/>
            </folder>
         </searchCriteria>
      </Search>
   </soapenv:Body>
</soapenv:Envelope>";
my $tokenRequestTemplate = Text::Template->new(TYPE => 'STRING', SOURCE =>
'<?xml version="1.0" encoding="UTF-8"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
<SOAP-ENV:Header>
<ns6:Security xmlns="http://docs.oasis-open.org/ws-sx/ws-trust/200512"
              xmlns:ns2="http://www.w3.org/2005/08/addressing"
              xmlns:ns3="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"
              xmlns:ns6="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
{$timestamp}
{$security_token}
</ns6:Security>
</SOAP-ENV:Header>
<SOAP-ENV:Body xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="{$request_id}">
<RequestSecurityToken xmlns="http://docs.oasis-open.org/ws-sx/ws-trust/200512"
                      xmlns:ns2="http://www.w3.org/2005/08/addressing"
                      xmlns:ns3="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"
                      xmlns:ns6="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
<TokenType>urn:oasis:names:tc:SAML:2.0:assertion</TokenType>
<RequestType>http://docs.oasis-open.org/ws-sx/ws-trust/200512/Issue</RequestType>
<Lifetime>
<ns3:Created xmlns:ns3="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">{$created}</ns3:Created>
<ns3:Expires xmlns:ns3="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">{$expires}</ns3:Expires>
</Lifetime>
<Renewing Allow="{$renewable}" OK="{$renewable}"/>
<Delegatable>{$delegatable}</Delegatable>
<KeyType>{$key_type}</KeyType>
<SignatureAlgorithm>http://www.w3.org/2001/04/xmldsig-more#rsa-sha256</SignatureAlgorithm>{$use_key}</RequestSecurityToken>
</SOAP-ENV:Body>
</SOAP-ENV:Envelope>');

my $timestampTemplate = Text::Template->new(TYPE => 'STRING', SOURCE =>
'<ns3:Timestamp xmlns:ns3="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" ns3:Id="{$timestamp_id}">
<ns3:Created>{$created}</ns3:Created><ns3:Expires>{$request_expires}</ns3:Expires></ns3:Timestamp>');

my $useKeyTemplate = Text::Template->new(TYPE => 'STRING', SOURCE =>
'<UseKey Sig="{$signature_id}"/>');

my $usernameTokenTemplate = Text::Template->new(TYPE => 'STRING', SOURCE =>
'<ns2:UsernameToken xmlns:ns2="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
<ns2:Username>{$user_name}</ns2:Username>
<ns2:Password>{$password}</ns2:Password>
</ns2:UsernameToken>');

my $sessionRequestTemplate = Text::Template->new(TYPE => 'STRING', SOURCE =>
'<?xml version="1.0" encoding="UTF-8"?>
<soapenv:Envelope xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <soapenv:Header>
    <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
      {$bearer_token}
    </wsse:Security>
  </soapenv:Header>
  <soapenv:Body>
    <LoginByToken xmlns="urn:vim25">
      <_this type="SessionManager">SessionManager</_this>
    </LoginByToken>
  </soapenv:Body>
</soapenv:Envelope>');

our %timestampParameters;
our  @req_expires;
our %arguments;
our @expires;

#
# @method new
# Constructor
#
# @param cm_url  - CM URL
# @param sso_url  - SSO URL
#
# @return Blessed object
#
sub new {
   my ($class, %args) = @_;
   my $self = {};
   $self->{'cm_url'} = $args{'cm_url'};
   $self->{'sts_url'} = $args{'sso_url'};
   if (!defined($self->{'cm_url'}) && !defined($self->{'sts_url'})) {
      die "The parameter 'cm_url' or 'sso_url' must be set.";
   }
   $self->{'http_worker'} = LWP::UserAgent->new;
   return bless( $self, $class );
}

#
#@method get_bearer_saml_token
# Login with username/password and acquire SAML Token.
#
#@param user_name  - User name
#@param password  - Password
#
#@return SAML Token
#
sub get_bearer_saml_token {
   my ($self, %args) = @_;
   my $username = $args{user_name};
   my $password = $args{password};
   my $cm_url = $self->{cm_url};
   my $sts_url = $self->{sts_url};

   my $postBody = construct_bearer_token_request(%args);
   my $tokenRequest = HTTP::Request->new(POST => $sts_url);
   $tokenRequest->header('SOAPAction', 'http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue');
   $tokenRequest->content_type('text/xml; charset="UTF-8"');
   $tokenRequest->header('Accept', 'text/xml, multipart/related');
   $tokenRequest->content( $postBody );
   my $tokenResponse = $self->{http_worker}->request($tokenRequest);

   if($tokenResponse->is_success) {
      my $xmlResponse = XML::LibXML->load_xml(string => $tokenResponse->decoded_content);
      my $xPath = XML::LibXML::XPathContext->new();
      $xPath->registerNs('saml2', 'urn:oasis:names:tc:SAML:2.0:assertion');
      my $node = $xPath->findnodes('//saml2:Assertion', $xmlResponse->documentElement())->get_node(1);
      my @ns = $node->findnodes('namespace::*');
      foreach my $ns (@ns) {
        my ($prefix) = $ns->name =~ m{xmlns:(.*)};
        next unless $prefix;
        $node->setNamespace ($ns->value, $prefix, 0);
      }
      # this must NOT be canonized or pretty printed and must retain its original encoding
      $self->{SAMLToken} = $node->toString(0, 0);
      # encode special characters into numeric XML entities
      $self->{SAMLToken} =~ s/([\x80-\xFF])/'&#' . ord($1) . ';'/gse;
   }
   if (!defined $self->{SAMLToken}) {
     die "Couldn't get the SAML token";
   }
   return $self->{SAMLToken};
}

#
#@method connect
# Acquires a session token from the given server.
#
#@param server  - Server to obtain the token from
#
#@return SAML Token
#
sub connect {
   my ($self, %args) = @_;
   my $server = $args{server};

   my $sessionUrl = sprintf("https://%s/sdk", $server);

   if(!$self->{SAMLToken}) {
     die "Must acquire bearer token first";
   }

   my $sessionRequest = HTTP::Request->new(POST => $sessionUrl);
   $sessionRequest->header('SOAPAction', "urn:vim25/6.5");
   $sessionRequest->content_type('text/xml; charset="UTF-8"');
   $sessionRequest->header('Accept', 'text/xml, multipart/related');

   my $sessionRequestBody = $sessionRequestTemplate->fill_in(HASH => { bearer_token => $self->{SAMLToken} });

   $sessionRequest->content($sessionRequestBody);
   my $sessionResponse = $self->{http_worker}->request($sessionRequest);
   if($sessionResponse->is_success) {
      my $session_token = $sessionResponse->header('Set-Cookie');
      if ($session_token =~ /.*vmware_soap_session=.*/) {
         $session_token =~ s/.*vmware_soap_session=\"(.*)\".*/$1/;
      }
      $self->{SessionToken} = $session_token;
   }
   if(!defined $self->{SessionToken}) {
      die "Could not get session token";
   }
   return $self->{SessionToken};
}

#
#@method get_session
# Returns the session token
#
#@return Session token
#
sub get_session {
   my $self = shift;
   return $self->{SessionToken};
}

#
#@method construct_bearer_token_request
#@param user_name        Username for the user for which bearer token needs to be requested.
#@param password         Password for the user for which bearer token needs to be requested.
#@param request_duration The duration for which the request is valid. If the STS receives this request after this
#                        duration, it is assumed to have expired. The duration is in seconds and the default is 60s.
#@param token_duration   The duration for which the SAML token is issued for. The duration is specified in seconds and
#                        the default is 600s.
#@param renewable        Whether the generated token is renewable or not. The default value is False.
#@param delegatable      Whether the generated token is delegatable or not. The default value is False.
#
#@return token request
#
sub construct_bearer_token_request {
   (%arguments) = @_;
   if(!$arguments{'request_duration'}) {
      $arguments{'request_duration'} = 60;
   }
   if(!$arguments{'token_duration'}) {
      $arguments{'token_duration'} = 600;
   }
   if(!$arguments{'renewable'}) {
      $arguments{'renewable'} = 'false';
   }
   if(!$arguments{'delegatable'}) {
      $arguments{'delegatable'} = 'true';
   }
   if($arguments{'user_name'}) {
      $arguments{'user_name'} = encode_entities($arguments{'user_name'});
   }
   if($arguments{'password'}) {
      $arguments{'password'} = encode_entities($arguments{'password'});
   }
   $arguments{'signature_id'} = generate_uuid();
   $arguments{'request_id'} = generate_uuid();
   $arguments{'security_token_id'} = generate_uuid();

   my @now = gmtime;
   $arguments{'created'} = strftime(TIMESTAMP_FORMAT, @now);
   my @expires = gmtime(time() + $arguments{'token_duration'});
   $arguments{'expires'} = strftime(TIMESTAMP_FORMAT, @expires);
   my @req_expires = gmtime(time() + $arguments{'request_duration'});
   my %timestampParameters = (
      created => $arguments{'created'},
      request_expires => strftime(TIMESTAMP_FORMAT, @req_expires),
      timestamp_id => generate_uuid()
   );
   $arguments{'timestamp'} = $timestampTemplate->fill_in(HASH => \%timestampParameters);
   $arguments{'key_type'} = "http://docs.oasis-open.org/ws-sx/ws-trust/200512/Bearer";
   $arguments{'security_token'} = $usernameTokenTemplate->fill_in(HASH => \%arguments);
   # this needs to be canonized, so parse it into libxml2 and output XML-C14N
   my $xmlRequest = XML::LibXML->load_xml(string => $tokenRequestTemplate->fill_in(HASH => \%arguments));
   return $xmlRequest->documentElement()->toStringC14N();
}

#
#@method generate_uuid
# Returns the UUID.
#
#@return UUID
#
sub generate_uuid {
   my $uuid;
   my $result;
   UUID::generate($uuid);
   UUID::unparse($uuid, $result);
   return sprintf("_%s", $result);
}

#
#@method get_token
# Returns the SAML Token.
#
#@return SAML Token
#
sub get_token {
   my $self = shift;
   return $self->{SAMLToken};
}

1;
