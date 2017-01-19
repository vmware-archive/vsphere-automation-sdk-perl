#!/usr/bin/perl

#
# Perl Core Modules
#
use Exception::Class;
use Time::Piece;

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
use Com::Vmware::Vapi::Util::Logger  qw(log_info log_framework log_dumper log_error get_instance);

#
# Generated SDK's
#
use Com::Vmware::Vapi::Test::Unions::TestStruct;
use Com::Vmware::Vapi::Test::Echo;
use Com::Vmware::Vapi::Test::Async::Asynchronous;


#
# User inputs
#
my $ip = "http://skrishna-win.eng.vmware.com:5051";

get_instance()->{'verbosity'} = 3;
log_info( Channel => "Test", MSG => "Starting vAPI Perl SDK Testing..." );


my $protocolConn = new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();

my $config = $protocolConn->get_insecure_connection(protocol_type => 'http',
	                                                uri => "$ip/backup");

my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();

my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();

#
# Instantiating a Stub Factory
#
my $stubFactory = new Com::Vmware::Vapi::Bindings::StubFactory('api_provider' => $config->get_api_provider());


my $async_service =  $stubFactory->create_stub('service_name' => 'Com::Vmware::Vapi::Test::Async::Asynchronous',
                                      'stub_config' => $stubConfig );

log_info(Channel => "Test", MSG=>"Calling Async->test_string ()");
my $output = $async_service->test_string (input => 'Hello World!');
log_info(Channel => "Test", MSG=>"Async->test_string Output is: " . $output);

#
# Done!
#
print "\n";
log_info(Channel => "Test", MSG=>"Completed vAPI Perl SDK Testing.");