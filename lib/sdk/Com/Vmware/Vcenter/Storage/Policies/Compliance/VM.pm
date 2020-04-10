########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file VM.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Storage::Policies::Compliance::VM
# The  ``Com::Vmware::Vcenter::Storage::Policies::Compliance::VM``   *class*  provides 
#     *methods*  related to query virtual machines of given compliance statuses. This 
#     *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Storage::Policies::Compliance::VM;

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
use Com::Vmware::Vcenter::Storage::Policies::Compliance::VMStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.storage.policies.compliance.VM';


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
# Returns compliance information about at most 1000 virtual machines matching the filter 
# class Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec . If there are
# no virtual machines matching the  class
# Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec  an empty List is
# returned. Virtual machines without storage policy association are not returned. This 
# *method*  was added in vSphere API 6.7.
#
# @param filter [REQUIRED] compliance status of matching virtual machines for which information should be
#     returned.
# . The value must be Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec.
#
# @retval 
# compliance information about virtual machines matching the filter  class
#     Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec .
# The value will be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# The return type will be Dictionary of str and
# Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the 
#     :attr:`Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec.status`  
#     *field*  contains a value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have the required privileges.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the API is invoked against vCenter Server version is less than 6.5
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# If more than 1000 results match the  class
#     Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec 
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
# Begins enumerations for the Com::Vmware::Vcenter::Storage::Policies::Compliance::VM service
#########################################################################################

## @class Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status
#
# The {@Status}  *enumerated type*  defines he valid compliance status values for a
#     virtual machine or virtual disk. This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status::COMPLIANT #
#The virtual machine or virtual disk is in compliance. This  *constant*  was added in
# vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status::NON_COMPLIANT #
#The virtual machine or virtual disk is in not in compliance. This  *constant*  was added
# in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status::UNKNOWN_COMPLIANCE #
#Compliance status of the virtual machine or virtual disk is not known. This  *constant* 
# was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status::NOT_APPLICABLE #
#Compliance computation is not applicable for this virtual machine or disk because it does
# not have any storage requirement that apply to the object-based datastore on which the
# entity is placed. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status::OUT_OF_DATE #
#Compliance status becomes out of date when the profile associated with the virtual machine
# or disk is edited and not applied. The compliance status will remain out of date until the
# latest policy is applied. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status;

use constant {
    COMPLIANT =>  'COMPLIANT',
    NON_COMPLIANT =>  'NON_COMPLIANT',
    UNKNOWN_COMPLIANCE =>  'UNKNOWN_COMPLIANCE',
    NOT_APPLICABLE =>  'NOT_APPLICABLE',
    OUT_OF_DATE =>  'OUT_OF_DATE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.storage.policies.compliance.VM.status',
                           'binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Storage::Policies::Compliance::VM service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Storage::Policies::Compliance::VM service
#########################################################################################

## @class Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Info
#
#
# Provides the compliance details of a virtual machine and its associated entities which
#     match the given compliance statuses. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_home} = $args{'vm_home'};
   $self->{disks} = $args{'disks'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.compliance.VM.info');
   $self->set_binding_field('key' => 'vm_home', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance', 'type_name' => 'VM::Status')));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance', 'type_name' => 'VM::Status')}))));
   bless $self, $class;
   return $self;
}

## @method get_vm_home ()
# Gets the value of 'vm_home' property.
#
# @retval vm_home - The current value of the field.
# Compliance status of the virtual machine home. This  *field*  was added in vSphere API
#     6.7.
#
# Optional#
sub get_vm_home {
   my ($self, %args) = @_;
   return $self->{'vm_home'}; 	
}

## @method set_vm_home ()
# Sets the given value for 'vm_home' property.
# 
# @param vm_home  - New value for the field.
# Compliance status of the virtual machine home. This  *field*  was added in vSphere API
#     6.7.
#
sub set_vm_home {
   my ($self, %args) = @_;
   $self->{'vm_home'} = $args{'vm_home'}; 
   return;	
}

## @method get_disks ()
# Gets the value of 'disks' property.
#
# @retval disks - The current value of the field.
# A Map of virtual disks and their compliance status If empty, the virtual machine does
#     not have any disks or its disks are not associated with a storage policy. This 
#     *field*  was added in vSphere API 6.7.
#
# Map#
sub get_disks {
   my ($self, %args) = @_;
   return $self->{'disks'}; 	
}

## @method set_disks ()
# Sets the given value for 'disks' property.
# 
# @param disks  - New value for the field.
# A Map of virtual disks and their compliance status If empty, the virtual machine does
#     not have any disks or its disks are not associated with a storage policy. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec``   *class*
#     contains  *Status*  used to filter the results when listing virtual machines (see 
#     :func:`Com::Vmware::Vcenter::Storage::Policies::Compliance::VM.list` ). This  *class* 
#     was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{vms} = $args{'vms'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance::VM::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.compliance.VM.filter_spec');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance', 'type_name' => 'VM::Status'))));
   $self->set_binding_field('key' => 'vms', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Compliance Status that a virtual machine must have to match the filter. Atleast one
#     status must be specified. This  *field*  was added in vSphere API 6.7.
#
# Set#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Compliance Status that a virtual machine must have to match the filter. Atleast one
#     status must be specified. This  *field*  was added in vSphere API 6.7.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_vms ()
# Gets the value of 'vms' property.
#
# @retval vms - The current value of the field.
# Identifiers of virtual machines that can match the filter. This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_vms {
   my ($self, %args) = @_;
   return $self->{'vms'}; 	
}

## @method set_vms ()
# Sets the given value for 'vms' property.
# 
# @param vms  - New value for the field.
# Identifiers of virtual machines that can match the filter. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_vms {
   my ($self, %args) = @_;
   $self->{'vms'} = $args{'vms'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Storage::Policies::Compliance::VM service
#########################################################################################
