## @class Com::Vmware::Esx::Settings::HardwareModuleDetails
#
#
# The  ``Com::Vmware::Esx::Settings::HardwareModuleDetails``   *class*  contains
#     information that provide more details about the a hardware module (e.g. BIOS, PCI
#     device).

package Com::Vmware::Esx::Settings::HardwareModuleDetails;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::HardwareModuleDetails structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{component_class} = $args{'component_class'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::HardwareModuleDetails');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_module_details');
   $self->set_binding_field('key' => 'component_class', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HardwareModuleClass'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_component_class ()
# Gets the value of 'component_class' property.
#
# @retval component_class - The current value of the field.
# Class of module (BIOS, PCI Device, non-PCI hardware, etc.)
#
# HardwareModuleClass#
sub get_component_class {
   my ($self, %args) = @_;
   return $self->{'component_class'}; 	
}

## @method set_component_class ()
# Sets the given value for 'component_class' property.
# 
# @param component_class  - New value for the field.
# Class of module (BIOS, PCI Device, non-PCI hardware, etc.)
#
sub set_component_class {
   my ($self, %args) = @_;
   $self->{'component_class'} = $args{'component_class'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Descipription of the hardware module (e.g. &quot;System BIOS&quot; or &quot;Frobozz
#     100Gb NIC&quot;).
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Descipription of the hardware module (e.g. &quot;System BIOS&quot; or &quot;Frobozz
#     100Gb NIC&quot;).
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


