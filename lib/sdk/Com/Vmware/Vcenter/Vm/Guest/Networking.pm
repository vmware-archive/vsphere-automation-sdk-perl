########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Networking.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Guest::Networking
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking``   *interface*  provides 
#     *methods*  for retrieving guest operating system network information. This 
#     *interface*  was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Vm::Guest::Networking;

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
use Com::Vmware::Vcenter::Vm::Guest::NetworkingStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.guest.networking';


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

## @method get ()
# Returns information about the network configuration in the guest operating system. This 
# *method*  was added in vSphere API 7.0.0.0.
#
# @param vm [REQUIRED] Virtual machine ID
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Information about the networking configuration in the guest operating system.
# The return type will be Com::Vmware::Vcenter::Vm::Guest::Networking::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if VMware Tools is not running.
#
sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Guest::Networking service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Guest::Networking service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Guest::Networking service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Info``   *class*  contains
#     information about networking as configured in the guest operating system. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Networking::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Networking::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dns_values} = $args{'dns_values'};
   $self->{dns} = $args{'dns'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Networking::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.networking.info');
   $self->set_binding_field('key' => 'dns_values', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest', 'type_name' => 'DnsAssignedValues')));
   $self->set_binding_field('key' => 'dns', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest', 'type_name' => 'DnsConfigInfo')));
   bless $self, $class;
   return $self;
}

## @method get_dns_values ()
# Gets the value of 'dns_values' property.
#
# @retval dns_values - The current value of the field.
# Client DNS values. Data assigned by DNS. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_dns_values {
   my ($self, %args) = @_;
   return $self->{'dns_values'}; 	
}

## @method set_dns_values ()
# Sets the given value for 'dns_values' property.
# 
# @param dns_values  - New value for the field.
# Client DNS values. Data assigned by DNS. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_dns_values {
   my ($self, %args) = @_;
   $self->{'dns_values'} = $args{'dns_values'}; 
   return;	
}

## @method get_dns ()
# Gets the value of 'dns' property.
#
# @retval dns - The current value of the field.
# Client DNS configuration. How DNS queries are resolved. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Optional#
sub get_dns {
   my ($self, %args) = @_;
   return $self->{'dns'}; 	
}

## @method set_dns ()
# Sets the given value for 'dns' property.
# 
# @param dns  - New value for the field.
# Client DNS configuration. How DNS queries are resolved. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_dns {
   my ($self, %args) = @_;
   $self->{'dns'} = $args{'dns'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Guest::Networking service
#########################################################################################
