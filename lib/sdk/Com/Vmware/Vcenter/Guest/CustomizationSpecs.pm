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

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.guest.customization_specs';


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

## @method create ()
# Creates a customization specification. This  *method*  was added in vSphere API 7.0.0.0.
#
# @param spec [REQUIRED] The information i.e. name, description and the settings i.e hostname, ip address etc
#     for the new customization specification that needs to be created.
# . The value must be Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec.
#
# @retval 
# The name of the customization specification that is created.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.guest.CustomizationSpec).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a customization specification is already present with the same name.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the specified specification is not a valid one.
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
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method get ()
# Returns the guest customization specification from vCenter with the specified identifier.
# This  *method*  was added in vSphere API 7.0.0.0.
#
# @param name [REQUIRED] The name of the customization specification.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.guest.CustomizationSpec).
# . The value must be str.
#
# @retval 
# A customization spec with the specified identifier.
# The return type will be Com::Vmware::Vcenter::Guest::CustomizationSpecs::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a customization specification is not found.
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
sub get {
   my ($self, %args) = @_;
   my $name = $args {name};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method set ()
# Sets an existing specification, possibly after retrieving (by using 
# :func:`Com::Vmware::Vcenter::Guest::CustomizationSpecs.get` ) and editing it. This 
# *method*  was added in vSphere API 7.0.0.0.
#
# @param name [REQUIRED] The name of the customization specification that needs to be set.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.guest.CustomizationSpec).
# . The value must be str.
#
# @param spec [REQUIRED] The new specification that will overwrite the existing specification.
# . The value must be Com::Vmware::Vcenter::Guest::CustomizationSpecs::Spec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If, based on the item&apos;s fingerprint value, the set process detects that the
#     specification has changed since its retrieval, then the  *method*  throws
#     InvalidArgument exception to warn the client that he might overwrite another
#     client&apos;s change.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the settings in  ``spec``  are not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a customization specification is not found.
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
sub set {
   my ($self, %args) = @_;
   my $name = $args {name};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method delete ()
# Deletes a customization specification with the specified identifier. This  *method*  was
# added in vSphere API 7.0.0.0.
#
# @param name [REQUIRED] The name of the customization specification that needs to be deleted.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.guest.CustomizationSpec).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a customization specification is not found.
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
sub delete {
   my ($self, %args) = @_;
   my $name = $args {name};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method export ()
# Returns the content of the customization specification in the specified format. Note that
# any passwords in the customization specification will be set to blank values during the
# export  *method* . This  *method*  was added in vSphere API 7.0.0.0.
#
# @param name [REQUIRED] The name of the customization specification that has to be returned.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.guest.CustomizationSpec).
# . The value must be str.
#
# @param format [REQUIRED] The format in which the customization specification has to be returned.
# . The value must be Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format.
#
# @retval 
# The string representation of the customization specification in the specified format.
# The return type will be String
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If value of  ``format``  is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the customization specification is not found.
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
sub export {
   my ($self, %args) = @_;
   my $name = $args {name};
   my $format = $args {format};

   $self->validate_args (method_name => 'export',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'export',
                         method_args => \%args);
}

## @method import_specification ()
# Converts a well formatted string to a  class
# Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec . The resulting object can be
# passed to  :func:`Com::Vmware::Vcenter::Guest::CustomizationSpecs.create`   *method* .
# This  *method*  was added in vSphere API 7.0.0.0.
#
# @param customization_spec [REQUIRED] content to be converted to the spec.
# . The value must be String.
#
# @retval 
# A proper specification of type  class
#     Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec 
# The return type will be Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the specified content cannot be properly converted into a proper valid  class
#     Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec  object.
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
sub import_specification {
   my ($self, %args) = @_;
   my $customization_spec = $args {customization_spec};

   $self->validate_args (method_name => 'import_specification',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'import_specification',
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
## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format``   *enumerated type* 
#     specifies the formats the customization specification can be exported to. This 
#     *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format::JSON #
#JSON format. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format::XML #
#XML format. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format;

use constant {
    JSON =>  'JSON',
    XML =>  'XML',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.customization_specs.format',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::Format');
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

## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::Metadata
#
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::Metadata``   *class*  contains
#     metadata i.e. name and description related to a customization specification. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::Metadata;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::Metadata structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::Metadata');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.customization_specs.metadata');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the specification. This  *field*  was added in vSphere API 7.0.0.0.
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
# Description of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec``   *class* 
#     contains specification information and specification object that can be passed to the 
#     :func:`Com::Vmware::Vcenter::Guest::CustomizationSpecs.create`   *method* . This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{spec} = $args{'spec'};
   $self->{description} = $args{'description'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.customization_specs.create_spec');
   $self->set_binding_field('key' => 'spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'CustomizationSpec'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_spec ()
# Gets the value of 'spec' property.
#
# @retval spec - The current value of the field.
# The specification object. This  *field*  was added in vSphere API 7.0.0.0.
#
# CustomizationSpec#
sub get_spec {
   my ($self, %args) = @_;
   return $self->{'spec'}; 	
}

## @method set_spec ()
# Sets the given value for 'spec' property.
# 
# @param spec  - New value for the field.
# The specification object. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_spec {
   my ($self, %args) = @_;
   $self->{'spec'} = $args{'spec'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the specification. This  *field*  was added in vSphere API 7.0.0.0.
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
# Description of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::Spec
#
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::Spec``   *class*  contains the
#     specification information and specification object. This is passed to the 
#     :func:`Com::Vmware::Vcenter::Guest::CustomizationSpecs.set`   *method* . This  *class*
#      was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::Spec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{fingerprint} = $args{'fingerprint'};
   $self->{spec} = $args{'spec'};
   $self->{description} = $args{'description'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::Spec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.customization_specs.spec');
   $self->set_binding_field('key' => 'fingerprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'CustomizationSpec'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_fingerprint ()
# Gets the value of 'fingerprint' property.
#
# @retval fingerprint - The current value of the field.
# The fingerprint is a unique identifier for a given version of the configuration. Each
#     change to the configuration will update this value. A client cannot change this value.
#     If specified when updating a specification, the changes will only be applied if the
#     current fingerprint matches the specified fingerprint. This field can be used to guard
#     against updates that has happened between the specification content was read and until
#     it is applied. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_fingerprint {
   my ($self, %args) = @_;
   return $self->{'fingerprint'}; 	
}

## @method set_fingerprint ()
# Sets the given value for 'fingerprint' property.
# 
# @param fingerprint  - New value for the field.
# The fingerprint is a unique identifier for a given version of the configuration. Each
#     change to the configuration will update this value. A client cannot change this value.
#     If specified when updating a specification, the changes will only be applied if the
#     current fingerprint matches the specified fingerprint. This field can be used to guard
#     against updates that has happened between the specification content was read and until
#     it is applied. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_fingerprint {
   my ($self, %args) = @_;
   $self->{'fingerprint'} = $args{'fingerprint'}; 
   return;	
}

## @method get_spec ()
# Gets the value of 'spec' property.
#
# @retval spec - The current value of the field.
# The specification object. This  *field*  was added in vSphere API 7.0.0.0.
#
# CustomizationSpec#
sub get_spec {
   my ($self, %args) = @_;
   return $self->{'spec'}; 	
}

## @method set_spec ()
# Sets the given value for 'spec' property.
# 
# @param spec  - New value for the field.
# The specification object. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_spec {
   my ($self, %args) = @_;
   $self->{'spec'} = $args{'spec'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the specification. This  *field*  was added in vSphere API 7.0.0.0.
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
# Description of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the specification. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::CustomizationSpecs::Info
#
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpecs::Info``   *class*  describes a
#     guest customization specification and the timestamp when it was last modified. This is
#     returned by the  :func:`Com::Vmware::Vcenter::Guest::CustomizationSpecs.get`  
#     *method* . This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::CustomizationSpecs::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpecs::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{last_modified} = $args{'last_modified'};
   $self->{spec} = $args{'spec'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpecs::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.customization_specs.info');
   $self->set_binding_field('key' => 'last_modified', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'CustomizationSpecs::Spec'));
   bless $self, $class;
   return $self;
}

## @method get_last_modified ()
# Gets the value of 'last_modified' property.
#
# @retval last_modified - The current value of the field.
# Time when the specification was last modified. This  *field*  was added in vSphere API
#     7.0.0.0.
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
# Time when the specification was last modified. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_last_modified {
   my ($self, %args) = @_;
   $self->{'last_modified'} = $args{'last_modified'}; 
   return;	
}

## @method get_spec ()
# Gets the value of 'spec' property.
#
# @retval spec - The current value of the field.
# The Spec object including specification and metadata information. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
# Spec#
sub get_spec {
   my ($self, %args) = @_;
   return $self->{'spec'}; 	
}

## @method set_spec ()
# Sets the given value for 'spec' property.
# 
# @param spec  - New value for the field.
# The Spec object including specification and metadata information. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
sub set_spec {
   my ($self, %args) = @_;
   $self->{'spec'} = $args{'spec'}; 
   return;	
}


1;


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
