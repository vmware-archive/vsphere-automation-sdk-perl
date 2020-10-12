########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Effective.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective
# The  ``Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective``  
#     *interface*  provides  *methods*  to manage the effective policies that will impact
#     how the software and configuration specification documents are applied to ESXi
#     clusters.
#

package Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective;

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
use Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::EffectiveStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.defaults.clusters.policies.apply.effective';


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
# Returns the effective apply policy based on system defaults and what has been configured.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @retval 
# The effective policies that impact the apply  *method* 
# The return type will be
# Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is an unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction``
#     *class*  contains  *fields*  that describe the actions to be taken when entering
#     maintenance mode fails on a single host within the cluster.

package Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction structure
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
         'discriminant_name' => 'action',
         'case_map' => {
               'RETRY' => ['retry_delay', 'retry_count'],
               'FAIL' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{action} = $args{'action'};
   $self->{retry_delay} = $args{'retry_delay'};
   $self->{retry_count} = $args{'retry_count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.defaults.clusters.policies.apply.effective.failure_action');
   $self->set_binding_field('key' => 'action', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply', 'type_name' => 'Effective::FailureAction::Action'));
   $self->set_binding_field('key' => 'retry_delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'retry_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_action ()
# Gets the value of 'action' property.
#
# @retval action - The current value of the field.
# What action (FAIL, RETRY) is to be taken if entering maintenance mode fails on a
#     single host within the cluster.
#
# Action#
sub get_action {
   my ($self, %args) = @_;
   return $self->{'action'}; 	
}

## @method set_action ()
# Sets the given value for 'action' property.
# 
# @param action  - New value for the field.
# What action (FAIL, RETRY) is to be taken if entering maintenance mode fails on a
#     single host within the cluster.
#
sub set_action {
   my ($self, %args) = @_;
   $self->{'action'} = $args{'action'}; 
   return;	
}

## @method get_retry_delay ()
# Gets the value of 'retry_delay' property.
#
# @retval retry_delay - The current value of the field.
# Time to wait to retry the failed operation in seconds.
#
# optional#
sub get_retry_delay {
   my ($self, %args) = @_;
   return $self->{'retry_delay'}; 	
}

## @method set_retry_delay ()
# Sets the given value for 'retry_delay' property.
# 
# @param retry_delay  - New value for the field.
# Time to wait to retry the failed operation in seconds.
#
sub set_retry_delay {
   my ($self, %args) = @_;
   $self->{'retry_delay'} = $args{'retry_delay'}; 
   return;	
}

## @method get_retry_count ()
# Gets the value of 'retry_count' property.
#
# @retval retry_count - The current value of the field.
# Number of times to retry the failed operation.
#
# optional#
sub get_retry_count {
   my ($self, %args) = @_;
   return $self->{'retry_count'}; 	
}

## @method set_retry_count ()
# Sets the given value for 'retry_count' property.
# 
# @param retry_count  - New value for the field.
# Number of times to retry the failed operation.
#
sub set_retry_count {
   my ($self, %args) = @_;
   $self->{'retry_count'} = $args{'retry_count'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction::Action
#
# The 
#     ``Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction::Action``
#     *enumerated type*  defines the actions to be taken when entering maintenance mode
#     fails on a single host within the cluster.
#
#
#
# Constant Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction::Action::FAIL #
#Fail the apply  *method* 
#
# Constant Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction::Action::RETRY #
#Retry the task null number of times on the failed host after null.

package Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction::Action;

use constant {
    FAIL =>  'FAIL',
    RETRY =>  'RETRY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction::Action enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.defaults.clusters.policies.apply.effective.failure_action.action',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::FailureAction::Action');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec``
#     *class*  contains  *fields*  that describe the effective policies to be used when the
#     software and configuration specification documents are applied to ESXi clusters.

package Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{failure_action} = $args{'failure_action'};
   $self->{pre_remediation_power_action} = $args{'pre_remediation_power_action'};
   $self->{enable_quick_boot} = $args{'enable_quick_boot'};
   $self->{disable_dpm} = $args{'disable_dpm'};
   $self->{disable_hac} = $args{'disable_hac'};
   $self->{evacuate_offline_vms} = $args{'evacuate_offline_vms'};
   $self->{enforce_hcl_validation} = $args{'enforce_hcl_validation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.defaults.clusters.policies.apply.effective.effective_policy_spec');
   $self->set_binding_field('key' => 'failure_action', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply', 'type_name' => 'Effective::FailureAction'));
   $self->set_binding_field('key' => 'pre_remediation_power_action', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply', 'type_name' => 'Effective::EffectivePolicySpec::PreRemediationPowerAction'));
   $self->set_binding_field('key' => 'enable_quick_boot', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'disable_dpm', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'disable_hac', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'evacuate_offline_vms', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'enforce_hcl_validation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_failure_action ()
# Gets the value of 'failure_action' property.
#
# @retval failure_action - The current value of the field.
# What action is to be taken if entering maintenance mode fails on a given host of the
#     cluster.
#
# FailureAction#
sub get_failure_action {
   my ($self, %args) = @_;
   return $self->{'failure_action'}; 	
}

## @method set_failure_action ()
# Sets the given value for 'failure_action' property.
# 
# @param failure_action  - New value for the field.
# What action is to be taken if entering maintenance mode fails on a given host of the
#     cluster.
#
sub set_failure_action {
   my ($self, %args) = @_;
   $self->{'failure_action'} = $args{'failure_action'}; 
   return;	
}

## @method get_pre_remediation_power_action ()
# Gets the value of 'pre_remediation_power_action' property.
#
# @retval pre_remediation_power_action - The current value of the field.
# Specifies what should be done to the power state of the VM before entering maintenance
#     mode.
#
# PreRemediationPowerAction#
sub get_pre_remediation_power_action {
   my ($self, %args) = @_;
   return $self->{'pre_remediation_power_action'}; 	
}

## @method set_pre_remediation_power_action ()
# Sets the given value for 'pre_remediation_power_action' property.
# 
# @param pre_remediation_power_action  - New value for the field.
# Specifies what should be done to the power state of the VM before entering maintenance
#     mode.
#
sub set_pre_remediation_power_action {
   my ($self, %args) = @_;
   $self->{'pre_remediation_power_action'} = $args{'pre_remediation_power_action'}; 
   return;	
}

## @method get_enable_quick_boot ()
# Gets the value of 'enable_quick_boot' property.
#
# @retval enable_quick_boot - The current value of the field.
# Enable Quick Boot during remediation in the cluster.
#
# boolean#
sub get_enable_quick_boot {
   my ($self, %args) = @_;
   return $self->{'enable_quick_boot'}; 	
}

## @method set_enable_quick_boot ()
# Sets the given value for 'enable_quick_boot' property.
# 
# @param enable_quick_boot  - New value for the field.
# Enable Quick Boot during remediation in the cluster.
#
sub set_enable_quick_boot {
   my ($self, %args) = @_;
   $self->{'enable_quick_boot'} = $args{'enable_quick_boot'}; 
   return;	
}

## @method get_disable_dpm ()
# Gets the value of 'disable_dpm' property.
#
# @retval disable_dpm - The current value of the field.
# Disable DPM on the cluster.
#
# boolean#
sub get_disable_dpm {
   my ($self, %args) = @_;
   return $self->{'disable_dpm'}; 	
}

## @method set_disable_dpm ()
# Sets the given value for 'disable_dpm' property.
# 
# @param disable_dpm  - New value for the field.
# Disable DPM on the cluster.
#
sub set_disable_dpm {
   my ($self, %args) = @_;
   $self->{'disable_dpm'} = $args{'disable_dpm'}; 
   return;	
}

## @method get_disable_hac ()
# Gets the value of 'disable_hac' property.
#
# @retval disable_hac - The current value of the field.
# Disable HA Admission control on the cluster.
#
# boolean#
sub get_disable_hac {
   my ($self, %args) = @_;
   return $self->{'disable_hac'}; 	
}

## @method set_disable_hac ()
# Sets the given value for 'disable_hac' property.
# 
# @param disable_hac  - New value for the field.
# Disable HA Admission control on the cluster.
#
sub set_disable_hac {
   my ($self, %args) = @_;
   $self->{'disable_hac'} = $args{'disable_hac'}; 
   return;	
}

## @method get_evacuate_offline_vms ()
# Gets the value of 'evacuate_offline_vms' property.
#
# @retval evacuate_offline_vms - The current value of the field.
# Evacuate powered off/suspended VMs when attempting maintenance mode.
#
# boolean#
sub get_evacuate_offline_vms {
   my ($self, %args) = @_;
   return $self->{'evacuate_offline_vms'}; 	
}

## @method set_evacuate_offline_vms ()
# Sets the given value for 'evacuate_offline_vms' property.
# 
# @param evacuate_offline_vms  - New value for the field.
# Evacuate powered off/suspended VMs when attempting maintenance mode.
#
sub set_evacuate_offline_vms {
   my ($self, %args) = @_;
   $self->{'evacuate_offline_vms'} = $args{'evacuate_offline_vms'}; 
   return;	
}

## @method get_enforce_hcl_validation ()
# Gets the value of 'enforce_hcl_validation' property.
#
# @retval enforce_hcl_validation - The current value of the field.
# Enforce Hcl validation, when applicable, to prevent remediation if hardware
#     compatibility issues are found. This  *field*  was added in vSphere API 7.0.1.0.
#
# optional#
sub get_enforce_hcl_validation {
   my ($self, %args) = @_;
   return $self->{'enforce_hcl_validation'}; 	
}

## @method set_enforce_hcl_validation ()
# Sets the given value for 'enforce_hcl_validation' property.
# 
# @param enforce_hcl_validation  - New value for the field.
# Enforce Hcl validation, when applicable, to prevent remediation if hardware
#     compatibility issues are found. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_enforce_hcl_validation {
   my ($self, %args) = @_;
   $self->{'enforce_hcl_validation'} = $args{'enforce_hcl_validation'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction
#
# The 
#     ``Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction``
#     *enumerated type*  defines the possible actions to be taken, before entering
#     maintenance mode.
#
#
#
# Constant Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction::POWER_OFF_VMS #
#Power off VMs before entering maintenance mode.
#
# Constant Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction::SUSPEND_VMS #
#Suspend VMs before entering maintenance mode
#
# Constant Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction::DO_NOT_CHANGE_VMS_POWER_STATE #
#Do not change the VM power state

package Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction;

use constant {
    POWER_OFF_VMS =>  'POWER_OFF_VMS',
    SUSPEND_VMS =>  'SUSPEND_VMS',
    DO_NOT_CHANGE_VMS_POWER_STATE =>  'DO_NOT_CHANGE_VMS_POWER_STATE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.defaults.clusters.policies.apply.effective.effective_policy_spec.pre_remediation_power_action',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective::EffectivePolicySpec::PreRemediationPowerAction');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Defaults::Clusters::Policies::Apply::Effective service
#########################################################################################
