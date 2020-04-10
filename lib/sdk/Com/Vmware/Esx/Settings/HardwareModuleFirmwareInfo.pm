## @class Com::Vmware::Esx::Settings::HardwareModuleFirmwareInfo
#
#
# The  ``Com::Vmware::Esx::Settings::HardwareModuleFirmwareInfo``   *class*  contains
#     information to describe the firmware on a hardware component or module (e.g. BIOS, PCI
#     device).

package Com::Vmware::Esx::Settings::HardwareModuleFirmwareInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::HardwareModuleFirmwareInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::HardwareModuleFirmwareInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_module_firmware_info');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the hardware module firmware.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the hardware module firmware.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}


1;


