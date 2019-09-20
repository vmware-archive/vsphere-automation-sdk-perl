########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LibraryItem.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::LibraryItem
# The  ``Com::Vmware::Vcenter::Vm::LibraryItem``   *interface*  provides  *methods*  to
#     identify virtual machines managed by Content Library. This  *interface*  was added in
#     vSphere API 6.9.1.
#

package Com::Vmware::Vcenter::Vm::LibraryItem;

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
use Com::Vmware::Vcenter::Vm::LibraryItemStub;

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

## @method get ()
# Returns the information about the library item associated with the virtual machine. This 
# *method*  was added in vSphere API 6.9.1.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Information about the library item associated with the virtual machine.
# The return type will be Com::Vmware::Vcenter::Vm::LibraryItem::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user that requested the  *method*  is not authorized to perform the  *method* .
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
# Begins enumerations for the Com::Vmware::Vcenter::Vm::LibraryItem service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::LibraryItem service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::LibraryItem service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::LibraryItem::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::LibraryItem::Info``   *class*  contains information
#     about the library item associated with a virtual machine. This  *class*  was added in
#     vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm::LibraryItem::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::LibraryItem::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{check_out} = $args{'check_out'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::LibraryItem::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.library_item.info');
   $self->set_binding_field('key' => 'check_out', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'LibraryItem::CheckOutInfo')));
   bless $self, $class;
   return $self;
}

## @method get_check_out ()
# Gets the value of 'check_out' property.
#
# @retval check_out - The current value of the field.
# Information about the checked out virtual machine. This  *field*  was added in vSphere
#     API 6.9.1.
#
# Optional#
sub get_check_out {
   my ($self, %args) = @_;
   return $self->{'check_out'}; 	
}

## @method set_check_out ()
# Sets the given value for 'check_out' property.
# 
# @param check_out  - New value for the field.
# Information about the checked out virtual machine. This  *field*  was added in vSphere
#     API 6.9.1.
#
sub set_check_out {
   my ($self, %args) = @_;
   $self->{'check_out'} = $args{'check_out'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::LibraryItem::CheckOutInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::LibraryItem::CheckOutInfo``   *class*  contains
#     information about a virtual machine checked out of a content library item. This 
#     *class*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm::LibraryItem::CheckOutInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::LibraryItem::CheckOutInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{library_item} = $args{'library_item'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::LibraryItem::CheckOutInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.library_item.check_out_info');
   $self->set_binding_field('key' => 'library_item', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_library_item ()
# Gets the value of 'library_item' property.
#
# @retval library_item - The current value of the field.
# Identifier of the library item that the virtual machine is checked out from. This 
#     *field*  was added in vSphere API 6.9.1.
#
# ID#
sub get_library_item {
   my ($self, %args) = @_;
   return $self->{'library_item'}; 	
}

## @method set_library_item ()
# Sets the given value for 'library_item' property.
# 
# @param library_item  - New value for the field.
# Identifier of the library item that the virtual machine is checked out from. This 
#     *field*  was added in vSphere API 6.9.1.
#
sub set_library_item {
   my ($self, %args) = @_;
   $self->{'library_item'} = $args{'library_item'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::LibraryItem service
#########################################################################################
