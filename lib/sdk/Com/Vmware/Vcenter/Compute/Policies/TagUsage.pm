########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TagUsage.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Compute::Policies::TagUsage
# The  ``Com::Vmware::Vcenter::Compute::Policies::TagUsage``   *interface*  provides 
#     *methods*  to query which tags are used by policies in VMware Cloud on AWS. Usage
#     beyond VMware Cloud on AWS is not supported. <b>Warning:</b> This  *interface*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#

package Com::Vmware::Vcenter::Compute::Policies::TagUsage;

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
use Com::Vmware::Vcenter::Compute::Policies::TagUsageStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.compute.policies.tag_usage';


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
# Returns information about the tags used by policies available in this vCenter server
# matching the  class Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec  in
# VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. <b>Warning:</b>
# This  *method*  is available as Technology Preview. These are early access APIs provided
# to test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param filter [OPTIONAL] Specification for matching tags used by policies.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec  with all  *fields*  
#     *null* , which means all tags used by policies match the filter.
# . The value must be Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec or None.
#
# @retval 
# The list of tags used by policies available on this vCenter server matching the  class
#     Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec .
# The return type will be Array of
# Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges, or when used beyond VMware
#     Cloud on AWS.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
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
# Begins enumerations for the Com::Vmware::Vcenter::Compute::Policies::TagUsage service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Compute::Policies::TagUsage service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Compute::Policies::TagUsage service
#########################################################################################

## @class Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary``   *class* 
#     contains common information about a tag used by a policy. <b>Warning:</b> This 
#     *class*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.

package Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policy} = $args{'policy'};
   $self->{tag_type} = $args{'tag_type'};
   $self->{tag} = $args{'tag'};
   $self->{tag_name} = $args{'tag_name'};
   $self->{category_name} = $args{'category_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.tag_usage.summary');
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'tag_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'tag_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'category_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the policy that uses the tag indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.tag` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# ID#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier of the policy that uses the tag indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.tag` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_tag_type ()
# Gets the value of 'tag_type' property.
#
# @retval tag_type - The current value of the field.
# Identifier of the tag type used by the policy indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.policy` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# ID#
sub get_tag_type {
   my ($self, %args) = @_;
   return $self->{'tag_type'}; 	
}

## @method set_tag_type ()
# Sets the given value for 'tag_type' property.
# 
# @param tag_type  - New value for the field.
# Identifier of the tag type used by the policy indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.policy` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_tag_type {
   my ($self, %args) = @_;
   $self->{'tag_type'} = $args{'tag_type'}; 
   return;	
}

## @method get_tag ()
# Gets the value of 'tag' property.
#
# @retval tag - The current value of the field.
# Identifier of the tag used by the policy indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.policy` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# ID#
sub get_tag {
   my ($self, %args) = @_;
   return $self->{'tag'}; 	
}

## @method set_tag ()
# Sets the given value for 'tag' property.
# 
# @param tag  - New value for the field.
# Identifier of the tag used by the policy indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.policy` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_tag {
   my ($self, %args) = @_;
   $self->{'tag'} = $args{'tag'}; 
   return;	
}

## @method get_tag_name ()
# Gets the value of 'tag_name' property.
#
# @retval tag_name - The current value of the field.
# Name of the tag used by the policy indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.policy` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# String#
sub get_tag_name {
   my ($self, %args) = @_;
   return $self->{'tag_name'}; 	
}

## @method set_tag_name ()
# Sets the given value for 'tag_name' property.
# 
# @param tag_name  - New value for the field.
# Name of the tag used by the policy indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.policy` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_tag_name {
   my ($self, %args) = @_;
   $self->{'tag_name'} = $args{'tag_name'}; 
   return;	
}

## @method get_category_name ()
# Gets the value of 'category_name' property.
#
# @retval category_name - The current value of the field.
# Name of the category that has 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.tag` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# String#
sub get_category_name {
   my ($self, %args) = @_;
   return $self->{'category_name'}; 	
}

## @method set_category_name ()
# Sets the given value for 'category_name' property.
# 
# @param category_name  - New value for the field.
# Name of the category that has 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::TagUsage::Summary.tag` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_category_name {
   my ($self, %args) = @_;
   $self->{'category_name'} = $args{'category_name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec``   *class* 
#     contains  *fields*  used to filter the results when listing the tags used by policies
#     as available in this vCenter server (see 
#     :func:`Com::Vmware::Vcenter::Compute::Policies::TagUsage.list` ). If multiple 
#     *fields*  are specified, only the tags used by policies that match an element of each 
#     *field*  match the filter. <b>Warning:</b> This  *class*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policies} = $args{'policies'};
   $self->{tags} = $args{'tags'};
   $self->{tag_types} = $args{'tag_types'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::TagUsage::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.tag_usage.filter_spec');
   $self->set_binding_field('key' => 'policies', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'tags', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'tag_types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_policies ()
# Gets the value of 'policies' property.
#
# @retval policies - The current value of the field.
# Identifiers that compute policies must have to match the filter. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_policies {
   my ($self, %args) = @_;
   return $self->{'policies'}; 	
}

## @method set_policies ()
# Sets the given value for 'policies' property.
# 
# @param policies  - New value for the field.
# Identifiers that compute policies must have to match the filter. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_policies {
   my ($self, %args) = @_;
   $self->{'policies'} = $args{'policies'}; 
   return;	
}

## @method get_tags ()
# Gets the value of 'tags' property.
#
# @retval tags - The current value of the field.
# Identifiers that tags must have to match the filter. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# Optional#
sub get_tags {
   my ($self, %args) = @_;
   return $self->{'tags'}; 	
}

## @method set_tags ()
# Sets the given value for 'tags' property.
# 
# @param tags  - New value for the field.
# Identifiers that tags must have to match the filter. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_tags {
   my ($self, %args) = @_;
   $self->{'tags'} = $args{'tags'}; 
   return;	
}

## @method get_tag_types ()
# Gets the value of 'tag_types' property.
#
# @retval tag_types - The current value of the field.
# Identifiers that tag types must have to match the filter. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_tag_types {
   my ($self, %args) = @_;
   return $self->{'tag_types'}; 	
}

## @method set_tag_types ()
# Sets the given value for 'tag_types' property.
# 
# @param tag_types  - New value for the field.
# Identifiers that tag types must have to match the filter. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_tag_types {
   my ($self, %args) = @_;
   $self->{'tag_types'} = $args{'tag_types'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Compute::Policies::TagUsage service
#########################################################################################
