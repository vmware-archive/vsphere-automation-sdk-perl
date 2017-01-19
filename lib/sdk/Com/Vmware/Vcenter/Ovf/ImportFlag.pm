########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ImportFlag.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Ovf::ImportFlag
# The  ``Com::Vmware::Vcenter::Ovf::ImportFlag``   *interface*  provides  *methods*  for
#     retrieving information about the import flags supported by the deployment platform.
#     Import flags can be specified in a  class
#     Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec  to customize an
#     OVF deployment.
#

package Com::Vmware::Vcenter::Ovf::ImportFlag;

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
use Com::Vmware::Vcenter::Ovf::ImportFlagStub;

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
# Returns information about the import flags supported by the deployment platform. <p>
# 
#  The supported flags are: </p>
# 
# 
# <dl>
#      <dt>LAX</dt>
#          <dd>Lax mode parsing of the OVF descriptor.</dd>
#  </dl> <p>
# 
#  Future server versions might support additional flags.</p>
#
# @param rp [REQUIRED]  The identifier of resource pool target for retrieving the import flag(s).
# The value must be an identifier for the resource type getQualifiedName(ResourcePool).
# . The value must be str.
#
# @retval 
# A  *list*  of supported import flags.
# The return type will be Array of Com::Vmware::Vcenter::Ovf::ImportFlag::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  If the resource pool associated with  ``rp``  does not exist.
#

sub list {
   my ($self, %args) = @_;
   my $rp = $args {rp};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Ovf::ImportFlag service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Ovf::ImportFlag service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Ovf::ImportFlag service
#########################################################################################

## @class Com::Vmware::Vcenter::Ovf::ImportFlag::Info
#
#
# The  ``Com::Vmware::Vcenter::Ovf::ImportFlag::Info``   *class*  describes an import
#     flag supported by the deployment platform.

package Com::Vmware::Vcenter::Ovf::ImportFlag::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ImportFlag::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{option} = $args{'option'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::ImportFlag::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.import_flag.info');
   $self->set_binding_field('key' => 'option', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_option ()
# Gets the value of 'option' property.
#
# @retval option - The current value of the field.
# The name of the import flag that is supported by the deployment platform.
#
# String#
sub get_option {
   my ($self, %args) = @_;
   return $self->{'option'}; 	
}

## @method set_option ()
# Sets the given value for 'option' property.
# 
# @param option  - New value for the field.
# The name of the import flag that is supported by the deployment platform.
#
sub set_option {
   my ($self, %args) = @_;
   $self->{'option'} = $args{'option'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Localizable description of the import flag.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Localizable description of the import flag.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Ovf::ImportFlag service
#########################################################################################
