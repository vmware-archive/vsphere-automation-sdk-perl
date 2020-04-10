########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ResourceAddresses.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::ResourceAddresses
# The  ``Com::Vmware::Vstats::ResourceAddresses``   *interface*  provides  *methods*  to
#     perform resource addressing queries. <b>Warning:</b> This  *interface*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for  ``Com::Vmware::Vstats::ResourceAddresses`` . <b>Warning:</b> This 
# *constant*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.

package Com::Vmware::Vstats::ResourceAddresses;

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
use Com::Vmware::Vstats::ResourceAddressesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.resource_addresses';


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
# Returns the list of Resource Addresses matching the filter parameters. <b>Warning:</b>
# This  *method*  is available as Technology Preview. These are early access APIs provided
# to test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# @param filter [OPTIONAL] Criteria for selecting records to return.
# If  *null*  all records will be returned.
# . The value must be Com::Vmware::Vstats::ResourceAddresses::FilterSpec or None.
#
# @retval 
# Matching resource addresses.
# The return type will be Com::Vmware::Vstats::ResourceAddresses::ListResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get ()
# Returns information about a specific Resource Address. <b>Warning:</b> This  *method*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param id [REQUIRED] Resource Address ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.RsrcAddr).
# . The value must be str.
#
# @retval 
# Information about the desired Resource Address.
# The return type will be Com::Vmware::Vstats::ResourceAddresses::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``id``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if Resource Address could not be located.
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
# Begins enumerations for the Com::Vmware::Vstats::ResourceAddresses service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::ResourceAddresses service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::ResourceAddresses service
#########################################################################################

## @class Com::Vmware::Vstats::ResourceAddresses::Info
#
#
# The  ``Com::Vmware::Vstats::ResourceAddresses::Info``   *class*  contains global
#     address of a specific Resource. <b>Warning:</b> This  *class*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::ResourceAddresses::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::ResourceAddresses::Info structure
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
   $self->{resource_ids} = $args{'resource_ids'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::ResourceAddresses::Info');
   $self->set_binding_name('name' => 'com.vmware.vstats.resource_addresses.info');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'RsrcId')));
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

## @method get_resource_ids ()
# Gets the value of 'resource_ids' property.
#
# @retval resource_ids - The current value of the field.
# List of Resource Identifiers. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# List#
sub get_resource_ids {
   my ($self, %args) = @_;
   return $self->{'resource_ids'}; 	
}

## @method set_resource_ids ()
# Sets the given value for 'resource_ids' property.
# 
# @param resource_ids  - New value for the field.
# List of Resource Identifiers. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_resource_ids {
   my ($self, %args) = @_;
   $self->{'resource_ids'} = $args{'resource_ids'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::ResourceAddresses::ListResult
#
#
# The  class Com::Vmware::Vstats::ResourceAddresses::ListResult   *class*  contains 
#     *fields*  used to return the resource addresses. <b>Warning:</b> This  *class*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Vstats::ResourceAddresses::ListResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::ResourceAddresses::ListResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{rsrc_addrs} = $args{'rsrc_addrs'};
   $self->{next} = $args{'next'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::ResourceAddresses::ListResult');
   $self->set_binding_name('name' => 'com.vmware.vstats.resource_addresses.list_result');
   $self->set_binding_field('key' => 'rsrc_addrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'ResourceAddresses::Info')));
   $self->set_binding_field('key' => 'next', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_rsrc_addrs ()
# Gets the value of 'rsrc_addrs' property.
#
# @retval rsrc_addrs - The current value of the field.
# List of Resource Addresses received. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# List#
sub get_rsrc_addrs {
   my ($self, %args) = @_;
   return $self->{'rsrc_addrs'}; 	
}

## @method set_rsrc_addrs ()
# Sets the given value for 'rsrc_addrs' property.
# 
# @param rsrc_addrs  - New value for the field.
# List of Resource Addresses received. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_rsrc_addrs {
   my ($self, %args) = @_;
   $self->{'rsrc_addrs'} = $args{'rsrc_addrs'}; 
   return;	
}

## @method get_next ()
# Gets the value of 'next' property.
#
# @retval next - The current value of the field.
# Used to retrieve paged data for larger result sets. Token is generated by server. The
#     value of this field should be supplied in a subsequent call to 
#     :func:`Com::Vmware::Vstats::ResourceAddresses.list`   *method* . <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_next {
   my ($self, %args) = @_;
   return $self->{'next'}; 	
}

## @method set_next ()
# Sets the given value for 'next' property.
# 
# @param next  - New value for the field.
# Used to retrieve paged data for larger result sets. Token is generated by server. The
#     value of this field should be supplied in a subsequent call to 
#     :func:`Com::Vmware::Vstats::ResourceAddresses.list`   *method* . <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_next {
   my ($self, %args) = @_;
   $self->{'next'} = $args{'next'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::ResourceAddresses::FilterSpec
#
#
# ``Com::Vmware::Vstats::ResourceAddresses::FilterSpec``   *class*  describes filter
#     criteria for resource addresses. <b>Warning:</b> This  *class*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::ResourceAddresses::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::ResourceAddresses::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{types} = $args{'types'};
   $self->{resources} = $args{'resources'};
   $self->{page} = $args{'page'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::ResourceAddresses::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.resource_addresses.filter_spec');
   $self->set_binding_field('key' => 'types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'resources', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'page', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_types ()
# Gets the value of 'types' property.
#
# @retval types - The current value of the field.
# List of Resource types. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_types {
   my ($self, %args) = @_;
   return $self->{'types'}; 	
}

## @method set_types ()
# Sets the given value for 'types' property.
# 
# @param types  - New value for the field.
# List of Resource types. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_types {
   my ($self, %args) = @_;
   $self->{'types'} = $args{'types'}; 
   return;	
}

## @method get_resources ()
# Gets the value of 'resources' property.
#
# @retval resources - The current value of the field.
# Resources to include in the query. Each resource is specified through a composite
#     string that follows the following format. <p>
# 
#   ``type.<resource type>[.<scheme>]=<resource id>``  </p>
# 
# <p>
# 
# <b>resource type</b> specifies the type of resource for example  ``VM`` ,  ``VCPU`` 
#     etc. </p>
# 
# <p>
# 
# <b>scheme</b> is an optional element to disambiguate the resource as needed for
#     example to differentiate managed object id from  ``uuid`` . </p>
# 
# <p>
# 
# <b>resource id</b> is the unique resource identifier value for example:  ``vm-41`` 
#     </p>
# 
# <p>
# 
# Example values include:  ``type.VM=vm-41`` ,  ``type.VCPU=1`` , 
#     ``type.VM.moid=vm-41`` </p>
# 
# . <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Optional#
sub get_resources {
   my ($self, %args) = @_;
   return $self->{'resources'}; 	
}

## @method set_resources ()
# Sets the given value for 'resources' property.
# 
# @param resources  - New value for the field.
# Resources to include in the query. Each resource is specified through a composite
#     string that follows the following format. <p>
# 
#   ``type.<resource type>[.<scheme>]=<resource id>``  </p>
# 
# <p>
# 
# <b>resource type</b> specifies the type of resource for example  ``VM`` ,  ``VCPU`` 
#     etc. </p>
# 
# <p>
# 
# <b>scheme</b> is an optional element to disambiguate the resource as needed for
#     example to differentiate managed object id from  ``uuid`` . </p>
# 
# <p>
# 
# <b>resource id</b> is the unique resource identifier value for example:  ``vm-41`` 
#     </p>
# 
# <p>
# 
# Example values include:  ``type.VM=vm-41`` ,  ``type.VCPU=1`` , 
#     ``type.VM.moid=vm-41`` </p>
# 
# . <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_resources {
   my ($self, %args) = @_;
   $self->{'resources'} = $args{'resources'}; 
   return;	
}

## @method get_page ()
# Gets the value of 'page' property.
#
# @retval page - The current value of the field.
# The  ``page``  field is used to retrieve paged data for large result sets. It is an
#     opaque paging token obtained from a prior call to the 
#     :func:`Com::Vmware::Vstats::ResourceAddresses.list`  API. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_page {
   my ($self, %args) = @_;
   return $self->{'page'}; 	
}

## @method set_page ()
# Sets the given value for 'page' property.
# 
# @param page  - New value for the field.
# The  ``page``  field is used to retrieve paged data for large result sets. It is an
#     opaque paging token obtained from a prior call to the 
#     :func:`Com::Vmware::Vstats::ResourceAddresses.list`  API. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_page {
   my ($self, %args) = @_;
   $self->{'page'} = $args{'page'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::ResourceAddresses service
#########################################################################################
