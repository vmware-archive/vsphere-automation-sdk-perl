########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ExportFlag.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Ovf::ExportFlag
# The  ``Com::Vmware::Vcenter::Ovf::ExportFlag``   *interface*  provides  *methods*  for
#     retrieving information about the export flags supported by the server. Export flags
#     can be specified in a  class Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec  to
#     customize an OVF export.
#

package Com::Vmware::Vcenter::Ovf::ExportFlag;

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
use Com::Vmware::Vcenter::Ovf::ExportFlagStub;

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
# Returns information about the supported export flags by the server. <p>
# 
#  The supported flags are: </p>
# 
# 
# <dl>
#      <dt>PRESERVE_MAC</dt>
#          <dd>Include MAC addresses for network adapters.</dd>
#      <dt>EXTRA_CONFIG</dt>
#          <dd>Include extra configuration in OVF export.</dd>
#  </dl> <p>
# 
#  Future server versions might support additional flags.</p>
#
# @retval 
# A  *list*  of supported export flags.
# The return type will be Array of Com::Vmware::Vcenter::Ovf::ExportFlag::Info
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Ovf::ExportFlag service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Ovf::ExportFlag service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Ovf::ExportFlag service
#########################################################################################

## @class Com::Vmware::Vcenter::Ovf::ExportFlag::Info
#
#
# The  ``Com::Vmware::Vcenter::Ovf::ExportFlag::Info``   *class*  describes an export
#     flag supported by the server.

package Com::Vmware::Vcenter::Ovf::ExportFlag::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ExportFlag::Info structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::ExportFlag::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.export_flag.info');
   $self->set_binding_field('key' => 'option', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_option ()
# Gets the value of 'option' property.
#
# @retval option - The current value of the field.
# The name of the export flag that is supported by the server.
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
# The name of the export flag that is supported by the server.
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
# Localizable description of the export flag.
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
# Localizable description of the export flag.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Ovf::ExportFlag service
#########################################################################################
