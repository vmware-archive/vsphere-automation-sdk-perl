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


#
# User inputs
#
my $ip = "http://skrishna-win.eng.vmware.com:8088";

get_instance()->{'verbosity'} = 3;
log_info( Channel => "Test", MSG => "Starting vAPI Perl SDK Testing..." );


my $protocolConn = new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();

my $config = $protocolConn->get_insecure_connection(protocol_type => 'http',
	                                                uri => "$ip/vapi");

my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();

my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();

#
# Instantiating a Stub Factory
#
my $stubFactory = new Com::Vmware::Vapi::Bindings::StubFactory('api_provider' => $config->get_api_provider());

#
# Get the Echo Service
# 
my $echo =  $stubFactory->create_stub('service_name' => 'Com::Vmware::Vapi::Test::Echo',
                                      'stub_config' => $stubConfig );
                                    
print "\n\n------------------------------------------------------";
print "\nValidation:";
print "\n------------------------------------------------------\n";

#
# Calling test_string operation with invalid arugment
#
eval {
   log_info(Channel => "Test", MSG=>"Calling Echo->test_string() with invalid param and expecting exception");
   $echo->test_string (input => 'Hello World!', wrongParam => "wrong param", wrongparam2 => "wrong param");
};

#
# Catching InvalidParameter Exception - expected to get this
#
if ( my $e = Exception::Class->caught('InvalidParameter') ) {
   log_error(Channel => "Test", MSG => "Caught expected InvalidParameter exception.");
   log_error(Channel => "Test", MSG =>  $e);
} else {
   die "Exception is not raised, test failed... $@";	
}

#
# Calling test_string operation with no arugment
#
eval {
   log_info(Channel => "Test", MSG=>"Calling Echo->test_string() with no param and expecting exception");
   $echo->test_string ();
};

#
# Catching InvalidParameter Exception - expected to get this
#
if ( my $e = Exception::Class->caught('InvalidParameter') ) {
   log_error(Channel => "Test", MSG => "Caught expected InvalidParameter exception.");
   log_error(Channel => "Test", MSG =>  $e);
} elsif ($@){
   die "\nExpected exception 'InvalidParameter' is not raised, test failed. Error: $@";	
} else {
   die "\nException is not raised, test failed.";	
}

print "\n\n------------------------------------------------------";
print "\nPrimitive types:";
print "\n------------------------------------------------------\n";

#
# Calling test_string operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_string ()");
my $output = $echo->test_string (input => 'Hello World!');
log_info(Channel => "Test", MSG=>"Echo->test_string Output is: " . $output);

#
# Calling test_double operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_double ()");
my $output = $echo->test_double (input => 3.000024);
log_info(Channel => "Test", MSG=>"Echo->test_double Output is: " . $output);

#
# Performance test
#
#sleep 5;
#my @echoArr = [];
for (my $i=0; $i < 1; $i++) {
	push (@echoArr, $stubFactory->create_stub ('service_name' => 'Com::Vmware::Vapi::Test::Echo'));
	#
	# Calling test_string_list operation 
	#
	log_info(Channel => "Test", MSG=>"Calling Echo->test_string_list ()");
	my $str = ['Strawberry', 'Orange', 'Apple', 'Grapes'];
	my $output = $echo->test_string_list (input => $str);
	my $tostr = join(' ',@$output);
	log_info(Channel => "Test", MSG=>"Echo->test_string_list Output is : " . $tostr);
}
#sleep 20;

#
# Test Enumeration 
#
log_info (Channel => "Test", MSG => "Testing Enumeration");
log_info (Channel => "Test", MSG => Com::Vmware::Vapi::Test::Echo::TestEnum->ONE);

#
# Calling test_enum operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_enum ()");
$output = $echo->test_enum (input => Com::Vmware::Vapi::Test::Echo::TestEnum->THREE);
log_info(Channel => "Test", MSG=>"Echo->test_enum Output is: " . $output);

#
# Calling test_long operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_long()");
my $output = $echo->test_long (input => 9223372036854775807);
log_info(Channel => "Test", MSG=>"Echo->test_long Output is: " . $output);


#
# Calling test_boolean operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_boolean(1)");
my $output = $echo->test_boolean (input => 1);
log_info(Channel => "Test", MSG=>"Echo->test_boolean Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_boolean(0)");
my $output = $echo->test_boolean (input => 0);
log_info(Channel => "Test", MSG=>"Echo->test_boolean Output is: " . $output);

#
# Calling test_void operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_void()");
my $output = $echo->test_void ();
log_info(Channel => "Test", MSG=>"Echo->test_void Output is: " . $output);

#
# Calling test_date_time operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_date_time()");
my $t = gmtime();
my $output = $echo->test_date_time (input => $t);
log_info(Channel => "Test", MSG=>"Echo->test_date_time Output is: " . $output);

#
# Calling test_opaque operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_opaque()");
my $output = $echo->test_opaque (input => "Hello World!");
log_info(Channel => "Test", MSG=>"Echo->test_opaque Output is: " . $output);

#
# Calling test_secret operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_secret('my_password')");
my $output = $echo->test_secret (input => "my_password");
log_info(Channel => "Test", MSG=>"Echo->test_secret Output is: " . $output);


#
# Calling test_URI operation 
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_uri('www.vmware.com')");
my $output = $echo->test_uri (input => "www.vmware.com");
log_info(Channel => "Test", MSG=>"Echo->test_uri Output is: " . $output);

print "\n\n------------------------------------------------------";
print "\nList use cases:";
print "\n------------------------------------------------------\n";

#
# Calling test_string_list operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_string_list (['Strawberry','Apple','Grapes'])");
my $output = $echo->test_string_list (input=>['Strawberry','Apple','Grapes']);
log_info(Channel => "Test", MSG=>"Echo->test_string_list Output is: " . $output);

#
# Calling test_double_list operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_double_list ([11.1,22.2])");
my $output = $echo->test_double_list (input=>[11.1,22.2]);
log_info(Channel => "Test", MSG=>"Echo->test_double_list Output is: " . $output);

#
# Calling test_binary_list operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_binary_list ([11.1,'CISSDK'])");
my $output = $echo->test_binary_list (input=>[11.1,'CISSDK']);
log_info(Channel => "Test", MSG=>"Echo->test_binary_list Output is: " . $output);

#
# Calling test_long_list operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_long_list ([115641,786786786])");
my $output = $echo->test_long_list (input=>[115641,786786786]);
log_info(Channel => "Test", MSG=>"Echo->test_long_list Output is: " . $output);

#
# Calling test_boolean_list operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_boolean_list ([1,0])");
my $output = $echo->test_boolean_list (input=>[1,0]);
log_info(Channel => "Test", MSG=>"Echo->test_boolean_list Output is: " . $output);

#
# Calling test_enum_list operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_enum_list ([Com::Vmware::Vapi::Test::Echo::TestEnum->THREE,Com::Vmware::Vapi::Test::Echo::TestEnum->TWO])");
my $output = $echo->test_enum_list (input=>[Com::Vmware::Vapi::Test::Echo::TestEnum->THREE,Com::Vmware::Vapi::Test::Echo::TestEnum->TWO]);
log_info(Channel => "Test", MSG=>"Echo->test_enum_list Output is: " . $output);

#
# Calling test_date_time_list operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_date_time_list");
my $t1 = gmtime();
my $t2 = gmtime();
my $output = $echo->test_date_time_list (input=>[$t1, $t2]);
log_info(Channel => "Test", MSG=>"Echo->test_date_time_list Output is: " . $output);


print "\n\n------------------------------------------------------";
print "\nOptional use cases:";
print "\n------------------------------------------------------\n";

#
# Calling test_string_optional operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_string_optional ('Hello World!')");
my $output = $echo->test_string_optional (input => 'Hello World!');
log_info(Channel => "Test", MSG=>"Echo->test_string_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_string_optional ()");
my $output = $echo->test_string_optional ();
log_info(Channel => "Test", MSG=>"Echo->test_string_optional Output is: " . $output);

#
# Calling test_long_optional operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_long_optional (786786786)");
my $output = $echo->test_long_optional (input => 786786786);
log_info(Channel => "Test", MSG=>"Echo->test_long_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_long_optional ()");
my $output = $echo->test_long_optional ();
log_info(Channel => "Test", MSG=>"Echo->test_long_optional Output is: " . $output);

#
# Calling test_boolean_optional operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_boolean_optional (1)");
my $output = $echo->test_boolean_optional (input => 1);
log_info(Channel => "Test", MSG=>"Echo->test_boolean_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_boolean_optional (0)");
my $output = $echo->test_boolean_optional (input=> 0);
log_info(Channel => "Test", MSG=>"Echo->test_boolean_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_boolean_optional ()");
my $output = $echo->test_boolean_optional ();
log_info(Channel => "Test", MSG=>"Echo->test_boolean_optional Output is: " . $output);

#
# Calling test_double_optional operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_double_optional (78.6786786)");
my $output = $echo->test_double_optional (input => 78.6786786);
log_info(Channel => "Test", MSG=>"Echo->test_double_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_double_optional ()");
my $output = $echo->test_double_optional ();
log_info(Channel => "Test", MSG=>"Echo->test_double_optional Output is: " . $output);

#
# Calling test_binary_optional operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_binary_optional (CISSDK)");
my $output = $echo->test_binary_optional (input => 'CISSDK');
log_info(Channel => "Test", MSG=>"Echo->test_binary_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_binary_optional ()");
my $output = $echo->test_binary_optional ();
log_info(Channel => "Test", MSG=>"Echo->test_binary_optional Output is: " . $output);

#
# Calling test_date_time_optional operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_date_time_optional (gmtime())");
my $t2 = gmtime();
my $output = $echo->test_date_time_optional (input => $t2);
log_info(Channel => "Test", MSG=>"Echo->test_date_time_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_date_time_optional ()");
my $output = $echo->test_date_time_optional ();
log_info(Channel => "Test", MSG=>"Echo->test_date_time_optional Output is: " . $output);

#
# Calling test_enum_optional operation
#
log_info(Channel => "Test", MSG=>"Calling Echo->test_enum_optional (Com::Vmware::Vapi::Test::Echo::TestEnum->THREE)");
my $output = $echo->test_enum_optional (input => Com::Vmware::Vapi::Test::Echo::TestEnum->THREE);
log_info(Channel => "Test", MSG=>"Echo->test_enum_optional Output is: " . $output);
log_info(Channel => "Test", MSG=>"Calling Echo->test_enum_optional ()");
my $output = $echo->test_enum_optional ();
log_info(Channel => "Test", MSG=>"Echo->test_enum_optional Output is: " . $output);




print "\n\n------------------------------------------------------";
print "\nComplex Data Types cases:";
print "\n------------------------------------------------------\n";

#
# Calling test_structure operation
#
my $t3 = gmtime();
my $simpleStruct = new Com::Vmware::Vapi::Test::Echo::TestStructureSimple (
                      'string_field' => 'Hello World!'
                   );
                   
my $str = ['Strawberry', 'Orange', 'Apple', 'Grapes'];
my $complexStruct = new Com::Vmware::Vapi::Test::Echo::TestStructureComplex (
                'boolean_field' => 1,
                'string_field' => 'Hello World!',
                'long_field' => 199999999990,
                'double_field' => 3.1456789,
                'date_time_field' => $t3,
                'uri_field' => 'https://vmware.com',
                'secret_field' => 'my_passwd',
                'enum_field' => Com::Vmware::Vapi::Test::Echo::TestEnum->ONE,
                'list_primitive_field' => $str,
                'optional_primitive_field' => 'Hello World!',
                'structure_field' => $simpleStruct                
             );


log_info(Channel => "Test", MSG=>"Calling Echo->test_structure ()");
my $output = $echo->test_structure (input => $complexStruct);
log_info(Channel => "Test", MSG=>"Echo->test_structure Output is: ");
log_framework(Channel => "Test", MSG=> $output);

#
# Done!
#
print "\n";
log_info(Channel => "Test", MSG=>"Completed vAPI Perl SDK Testing.");