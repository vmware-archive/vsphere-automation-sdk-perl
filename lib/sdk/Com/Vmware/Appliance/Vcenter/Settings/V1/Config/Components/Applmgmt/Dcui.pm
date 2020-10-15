## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Dcui
#
#
# Get/Set enabled state of Direct Console User Interface (DCUI TTY2). 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Dcui`` 
#      *interface*  provides  *methods* 

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Dcui;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Dcui structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{enabled} = $args{'enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Dcui');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.dcui');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Set enabled state of Direct Console User Interface (DCUI).
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Set enabled state of Direct Console User Interface (DCUI).
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}


1;


