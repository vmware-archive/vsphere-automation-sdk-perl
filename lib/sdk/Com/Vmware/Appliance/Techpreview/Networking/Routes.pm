########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Routes.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Networking::Routes
# ``Com::Vmware::Appliance::Techpreview::Networking::Routes``   *interface*  provides 
#     *methods*  Performs networking routes operations.
#

package Com::Vmware::Appliance::Techpreview::Networking::Routes;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Appliance::Techpreview::Networking::RoutesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method test ()
# Test connection to a list of gateways
#
# @param gateways [REQUIRED] list of gateways.
# . The value must be Array of String.
#
# @retval 
# connection status
# The return type will be
# Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub test {
   my ($self, %args) = @_;
   my $gateways = $args {gateways};

   $self->validate_args (method_name => 'test',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'test',
                         method_args => \%args);
}


## @method add ()
# Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination
# of :: and prefix 0 (for IPv6) refers to the default gateway.
#
# @param route [REQUIRED] Static routing rule.
# . The value must be Com::Vmware::Appliance::Techpreview::Networking::Routes::Route.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub add {
   my ($self, %args) = @_;
   my $route = $args {route};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}


## @method set ()
# Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination
# of :: and prefix 0 (for IPv6) refers to the default gateway.
#
# @param routes [REQUIRED] Static routing rules.
# . The value must be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Routes::Route.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $routes = $args {routes};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method list ()
# Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of
# :: and prefix 0 (for IPv6) refers to the default gateway.
#
# @retval 
# Routing table.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method delete ()
# Delete static routing rules.
#
# @param route [REQUIRED] Static routing rule.
# . The value must be Com::Vmware::Appliance::Techpreview::Networking::Routes::Route.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub delete {
   my ($self, %args) = @_;
   my $route = $args {route};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Routes service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus``   *enumerated
#     type*  Health indicator
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus::ORANGE #
#In case data has more than one test, this indicates not all tests were successful
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus::GREEN #
#All tests were successful for given data
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus::RED #
#All tests failed for given data

package Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus;

use constant {
    orange =>  'orange',
    green =>  'green',
    red =>  'red',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.routes.test_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus``  
#     *enumerated type*  Individual test result
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus::FAILURE #
#message indicates the test failed.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus::SUCCESS #
#message indicates that the test was successful.

package Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus;

use constant {
    failure =>  'failure',
    success =>  'success',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.routes.message_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Routes::MessageStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Routes service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Networking::Routes service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly``   *class* 
#     Structure that describes how routing is performed for a particular destination and
#     prefix. A destination/prefix of 0.0.0.0/0 ( for IPv4) or ::/0 (for IPv6) refers to the
#     default gateway.

package Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{destination} = $args{'destination'};
   $self->{prefix} = $args{'prefix'};
   $self->{gateway} = $args{'gateway'};
   $self->{interface_name} = $args{'interface_name'};
   $self->{is_static} = $args{'is_static'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Routes::RouteReadOnly');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.routes.route_read_only');
   $self->set_binding_field('key' => 'destination', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'is_static', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_destination ()
# Gets the value of 'destination' property.
#
# @retval destination - The current value of the field.
# Destination address that defines this route.
#
# String#
sub get_destination {
   my ($self, %args) = @_;
   return $self->{'destination'}; 	
}

## @method set_destination ()
# Sets the given value for 'destination' property.
# 
# @param destination  - New value for the field.
# Destination address that defines this route.
#
sub set_destination {
   my ($self, %args) = @_;
   $self->{'destination'} = $args{'destination'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# Destination CIDR prefix that defines this route. See
#     http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion.
#
# long#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# Destination CIDR prefix that defines this route. See
#     http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_gateway ()
# Gets the value of 'gateway' property.
#
# @retval gateway - The current value of the field.
# Gateway address.
#
# String#
sub get_gateway {
   my ($self, %args) = @_;
   return $self->{'gateway'}; 	
}

## @method set_gateway ()
# Sets the given value for 'gateway' property.
# 
# @param gateway  - New value for the field.
# Gateway address.
#
sub set_gateway {
   my ($self, %args) = @_;
   $self->{'gateway'} = $args{'gateway'}; 
   return;	
}

## @method get_interface_name ()
# Gets the value of 'interface_name' property.
#
# @retval interface_name - The current value of the field.
# Output device interface, for example, &quot;nic0&quot;.
#
# String#
sub get_interface_name {
   my ($self, %args) = @_;
   return $self->{'interface_name'}; 	
}

## @method set_interface_name ()
# Sets the given value for 'interface_name' property.
# 
# @param interface_name  - New value for the field.
# Output device interface, for example, &quot;nic0&quot;.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}

## @method get_is_static ()
# Gets the value of 'is_static' property.
#
# @retval is_static - The current value of the field.
# Static provides information about installation of the route. True indicates the route
#     was installed by the administrator. False indicates the route was autoconfigured
#
# boolean#
sub get_is_static {
   my ($self, %args) = @_;
   return $self->{'is_static'}; 	
}

## @method set_is_static ()
# Sets the given value for 'is_static' property.
# 
# @param is_static  - New value for the field.
# Static provides information about installation of the route. True indicates the route
#     was installed by the administrator. False indicates the route was autoconfigured
#
sub set_is_static {
   my ($self, %args) = @_;
   $self->{'is_static'} = $args{'is_static'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Routes::Route
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Routes::Route``   *class* 
#     Structure that describes how routing is performed for a particular destination and
#     prefix. A destination/prefix of 0.0.0.0/0 ( for IPv4) or ::/0 (for IPv6) refers to the
#     default gateway.

package Com::Vmware::Appliance::Techpreview::Networking::Routes::Route;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Routes::Route structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{destination} = $args{'destination'};
   $self->{prefix} = $args{'prefix'};
   $self->{gateway} = $args{'gateway'};
   $self->{interface_name} = $args{'interface_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Routes::Route');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.routes.route');
   $self->set_binding_field('key' => 'destination', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_destination ()
# Gets the value of 'destination' property.
#
# @retval destination - The current value of the field.
# Destination address that defines this route.
#
# String#
sub get_destination {
   my ($self, %args) = @_;
   return $self->{'destination'}; 	
}

## @method set_destination ()
# Sets the given value for 'destination' property.
# 
# @param destination  - New value for the field.
# Destination address that defines this route.
#
sub set_destination {
   my ($self, %args) = @_;
   $self->{'destination'} = $args{'destination'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# Destination CIDR prefix that defines this route. See
#     http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion.
#
# long#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# Destination CIDR prefix that defines this route. See
#     http://www.oav.net/mirrors/cidr.html for netmask-to-prefix conversion.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_gateway ()
# Gets the value of 'gateway' property.
#
# @retval gateway - The current value of the field.
# Gateway address.
#
# String#
sub get_gateway {
   my ($self, %args) = @_;
   return $self->{'gateway'}; 	
}

## @method set_gateway ()
# Sets the given value for 'gateway' property.
# 
# @param gateway  - New value for the field.
# Gateway address.
#
sub set_gateway {
   my ($self, %args) = @_;
   $self->{'gateway'} = $args{'gateway'}; 
   return;	
}

## @method get_interface_name ()
# Gets the value of 'interface_name' property.
#
# @retval interface_name - The current value of the field.
# Output device interface, for example, &quot;nic0&quot;.
#
# String#
sub get_interface_name {
   my ($self, %args) = @_;
   return $self->{'interface_name'}; 	
}

## @method set_interface_name ()
# Sets the given value for 'interface_name' property.
# 
# @param interface_name  - New value for the field.
# Output device interface, for example, &quot;nic0&quot;.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Routes::Message
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Routes::Message``   *class*  Test
#     result and message

package Com::Vmware::Appliance::Techpreview::Networking::Routes::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Routes::Message structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{message} = $args{'message'};
   $self->{result} = $args{'result'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Routes::Message');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.routes.message');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Routes::MessageStatus'));
   bless $self, $class;
   return $self;
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# message
#
# String#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# message
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}

## @method get_result ()
# Gets the value of 'result' property.
#
# @retval result - The current value of the field.
# result of the test
#
# MessageStatus#
sub get_result {
   my ($self, %args) = @_;
   return $self->{'result'}; 	
}

## @method set_result ()
# Sets the given value for 'result' property.
# 
# @param result  - New value for the field.
# result of the test
#
sub set_result {
   my ($self, %args) = @_;
   $self->{'result'} = $args{'result'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo``   *class* 
#     Overall test result

package Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{messages} = $args{'messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Routes::TestStatusInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.routes.test_status_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Routes::TestStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Routes::Message')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Overall status of tests run.
#
# TestStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Overall status of tests run.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# messages
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# messages
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Networking::Routes service
#########################################################################################
