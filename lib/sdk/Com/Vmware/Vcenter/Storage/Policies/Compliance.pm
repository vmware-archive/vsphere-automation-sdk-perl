########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Compliance.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Storage::Policies::Compliance
# The  *Compliance*   *interface*  provides  *methods*  related to all the associated
#     entities of given compliance statuses. This  *interface*  was added in vSphere API 6.7
#

package Com::Vmware::Vcenter::Storage::Policies::Compliance;

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
use Com::Vmware::Vcenter::Storage::Policies::ComplianceStub;

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
# Returns compliance information about entities matching the filter  class
# Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec . Entities without storage
# policy association are not returned. This  *method*  was added in vSphere API 6.7
#
# @param filter [REQUIRED] compliance status of matching entities for which information should be returned.
# . The value must be Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec.
#
# @retval 
# compliance information about entities matching the filter  class
#     Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec .
# The return type will be Array of
# Com::Vmware::Vcenter::Storage::Policies::Compliance::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec.status`
#       *field*  contains a value that is not supported by the server.
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
# Begins enumerations for the Com::Vmware::Vcenter::Storage::Policies::Compliance service
#########################################################################################

## @class Com::Vmware::Vcenter::Storage::Policies::Compliance::Status
#
# This enumeration defines the set of status values for a compliance operation. This 
#     *enumeration*  was added in vSphere API 6.7
#
#
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::Status::COMPLIANT #
#Entity is in compliance. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::Status::NON_COMPLIANT #
#Entity is out of compliance. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::Status::UNKNOWN #
#Compliance status of the entity is not known. This  *constant*  was added in vSphere API
# 6.7
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::Status::NOT_APPLICABLE #
#Compliance computation is not applicable for this entity because it does not have any
# storage requirement that apply to the object-based datastore on which the entity is
# placed. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Storage::Policies::Compliance::Status::OUT_OF_DATE #
#Compliance status becomes out of date when the profile associated with the entity is
# edited and not applied. The compliance status will remain out of date until the latest
# policy is applied to the entity. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Vcenter::Storage::Policies::Compliance::Status;

use constant {
    COMPLIANT =>  'COMPLIANT',
    NON_COMPLIANT =>  'NON_COMPLIANT',
    UNKNOWN =>  'UNKNOWN',
    NOT_APPLICABLE =>  'NOT_APPLICABLE',
    OUT_OF_DATE =>  'OUT_OF_DATE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::Compliance::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.storage.policies.compliance.status',
                           'binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Storage::Policies::Compliance service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Storage::Policies::Compliance service
#########################################################################################

## @class Com::Vmware::Vcenter::Storage::Policies::Compliance::Summary
#
#
# Provides the details of a virtual machine and its associated entities which match the
#     given compliance statuses. This  *class*  was added in vSphere API 6.7

package Com::Vmware::Vcenter::Storage::Policies::Compliance::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::Compliance::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm} = $args{'vm'};
   $self->{vm_home} = $args{'vm_home'};
   $self->{disks} = $args{'disks'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.compliance.summary');
   $self->set_binding_field('key' => 'vm', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vm_home', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Storage::Policies', 'type_name' => 'Compliance::Status')));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Storage::Policies', 'type_name' => 'Compliance::Status')})))));
   bless $self, $class;
   return $self;
}

## @method get_vm ()
# Gets the value of 'vm' property.
#
# @retval vm - The current value of the field.
# Identifier of virtual machine. This  *field*  was added in vSphere API 6.7
#
# ID#
sub get_vm {
   my ($self, %args) = @_;
   return $self->{'vm'}; 	
}

## @method set_vm ()
# Sets the given value for 'vm' property.
# 
# @param vm  - New value for the field.
# Identifier of virtual machine. This  *field*  was added in vSphere API 6.7
#
sub set_vm {
   my ($self, %args) = @_;
   $self->{'vm'} = $args{'vm'}; 
   return;	
}

## @method get_vm_home ()
# Gets the value of 'vm_home' property.
#
# @retval vm_home - The current value of the field.
# Compliance status of the virtual machine home. This  *field*  was added in vSphere API
#     6.7
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
#     6.7
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
# List of the virtual hard disk. This  *field*  was added in vSphere API 6.7
#
# Optional#
sub get_disks {
   my ($self, %args) = @_;
   return $self->{'disks'}; 	
}

## @method set_disks ()
# Sets the given value for 'disks' property.
# 
# @param disks  - New value for the field.
# List of the virtual hard disk. This  *field*  was added in vSphere API 6.7
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec``   *class* 
#     contains  *complianceStatus*  used to filter the results when listing entities (see 
#     :func:`Com::Vmware::Vcenter::Storage::Policies::Compliance.list` ). This  *class*  was
#     added in vSphere API 6.7

package Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::Compliance::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.compliance.filter_spec');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Storage::Policies', 'type_name' => 'Compliance::Status'))));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Compliance Status that a virtual machine must have to match the filter. This  *field* 
#     was added in vSphere API 6.7
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
# Compliance Status that a virtual machine must have to match the filter. This  *field* 
#     was added in vSphere API 6.7
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Storage::Policies::Compliance service
#########################################################################################
