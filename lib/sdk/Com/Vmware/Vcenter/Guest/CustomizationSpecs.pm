########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CustomizationSpecs.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs``   *interface*  provides 
#     *methods*  to manage guest customization specifications in the vCenter Server. This 
#     *interface*  was added in vSphere API 6.7.1.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for a vCenter guest customization specification. This  *constant*  was
# added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs;

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
use Com::Vmware::Vcenter::Guest::CustomizationSpecsStub;

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

## @method list ()
# Returns information about at most 1000 visible (subject to permission checks) guest
# customization specifications in vCenter matching the  class
# Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec . This  *method*  was added in
# vSphere API 6.7.1.
#
# @param filter [OPTIONAL] Specification of matching guest customization specifications for which information
#     should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec  with all  *fields*  
#     *null*  which means all guest customization specifications match the filter.
# . The value must be Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec or None.
#
# @retval 
# Commonly used information about the guest customization specifications matching the 
#     class Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec.os_type`  
#     *field*  contains a value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 1000 guest customization specifications match the  class
#     Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#

sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Guest::CustomizationSpecs service
#########################################################################################

## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::OsType
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::OsType``   *enumerated type* 
#     defines the types of guest operating systems for which guest customization is
#     supported. This  *enumeration*  was added in vSphere API 6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::CustomizationSpecs::OsType::WINDOWS #
#A customization specification for a Windows guest operating system. This  *constant*  was
# added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Guest::CustomizationSpecs::OsType::LINUX #
#A customization specification for a Linux guest operating system. This  *constant*  was
# added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::OsType;

use constant {
    WINDOWS =>  'WINDOWS',
    LINUX =>  'LINUX',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::OsType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.customization_specs.os_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::OsType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Guest::CustomizationSpecs service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Guest::CustomizationSpecs service
#########################################################################################

## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec``   *class* 
#     contains  *fields*  used to filter the results when listing guest customization
#     specifications (see  :func:`Com::Vmware::Vcenter::Guest::CustomizationSpecs.list` ).
#     If multiple  *fields*  are specified, only guest customization specifications matching
#     all of the  *fields*  match the filter. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{names} = $args{'names'};
   $self->{OS_type} = $args{'OS_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.customization_specs.filter_spec');
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'OS_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'CustomizationSpecs::OsType')));
   bless $self, $class;
   return $self;
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that guest customization specifications must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary.name` ). This  *field*
#      was added in vSphere API 6.7.1.
#
# Optional#
sub get_names {
   my ($self, %args) = @_;
   return $self->{'names'}; 	
}

## @method set_names ()
# Sets the given value for 'names' property.
# 
# @param names  - New value for the field.
# Names that guest customization specifications must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary.name` ). This  *field*
#      was added in vSphere API 6.7.1.
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_OS_type ()
# Gets the value of 'OS_type' property.
#
# @retval OS_type - The current value of the field.
# Guest operating system type that guest customization specifications must have to match
#     the filter (see 
#     :attr:`Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary.os_type` ). This 
#     *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_OS_type {
   my ($self, %args) = @_;
   return $self->{'OS_type'}; 	
}

## @method set_OS_type ()
# Sets the given value for 'OS_type' property.
# 
# @param OS_type  - New value for the field.
# Guest operating system type that guest customization specifications must have to match
#     the filter (see 
#     :attr:`Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary.os_type` ). This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_OS_type {
   my ($self, %args) = @_;
   $self->{'OS_type'} = $args{'OS_type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary
#
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary``   *class*  contains
#     commonly used information about a guest customization specification. This  *class* 
#     was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{OS_type} = $args{'OS_type'};
   $self->{last_modified} = $args{'last_modified'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.customization_specs.summary');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'OS_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'CustomizationSpecs::OsType'));
   $self->set_binding_field('key' => 'last_modified', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the guest customization specification. This  *field*  was added in vSphere API
#     6.7.1.
#
# ID#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the guest customization specification. This  *field*  was added in vSphere API
#     6.7.1.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the guest customization specification. This  *field*  was added in
#     vSphere API 6.7.1.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the guest customization specification. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_OS_type ()
# Gets the value of 'OS_type' property.
#
# @retval OS_type - The current value of the field.
# Guest operating system type for which that this guest customization specification
#     applies. This  *field*  was added in vSphere API 6.7.1.
#
# OsType#
sub get_OS_type {
   my ($self, %args) = @_;
   return $self->{'OS_type'}; 	
}

## @method set_OS_type ()
# Sets the given value for 'OS_type' property.
# 
# @param OS_type  - New value for the field.
# Guest operating system type for which that this guest customization specification
#     applies. This  *field*  was added in vSphere API 6.7.1.
#
sub set_OS_type {
   my ($self, %args) = @_;
   $self->{'OS_type'} = $args{'OS_type'}; 
   return;	
}

## @method get_last_modified ()
# Gets the value of 'last_modified' property.
#
# @retval last_modified - The current value of the field.
# Date and tme when this guest customization specification was last modified. This 
#     *field*  was added in vSphere API 6.7.1.
#
# DateTime#
sub get_last_modified {
   my ($self, %args) = @_;
   return $self->{'last_modified'}; 	
}

## @method set_last_modified ()
# Sets the given value for 'last_modified' property.
# 
# @param last_modified  - New value for the field.
# Date and tme when this guest customization specification was last modified. This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_last_modified {
   my ($self, %args) = @_;
   $self->{'last_modified'} = $args{'last_modified'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Guest::CustomizationSpecs service
#########################################################################################
