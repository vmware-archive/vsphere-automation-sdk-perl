## @class Com::Vmware::Vcenter::Lcm::DestinationLocation
#
#
# Configuration of destination location.

package Com::Vmware::Vcenter::Lcm::DestinationLocation;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::DestinationLocation structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{esx} = $args{'esx'};
   $self->{vcenter} = $args{'vcenter'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::DestinationLocation');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.destination_location');
   $self->set_binding_field('key' => 'esx', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Esx')));
   $self->set_binding_field('key' => 'vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Vc')));
   bless $self, $class;
   return $self;
}

## @method get_esx ()
# Gets the value of 'esx' property.
#
# @retval esx - The current value of the field.
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.
#
# Optional#
sub get_esx {
   my ($self, %args) = @_;
   return $self->{'esx'}; 	
}

## @method set_esx ()
# Sets the given value for 'esx' property.
# 
# @param esx  - New value for the field.
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.
#
sub set_esx {
   my ($self, %args) = @_;
   $self->{'esx'} = $args{'esx'}; 
   return;	
}

## @method get_vcenter ()
# Gets the value of 'vcenter' property.
#
# @retval vcenter - The current value of the field.
# This subsection describes the vCenter on which to deploy the appliance.
#
# Optional#
sub get_vcenter {
   my ($self, %args) = @_;
   return $self->{'vcenter'}; 	
}

## @method set_vcenter ()
# Sets the given value for 'vcenter' property.
# 
# @param vcenter  - New value for the field.
# This subsection describes the vCenter on which to deploy the appliance.
#
sub set_vcenter {
   my ($self, %args) = @_;
   $self->{'vcenter'} = $args{'vcenter'}; 
   return;	
}


1;


