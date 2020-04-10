########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ResourceAddressSchemas.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::ResourceAddressSchemas
# The  ``Com::Vmware::Vstats::ResourceAddressSchemas``   *interface*  manages inventory
#     of resource addressing schemas used by  class Com::Vmware::Vstats::Counters . Each
#     schema consists of a named list of resource identifiers of specific resource type.
#     <b>Warning:</b> This  *interface*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for resource addressing schemas. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vstats::ResourceAddressSchemas;

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
use Com::Vmware::Vstats::ResourceAddressSchemasStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.resource_address_schemas';


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
# Returns information about a specific resource address schema. <b>Warning:</b> This 
# *method*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# @param id [REQUIRED] Resource address schema identifier.
# . The value must be String.
#
# @retval 
# Information about the desired resource address schema.
# The return type will be Com::Vmware::Vstats::ResourceAddressSchemas::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``id``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if RsrcAddrSchema could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub get {
   my ($self, %args) = @_;
   my $id = $args {id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::ResourceAddressSchemas service
#########################################################################################

## @class Com::Vmware::Vstats::ResourceAddressSchemas::QueryCapabilities
#
# Declares which predicates are supported by the 
#     ``Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition`` .
#     <b>Warning:</b> This  *enumeration*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
#
#
# Constant Com::Vmware::Vstats::ResourceAddressSchemas::QueryCapabilities::EQUAL #
#Equal. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::ResourceAddressSchemas::QueryCapabilities::EQUAL_ALL #
#Supports both Equality and Aggregation. <b>Warning:</b> This  *constant*  is available as
# Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vstats::ResourceAddressSchemas::QueryCapabilities;

use constant {
    EQUAL =>  'EQUAL',
    EQUAL_ALL =>  'EQUAL_ALL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::ResourceAddressSchemas::QueryCapabilities enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vstats.resource_address_schemas.query_capabilities',
                           'binding_class' => 'Com::Vmware::Vstats::ResourceAddressSchemas::QueryCapabilities');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::ResourceAddressSchemas service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::ResourceAddressSchemas service
#########################################################################################

## @class Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition
#
#
# The  ``Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition``   *class* 
#     describes a single identifier of the Resource Addressing Schema. <b>Warning:</b> This 
#     *class*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.

package Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{key} = $args{'key'};
   $self->{type} = $args{'type'};
   $self->{query_options} = $args{'query_options'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition');
   $self->set_binding_name('name' => 'com.vmware.vstats.resource_address_schemas.resource_id_definition');
   $self->set_binding_field('key' => 'key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'query_options', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'ResourceAddressSchemas::QueryCapabilities'));
   bless $self, $class;
   return $self;
}

## @method get_key ()
# Gets the value of 'key' property.
#
# @retval key - The current value of the field.
# Designates a semantic key for the resource identifier. This could be &quot;vm&quot;
#     for virtual machine whose CPU usage is metered or &quot;source&quot; to identify the
#     virtual machine that is origin of measured network traffic. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# String#
sub get_key {
   my ($self, %args) = @_;
   return $self->{'key'}; 	
}

## @method set_key ()
# Sets the given value for 'key' property.
# 
# @param key  - New value for the field.
# Designates a semantic key for the resource identifier. This could be &quot;vm&quot;
#     for virtual machine whose CPU usage is metered or &quot;source&quot; to identify the
#     virtual machine that is origin of measured network traffic. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_key {
   my ($self, %args) = @_;
   $self->{'key'} = $args{'key'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the resource. This represents various entities for which statistical data is
#     gathered such as virtual machines, containers, servers, disks etc. <b>Warning:</b>
#     This  *field*  is available as Technology Preview. These are early access APIs
#     provided to test, automate and provide feedback on the feature. Since this can change
#     based on feedback, VMware does not guarantee backwards compatibility and recommends
#     against using them in production environments. Some Technology Preview APIs might only
#     be applicable to specific environments.
#
# ID#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the resource. This represents various entities for which statistical data is
#     gathered such as virtual machines, containers, servers, disks etc. <b>Warning:</b>
#     This  *field*  is available as Technology Preview. These are early access APIs
#     provided to test, automate and provide feedback on the feature. Since this can change
#     based on feedback, VMware does not guarantee backwards compatibility and recommends
#     against using them in production environments. Some Technology Preview APIs might only
#     be applicable to specific environments.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_query_options ()
# Gets the value of 'query_options' property.
#
# @retval query_options - The current value of the field.
# Designates the supported query-options. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# QueryCapabilities#
sub get_query_options {
   my ($self, %args) = @_;
   return $self->{'query_options'}; 	
}

## @method set_query_options ()
# Sets the given value for 'query_options' property.
# 
# @param query_options  - New value for the field.
# Designates the supported query-options. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_query_options {
   my ($self, %args) = @_;
   $self->{'query_options'} = $args{'query_options'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::ResourceAddressSchemas::Info
#
#
# The  ``Com::Vmware::Vstats::ResourceAddressSchemas::Info``   *class*  defines
#     addressing schema for a counter. This is set of named placeholders for different
#     resource types. For example a network link between VMs will take two arguments
#     &quot;source&quot; and &quot;destination&quot; both of type VM. For each argument
#     query capability is defined. <b>Warning:</b> This  *class*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::ResourceAddressSchemas::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::ResourceAddressSchemas::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{schema} = $args{'schema'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::ResourceAddressSchemas::Info');
   $self->set_binding_name('name' => 'com.vmware.vstats.resource_address_schemas.info');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'schema', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'ResourceAddressSchemas::ResourceIdDefinition')));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Identifier. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Identifier. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_schema ()
# Gets the value of 'schema' property.
#
# @retval schema - The current value of the field.
# List of  class Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition s.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# List#
sub get_schema {
   my ($self, %args) = @_;
   return $self->{'schema'}; 	
}

## @method set_schema ()
# Sets the given value for 'schema' property.
# 
# @param schema  - New value for the field.
# List of  class Com::Vmware::Vstats::ResourceAddressSchemas::ResourceIdDefinition s.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_schema {
   my ($self, %args) = @_;
   $self->{'schema'} = $args{'schema'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::ResourceAddressSchemas service
#########################################################################################
