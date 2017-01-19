#!/usr/bin/perl

#
# Perl Core Modules
#
use Exception::Class;

#
# VMware SSO libraries
#
use VMware::SSOConnection;

#
# vApi runtime libraries
#
use Com::Vmware::Vapi::Protocol::HttpConfiguration;
use Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory;
use Com::Vmware::Vapi::Bindings::StubConfiguration;
use Com::Vmware::Vapi::Bindings::StubFactory;
use Com::Vmware::Vapi::Dsig::SecurityContextFactory;
use Com::Vmware::Vapi::Util::Logger  qw(log_info log_dumper log_framework get_instance);

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vdcs::Vdc;

#
# User inputs
#
my $ip = "https://10.132.99.23";
my $sso_url = $ip."/sts/STSService/vsphere.local";
my $username = 'Administrator@vsphere.local';
my $password = 'Admin!23';
my $private_key = 'vapi.key'; # Assign value to this attribute in case of HOK token ONLY
my $cert = 'vapi.crt';
my $server_cert = undef;

print "###########################################################";
print "\n\n\t\tSSO LOGIN via HOK / BEARER TOKEN\n\n";
print "###########################################################";
print "\n\n";

get_instance()->{'verbosity'} = 7;
log_info( Channel => "Test", MSG => "Starting vAPI Perl SDK Testing..." );

my $protocolConn =
  new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();
my $config = $protocolConn->get_insecure_connection(
	'protocol_type' => 'http',
	'uri'           => "$ip/vapi"
);
my $stubFactory =
  new Com::Vmware::Vapi::Bindings::StubFactory(
	'api_provider' => $config->get_api_provider() );
my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();

#
# Get the SSO token
#
log_info ( MSG =>  "Getting SSO token...");
my $ssoConnection = new SSOConnection ('sso_url' => $sso_url);
$ssoConnection->login(
		'user_name'   => $username,
		'password'    => $password,
		'public_key'  => $cert,
		'private_key' => $private_key
	);
my $token = $ssoConnection->get_token();
log_info ( MSG =>  $token);

my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();
my $samlTokenSecurityContext = $scFactory->create_saml_security_context(token       => $token,
																	 private_key  => $private_key);

my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();
$stubConfig->set_security_context( security_context => $samlTokenSecurityContext );

#
# Instantiating a Stub Factory
#
my $stubFactory = new Com::Vmware::Vapi::Bindings::StubFactory('api_provider' => $config->get_api_provider());

#
# Get the Session Service
#
my $session =  $stubFactory->create_stub('service_name' => 'Com::Vmware::Cis::Session',
                                        'stub_config' => $stubConfig );

log_info ( MSG =>  "Login in to VAPI server using token...");
my $sessionId = $session->create();
log_info ( MSG =>  "Printing Session Id");
log_info ( MSG =>  $sessionId);

my $sessionSecurityContext = $scFactory->create_session_security_context('session_id'=> $sessionId);

$stubConfig->set_security_context(security_context => $sessionSecurityContext);

#
# Get the Vdc Service
#
log_info ( MSG =>  "Creating Vdc Service...");
my $vdc =  $stubFactory->create_stub('service_name' => 'Com::Vmware::Vcenter::Vdcs::Vdc',
                                    'stub_config' => $stubConfig );

#
# Calling list method
#                  
log_info ( MSG =>  "Calling Vdc->list() method...");
eval {
  my $vdcList = $vdc->list();
};
if ($@) {
   log_framework(MSG=> $@);
   die $@;
}
log_info ( MSG =>  "Printing VDC List");
log_dumper (MSG=> $vdcList);


#
# Calling get method
#
my $vdcModel;
log_info ( MSG =>  "Calling Vdc->get() method...");
eval {
   $vdcModel = $vdc->get(vdc_id => 'wrongname'); #@$vdcList[0]);
};
#
# Catching Com::Vmware::Vapi::Std::Errors::NotFound Exception - not expected to get this
#
log_framework (MSG => $@);
if ( my $e = Exception::Class->caught('Com::Vmware::Vapi::Std::Errors::NotFound') ) {
   print "\nCaught Com::Vmware::Vapi::Std::Errors::NotFound Exception.\n";
   log_dumper (MSG => $@);   
}

log_info ( MSG =>  "Printing VDC Get Result");
log_dumper (MSG=> $vdcModel);
log_info ( MSG =>  $vdcModel->{'name'});

log_info( Channel => "Test", MSG => "Completed vAPI Perl SDK Testing." );