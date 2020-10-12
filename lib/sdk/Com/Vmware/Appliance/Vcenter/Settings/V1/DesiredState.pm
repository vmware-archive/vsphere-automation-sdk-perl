## @class Com::Vmware::Appliance::Vcenter::Settings::V1::DesiredState
#
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::DesiredState``   *class* 
#     defines the configuration about different components in vCenter. <b>Warning:</b> This 
#     *class*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::DesiredState;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::DesiredState structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{appliance} = $args{'appliance'};
   $self->{authmgmt} = $args{'authmgmt'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::DesiredState');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.desired_state');
   $self->set_binding_field('key' => 'appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'ApplianceManagement')));
   $self->set_binding_field('key' => 'authmgmt', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'AuthenticationManagement')));
   bless $self, $class;
   return $self;
}

## @method get_appliance ()
# Gets the value of 'appliance' property.
#
# @retval appliance - The current value of the field.
# Appliance Management component desired spec. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# Optional#
sub get_appliance {
   my ($self, %args) = @_;
   return $self->{'appliance'}; 	
}

## @method set_appliance ()
# Sets the given value for 'appliance' property.
# 
# @param appliance  - New value for the field.
# Appliance Management component desired spec. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_appliance {
   my ($self, %args) = @_;
   $self->{'appliance'} = $args{'appliance'}; 
   return;	
}

## @method get_authmgmt ()
# Gets the value of 'authmgmt' property.
#
# @retval authmgmt - The current value of the field.
# Authentication Management component desired spec. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# Optional#
sub get_authmgmt {
   my ($self, %args) = @_;
   return $self->{'authmgmt'}; 	
}

## @method set_authmgmt ()
# Sets the given value for 'authmgmt' property.
# 
# @param authmgmt  - New value for the field.
# Authentication Management component desired spec. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_authmgmt {
   my ($self, %args) = @_;
   $self->{'authmgmt'} = $args{'authmgmt'}; 
   return;	
}


1;


