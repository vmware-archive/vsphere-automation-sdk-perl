## @class Com::Vmware::Vcenter::Lcm::DeploymentOption
#
#
# Container to control deployment.

package Com::Vmware::Vcenter::Lcm::DeploymentOption;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::DeploymentOption structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{skip_options} = $args{'skip_options'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::DeploymentOption');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.deployment_option');
   $self->set_binding_field('key' => 'skip_options', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'DeploymentOption::SkipOptions'), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::BooleanType()}))));
   bless $self, $class;
   return $self;
}

## @method get_skip_options ()
# Gets the value of 'skip_options' property.
#
# @retval skip_options - The current value of the field.
# The options control if a task should be skipped.
#
# Map#
sub get_skip_options {
   my ($self, %args) = @_;
   return $self->{'skip_options'}; 	
}

## @method set_skip_options ()
# Sets the given value for 'skip_options' property.
# 
# @param skip_options  - New value for the field.
# The options control if a task should be skipped.
#
sub set_skip_options {
   my ($self, %args) = @_;
   $self->{'skip_options'} = $args{'skip_options'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::DeploymentOption::SkipOptions
#
# Skippable tasks.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::DeploymentOption::SkipOptions::SKIP_SSO_CHECK #
#Skips the sso check. This should only be used when performing precheck for install/upgrade
# of management node before infrastructure node is deployed.

package Com::Vmware::Vcenter::Lcm::DeploymentOption::SkipOptions;

use constant {
    SKIP_SSO_CHECK =>  'SKIP_SSO_CHECK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::DeploymentOption::SkipOptions enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.deployment_option.skip_options',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::DeploymentOption::SkipOptions');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


