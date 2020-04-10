########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Compliance.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance
# The  *Compliance*   *interface*  provides  *methods*  that return the compliance
#     status of virtual machine entities(virtual machine home directory and virtual disks)
#     that specify storage policy requirements. This  *interface*  was added in vSphere API
#     6.7.
#

package Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance;

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
use Com::Vmware::Vcenter::Vm::Storage::Policy::ComplianceStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.storage.policy.compliance';


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
# Returns the cached storage policy compliance information of a virtual machine. This 
# *method*  was added in vSphere API 6.7.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Virtual machine storage policy compliance Info  class
#     Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info .
# If  *null* , neither the virtual machine home directory nor any of it&apos;s virtual
#     disks are associated with a storage policy.
# The return type will be Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info or
# None
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have the required privileges.
#
sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method check ()
# Returns the storage policy Compliance  class
# Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info  of a virtual machine after
# explicitly re-computing compliance check. This  *method*  was added in vSphere API 6.7.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param check_spec [OPTIONAL] Parameter specifies the entities on which storage policy compliance check is to be
#     invoked. The storage compliance Info  class
#     Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info  is returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::CheckSpec  with 
#     *CheckSpec#vmHome*  set to true and  *CheckSpec#disks*  populated with all disks
#     attached to the virtual machine.
# . The value must be Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::CheckSpec or
# None.
#
# @retval 
# Virtual machine storage policy compliance 
#     ``Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info``   *class*  .
# If  *null* , neither the virtual machine home directory nor any of it&apos;s virtual
#     disks are associated with a storage policy.
# The return type will be Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info or
# None
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service necessary to complete the
#     request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have the required privileges.
#
sub check {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $check_spec = $args {check_spec};

   $self->validate_args (method_name => 'check',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status``   *enumerated
#     type*  defines the storage compliance status of a virtual machine and its applicable
#     entities. This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status::COMPLIANT #
#Entity is in compliance. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status::NON_COMPLIANT #
#Entity is out of compliance. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status::UNKNOWN_COMPLIANCE #
#Compliance status of the entity is not known. This  *constant*  was added in vSphere API
# 6.7.
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status::NOT_APPLICABLE #
#Compliance computation is not applicable for this entity because it does not have any
# storage requirements that apply to the datastore on which it is placed. This  *constant* 
# was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status::OUT_OF_DATE #
#The Compliance status becomes out-of-date when the profile associated with the entity is
# edited but not applied. The compliance status remains out-of-date until the edited policy
# is applied to the entity. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status;

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
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.storage.policy.compliance.status',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo``  
#     *class*  contains information about storage policy compliance associated with a
#     virtual machine. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo structure
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
   $self->{check_time} = $args{'check_time'};
   $self->{policy} = $args{'policy'};
   $self->{failure_cause} = $args{'failure_cause'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.storage.policy.compliance.vm_compliance_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage::Policy', 'type_name' => 'Compliance::Status'));
   $self->set_binding_field('key' => 'check_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'failure_cause', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the compliance operation. This  *field*  was added in vSphere API 6.7.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the compliance operation. This  *field*  was added in vSphere API 6.7.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_check_time ()
# Gets the value of 'check_time' property.
#
# @retval check_time - The current value of the field.
# Date and time of the most recent compliance check. This  *field*  was added in vSphere
#     API 6.7.
#
# DateTime#
sub get_check_time {
   my ($self, %args) = @_;
   return $self->{'check_time'}; 	
}

## @method set_check_time ()
# Sets the given value for 'check_time' property.
# 
# @param check_time  - New value for the field.
# Date and time of the most recent compliance check. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_check_time {
   my ($self, %args) = @_;
   $self->{'check_time'} = $args{'check_time'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the storage policy associated with the virtual machine. This  *field* 
#     was added in vSphere API 6.7.
#
# Optional#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier of the storage policy associated with the virtual machine. This  *field* 
#     was added in vSphere API 6.7.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_failure_cause ()
# Gets the value of 'failure_cause' property.
#
# @retval failure_cause - The current value of the field.
# The exception that caused the compliance check to fail. There can be more than one
#     cause, since a policy can contain capabilities from multiple providers. If empty, it
#     implies no failures while retrieving compliance. This  *field*  was added in vSphere
#     API 6.7.
#
# List#
sub get_failure_cause {
   my ($self, %args) = @_;
   return $self->{'failure_cause'}; 	
}

## @method set_failure_cause ()
# Sets the given value for 'failure_cause' property.
# 
# @param failure_cause  - New value for the field.
# The exception that caused the compliance check to fail. There can be more than one
#     cause, since a policy can contain capabilities from multiple providers. If empty, it
#     implies no failures while retrieving compliance. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_failure_cause {
   my ($self, %args) = @_;
   $self->{'failure_cause'} = $args{'failure_cause'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info``   *class* 
#     contains information about the storage policy compliance of a virtual machine,
#     including information about it&apos;s home directory and/or it&apos;s virtual disks.
#     This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{overall_compliance} = $args{'overall_compliance'};
   $self->{vm_home} = $args{'vm_home'};
   $self->{disks} = $args{'disks'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.storage.policy.compliance.info');
   $self->set_binding_field('key' => 'overall_compliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage::Policy', 'type_name' => 'Compliance::Status'));
   $self->set_binding_field('key' => 'vm_home', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage::Policy', 'type_name' => 'Compliance::VmComplianceInfo')));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage::Policy', 'type_name' => 'Compliance::VmComplianceInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_overall_compliance ()
# Gets the value of 'overall_compliance' property.
#
# @retval overall_compliance - The current value of the field.
# The overall compliance status of the virtual machine and all it&apos;s entities. This 
#     *field*  was added in vSphere API 6.7.
#
# Status#
sub get_overall_compliance {
   my ($self, %args) = @_;
   return $self->{'overall_compliance'}; 	
}

## @method set_overall_compliance ()
# Sets the given value for 'overall_compliance' property.
# 
# @param overall_compliance  - New value for the field.
# The overall compliance status of the virtual machine and all it&apos;s entities. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_overall_compliance {
   my ($self, %args) = @_;
   $self->{'overall_compliance'} = $args{'overall_compliance'}; 
   return;	
}

## @method get_vm_home ()
# Gets the value of 'vm_home' property.
#
# @retval vm_home - The current value of the field.
# The storage policy compliance information  class
#     Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo  for the
#     virtual machine&apos;s home directory. This  *field*  was added in vSphere API 6.7.
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
# The storage policy compliance information  class
#     Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo  for the
#     virtual machine&apos;s home directory. This  *field*  was added in vSphere API 6.7.
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
# The compliance information  class
#     Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo  for the
#     virtual machine&apos;s virtual disks that are currently associated with a storage
#     policy. This  *field*  was added in vSphere API 6.7.
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
# The compliance information  class
#     Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::VmComplianceInfo  for the
#     virtual machine&apos;s virtual disks that are currently associated with a storage
#     policy. This  *field*  was added in vSphere API 6.7.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::CheckSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::CheckSpec``   *class* 
#     contains  *fields*  used to specify the entities on which the storage policy
#     compliance check is to be invoked. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::CheckSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::CheckSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance::CheckSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.storage.policy.compliance.check_spec');
   $self->set_binding_field('key' => 'vm_home', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_vm_home ()
# Gets the value of 'vm_home' property.
#
# @retval vm_home - The current value of the field.
# Invoke compliance check on the virtual machine home directory if set to true. This 
#     *field*  was added in vSphere API 6.7.
#
# boolean#
sub get_vm_home {
   my ($self, %args) = @_;
   return $self->{'vm_home'}; 	
}

## @method set_vm_home ()
# Sets the given value for 'vm_home' property.
# 
# @param vm_home  - New value for the field.
# Invoke compliance check on the virtual machine home directory if set to true. This 
#     *field*  was added in vSphere API 6.7.
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
# Identifiers of the virtual machine&apos;s virtual disks for which compliance should be
#     checked. This  *field*  was added in vSphere API 6.7.
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
# Identifiers of the virtual machine&apos;s virtual disks for which compliance should be
#     checked. This  *field*  was added in vSphere API 6.7.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Storage::Policy::Compliance service
#########################################################################################
