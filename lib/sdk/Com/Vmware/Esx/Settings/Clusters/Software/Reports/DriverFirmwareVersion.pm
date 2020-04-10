## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::DriverFirmwareVersion
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::DriverFirmwareVersion``  
#     *class*  contains information about device&apos;s driver and firmware version
#     combination from Hardware Compatibility List.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::DriverFirmwareVersion;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::DriverFirmwareVersion structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{driver_version} = $args{'driver_version'};
   $self->{firmware_version} = $args{'firmware_version'};
   $self->{driver_name} = $args{'driver_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::DriverFirmwareVersion');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.driver_firmware_version');
   $self->set_binding_field('key' => 'driver_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'firmware_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'driver_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_driver_version ()
# Gets the value of 'driver_version' property.
#
# @retval driver_version - The current value of the field.
# Compatible Driver Version.
#
# String#
sub get_driver_version {
   my ($self, %args) = @_;
   return $self->{'driver_version'}; 	
}

## @method set_driver_version ()
# Sets the given value for 'driver_version' property.
# 
# @param driver_version  - New value for the field.
# Compatible Driver Version.
#
sub set_driver_version {
   my ($self, %args) = @_;
   $self->{'driver_version'} = $args{'driver_version'}; 
   return;	
}

## @method get_firmware_version ()
# Gets the value of 'firmware_version' property.
#
# @retval firmware_version - The current value of the field.
# Compatible Firmware Version.
#
# String#
sub get_firmware_version {
   my ($self, %args) = @_;
   return $self->{'firmware_version'}; 	
}

## @method set_firmware_version ()
# Sets the given value for 'firmware_version' property.
# 
# @param firmware_version  - New value for the field.
# Compatible Firmware Version.
#
sub set_firmware_version {
   my ($self, %args) = @_;
   $self->{'firmware_version'} = $args{'firmware_version'}; 
   return;	
}

## @method get_driver_name ()
# Gets the value of 'driver_name' property.
#
# @retval driver_name - The current value of the field.
# Compatible Driver Name.
#
# String#
sub get_driver_name {
   my ($self, %args) = @_;
   return $self->{'driver_name'}; 	
}

## @method set_driver_name ()
# Sets the given value for 'driver_name' property.
# 
# @param driver_name  - New value for the field.
# Compatible Driver Name.
#
sub set_driver_name {
   my ($self, %args) = @_;
   $self->{'driver_name'} = $args{'driver_name'}; 
   return;	
}


1;


