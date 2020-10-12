########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file DistributedSwitchCompatibility.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility
# The  ``Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility``  
#     *interface*  provides  *methods*  to get Namespaces compatibility information of
#     Distributed Switches in this vCenter.
#

package Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility;

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
use Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibilityStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.distributed_switch_compatibility';


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
# Returns Namespaces compatibility information of Distributed Switches in vCenter associated
# with the vCenter cluster, matching the  class
# Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec .
#
# @param cluster [REQUIRED] Identifier of a vCenter Cluster. Only Distributed Switches associated with the vCenter
#     Cluster will be considered by the filter.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param filter [OPTIONAL] Specification of matching Distributed Switches for which information should be
#     returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec
#      with all  *fields*   *null*  which means all Distributed Switches match the filter.
# . The value must be
# Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec or
# None.
#
# @retval 
# Namespaces compatibility information for Distributed Switches matching the the  class
#     Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec
#     .
# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::Summary
#
#
#
#
#
#
sub list {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::Summary``
#     *class*  contains information about the compatibility of a vSphere Distributed Switch
#     with the Namespaces feature.

package Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{distributed_switch} = $args{'distributed_switch'};
   $self->{compatible} = $args{'compatible'};
   $self->{incompatibility_reasons} = $args{'incompatibility_reasons'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.distributed_switch_compatibility.summary');
   $self->set_binding_field('key' => 'distributed_switch', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'compatible', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'incompatibility_reasons', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'))));
   bless $self, $class;
   return $self;
}

## @method get_distributed_switch ()
# Gets the value of 'distributed_switch' property.
#
# @retval distributed_switch - The current value of the field.
# Identifier of the switch. If  ``networkProvider``  is either  *null*  or is set to
#     NSXT_CONTAINER_PLUGIN, the value of this field will refer to the UUID of a
#     vim.DistributedVirtualSwitch. Otherwise, the value of the field will refer to the ID
#     of a vim.DistributedVirtualSwitch.
#
# ID#
sub get_distributed_switch {
   my ($self, %args) = @_;
   return $self->{'distributed_switch'}; 	
}

## @method set_distributed_switch ()
# Sets the given value for 'distributed_switch' property.
# 
# @param distributed_switch  - New value for the field.
# Identifier of the switch. If  ``networkProvider``  is either  *null*  or is set to
#     NSXT_CONTAINER_PLUGIN, the value of this field will refer to the UUID of a
#     vim.DistributedVirtualSwitch. Otherwise, the value of the field will refer to the ID
#     of a vim.DistributedVirtualSwitch.
#
sub set_distributed_switch {
   my ($self, %args) = @_;
   $self->{'distributed_switch'} = $args{'distributed_switch'}; 
   return;	
}

## @method get_compatible ()
# Gets the value of 'compatible' property.
#
# @retval compatible - The current value of the field.
# Compatibility of this switch with vSphere Namespaces.
#
# boolean#
sub get_compatible {
   my ($self, %args) = @_;
   return $self->{'compatible'}; 	
}

## @method set_compatible ()
# Sets the given value for 'compatible' property.
# 
# @param compatible  - New value for the field.
# Compatibility of this switch with vSphere Namespaces.
#
sub set_compatible {
   my ($self, %args) = @_;
   $self->{'compatible'} = $args{'compatible'}; 
   return;	
}

## @method get_incompatibility_reasons ()
# Gets the value of 'incompatibility_reasons' property.
#
# @retval incompatibility_reasons - The current value of the field.
# List of reasons for incompatibility.
#
# Optional#
sub get_incompatibility_reasons {
   my ($self, %args) = @_;
   return $self->{'incompatibility_reasons'}; 	
}

## @method set_incompatibility_reasons ()
# Sets the given value for 'incompatibility_reasons' property.
# 
# @param incompatibility_reasons  - New value for the field.
# List of reasons for incompatibility.
#
sub set_incompatibility_reasons {
   my ($self, %args) = @_;
   $self->{'incompatibility_reasons'} = $args{'incompatibility_reasons'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec``
#     *class*  contains  *fields*  used to filter the results when listing Distributed
#     Switches (see 
#     :func:`Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility.list`
#     ) and their compatibility information.

package Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{compatible} = $args{'compatible'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.distributed_switch_compatibility.filter_spec');
   $self->set_binding_field('key' => 'compatible', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_compatible ()
# Gets the value of 'compatible' property.
#
# @retval compatible - The current value of the field.
# Compatibility criteria for matching the filter. If true, only Distributed Switches
#     which are compatible with vSphere Namespaces match the filter. If false, only
#     Distributed Switches which are incompatible with vSphere Namespaces match the filter.
#
# Optional#
sub get_compatible {
   my ($self, %args) = @_;
   return $self->{'compatible'}; 	
}

## @method set_compatible ()
# Sets the given value for 'compatible' property.
# 
# @param compatible  - New value for the field.
# Compatibility criteria for matching the filter. If true, only Distributed Switches
#     which are compatible with vSphere Namespaces match the filter. If false, only
#     Distributed Switches which are incompatible with vSphere Namespaces match the filter.
#
sub set_compatible {
   my ($self, %args) = @_;
   $self->{'compatible'} = $args{'compatible'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::DistributedSwitchCompatibility service
#########################################################################################
