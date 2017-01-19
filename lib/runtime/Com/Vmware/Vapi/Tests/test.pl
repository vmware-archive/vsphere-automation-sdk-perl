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
use Com::Vmware::Vapi::Util::Logger  qw(log_info log_dumper get_instance log_framework);

#
# Generated SDK's
#
use Com::Vmware::Vapi::Test::EchoGenerics;

#
# User inputs
#
my $ip = "http://skrishna-win.eng.vmware.com:8088";
my $username = 'Administrator@vsphere.local';
my $password = 'vmware';
my $private_key = 'vapi.key'; # Assign value to this attribute in case of HOK token ONLY
my $cert = 'vapi.crt';
my $server_cert = undef;

print "###########################################################";
print "\n\n\t\tSSO LOGIN via HOK / BEARER TOKEN\n\n";
print "###########################################################";
print "\n\n";

get_instance()->{'verbosity'} = 3;
log_info( Channel => "Test", MSG => "Starting vAPI Perl SDK Testing..." );

my $protocolConn = new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();

my $config = $protocolConn->get_insecure_connection(protocol_type => 'http',
	                                              uri => "$ip/vapi");

my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();
#my $samlTokenSecurityContext = $scFactory->createSamlSecurityContext(Token       => $token,
#																	 PrivateKey  => $private_key);

my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();
#$stubConfig->setSecurityContext( SecurityContext => $samlTokenSecurityContext );

#
# Instantiating a Stub Factory
#
my $stubFactory = new Com::Vmware::Vapi::Bindings::StubFactory('api_provider' => $config->get_api_provider());


#
# Get the Unions Service
#
log_info ( MSG =>  "Creating Test::EchoGenerics Service...");
my $test =  $stubFactory->create_stub('service_name' => 'Com::Vmware::Vapi::Test::EchoGenerics',
                                    'stub_config' => $stubConfig );

#
# Set
#                  
log_info ( MSG =>  "Calling Test::EchoGenerics->test_set() method...");
my $str = ['A','B', 'C', 'D'];
my $response = $test->test_set(input => $str);
log_info ( MSG =>  "Printing return status");
log_framework (MSG=> $response);

#
# Map
#                  
log_info ( MSG =>  "Calling Test::EchoGenerics->test_map() method...");
my $hash = {'A' => 'Astring','B' => 'Bstring', 'C' => 'Cstring', 'D' => 'Dstring'};
my $response = $test->test_map(input => $hash);
log_info ( MSG =>  "Printing return status");
log_framework (MSG=> $response);
log_info( Channel => "Test", MSG => "Completed vAPI Perl SDK Testing." );