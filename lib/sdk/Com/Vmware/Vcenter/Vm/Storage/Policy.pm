########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Policy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Storage::Policy
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy``   *interface*  provides  *methods* 
#     to configure the storage policies associated with the virtual machine home and/or its
#     virtual disks. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Vm::Storage::Policy;

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
use Com::Vmware::Vcenter::Vm::Storage::PolicyStub;

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

## @method update ()
# Updates the storage policy configuration of a virtual machine and/or its associated
# virtual hard disks. This  *method*  was added in vSphere API 6.7.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Storage Policy Specification for updating the virtual machine and virtual disks.
# . The value must be Com::Vmware::Vcenter::Vm::Storage::Policy::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required priveleges.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the storage policy specified is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine or disk is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine or disk&apos;s configuration state cannot be accessed.
#

sub update {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method get ()
# Returns Information about Storage Policy associated with a virtual machine&apos;s home
# directory and/or its virtual hard disks. This  *method*  was added in vSphere API 6.7.
#
# @param vm [REQUIRED] Virtual machine identifier
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Overview of Storage Policy associated with a virtual machine&apos;s home directory
#     and/or its associated virtual hard disks.
# The return type will be Com::Vmware::Vcenter::Vm::Storage::Policy::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
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
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Storage::Policy service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Storage::Policy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Storage::Policy service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec``   *class* 
#     provides a specification for the storage policy to be associated with the virtual
#     machine home&apos;s directory. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'USE_SPECIFIED_POLICY' => ['policy'],
               'USE_DEFAULT_POLICY' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{policy} = $args{'policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.storage.policy.vm_home_policy_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage', 'type_name' => 'Policy::VmHomePolicySpec::PolicyType'));
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Policy type to be used while performing update operation on the virtual machine
#     home&apos;s directory. This  *field*  was added in vSphere API 6.7.
#
# PolicyType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Policy type to be used while performing update operation on the virtual machine
#     home&apos;s directory. This  *field*  was added in vSphere API 6.7.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Storage Policy identification. This  *field*  was added in vSphere API 6.7.
#
# optional#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Storage Policy identification. This  *field*  was added in vSphere API 6.7.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec::PolicyType
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec::PolicyType``  
#     *enumerated type*  defines the choices for how to specify the policy to be associated
#     with the virtual machine home&apos;s directory. This  *enumeration*  was added in
#     vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec::PolicyType::USE_SPECIFIED_POLICY #
#Use the specified policy (see 
# :attr:`Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec.policy` ). This 
# *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec::PolicyType::USE_DEFAULT_POLICY #
#Use the default storage policy of the datastore. This  *constant*  was added in vSphere
# API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec::PolicyType;

use constant {
    USE_SPECIFIED_POLICY =>  'USE_SPECIFIED_POLICY',
    USE_DEFAULT_POLICY =>  'USE_DEFAULT_POLICY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec::PolicyType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.storage.policy.vm_home_policy_spec.policy_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::VmHomePolicySpec::PolicyType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec``   *class*  provides
#     a specification for the storage policy to be associated with the virtual disks. This 
#     *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'USE_SPECIFIED_POLICY' => ['policy'],
               'USE_DEFAULT_POLICY' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{policy} = $args{'policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.storage.policy.disk_policy_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage', 'type_name' => 'Policy::DiskPolicySpec::PolicyType'));
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Policy type to be used while performing update operation on the virtual disks. This 
#     *field*  was added in vSphere API 6.7.
#
# PolicyType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Policy type to be used while performing update operation on the virtual disks. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Storage Policy identification. This  *field*  was added in vSphere API 6.7.
#
# optional#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Storage Policy identification. This  *field*  was added in vSphere API 6.7.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec::PolicyType
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec``   *enumerated type*
#     defines the choices for how to specify the policy to be associated with a virtual
#     disk. This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec::PolicyType::USE_SPECIFIED_POLICY #
#Use the specified policy (see 
# :attr:`Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec.policy` ). This 
# *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec::PolicyType::USE_DEFAULT_POLICY #
#Use the default storage policy of the datastore. This  *constant*  was added in vSphere
# API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec::PolicyType;

use constant {
    USE_SPECIFIED_POLICY =>  'USE_SPECIFIED_POLICY',
    USE_DEFAULT_POLICY =>  'USE_DEFAULT_POLICY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec::PolicyType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.storage.policy.disk_policy_spec.policy_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::DiskPolicySpec::PolicyType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Vm::Storage::Policy::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::UpdateSpec``   *class*  describes
#     the updates to be made to the storage policies associated with the virtual machine
#     home and/or its virtual disks. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::UpdateSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.storage.policy.update_spec');
   $self->set_binding_field('key' => 'vm_home', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage', 'type_name' => 'Policy::VmHomePolicySpec')));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Storage', 'type_name' => 'Policy::DiskPolicySpec')})))));
   bless $self, $class;
   return $self;
}

## @method get_vm_home ()
# Gets the value of 'vm_home' property.
#
# @retval vm_home - The current value of the field.
# Storage policy to be used when reconfiguring the virtual machine home. This  *field* 
#     was added in vSphere API 6.7.
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
# Storage policy to be used when reconfiguring the virtual machine home. This  *field* 
#     was added in vSphere API 6.7.
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
# Storage policy or policies to be used when reconfiguring virtual machine diks. This 
#     *field*  was added in vSphere API 6.7.
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
# Storage policy or policies to be used when reconfiguring virtual machine diks. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Storage::Policy::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Storage::Policy::Info``   *class*  contains
#     information about the storage policies associated with virtual machine&apos;s home
#     directory and virtual hard disks. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Storage::Policy::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Storage::Policy::Info structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Storage::Policy::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.storage.policy.info');
   $self->set_binding_field('key' => 'vm_home', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::StringType()}))));
   bless $self, $class;
   return $self;
}

## @method get_vm_home ()
# Gets the value of 'vm_home' property.
#
# @retval vm_home - The current value of the field.
# Storage Policy associated with virtual machine home. This  *field*  was added in
#     vSphere API 6.7.
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
# Storage Policy associated with virtual machine home. This  *field*  was added in
#     vSphere API 6.7.
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
# Storage policies associated with virtual disks. The values in this  *map*  are storage
#     policy identifiers. They will be identifiers for the resource
#     type:com.vmware.vcenter.StoragePolicy If the  *map*  is empty, the virtual machine
#     does not have any disks or its disks are not associated with a storage policy. This 
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
# Storage policies associated with virtual disks. The values in this  *map*  are storage
#     policy identifiers. They will be identifiers for the resource
#     type:com.vmware.vcenter.StoragePolicy If the  *map*  is empty, the virtual machine
#     does not have any disks or its disks are not associated with a storage policy. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Storage::Policy service
#########################################################################################
