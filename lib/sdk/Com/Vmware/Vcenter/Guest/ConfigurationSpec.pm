## @class Com::Vmware::Vcenter::Guest::ConfigurationSpec
#
#
# The  ``Com::Vmware::Vcenter::Guest::ConfigurationSpec``   *class*  specifies the
#     settings for customizing a guest operating system. This  *class*  was added in vSphere
#     API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::ConfigurationSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::ConfigurationSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{windows_config} = $args{'windows_config'};
   $self->{linux_config} = $args{'linux_config'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::ConfigurationSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.configuration_spec');
   $self->set_binding_field('key' => 'windows_config', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'WindowsConfiguration')));
   $self->set_binding_field('key' => 'linux_config', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'LinuxConfiguration')));
   bless $self, $class;
   return $self;
}

## @method get_windows_config ()
# Gets the value of 'windows_config' property.
#
# @retval windows_config - The current value of the field.
# Guest customization specification for a Windows guest operating system. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_windows_config {
   my ($self, %args) = @_;
   return $self->{'windows_config'}; 	
}

## @method set_windows_config ()
# Sets the given value for 'windows_config' property.
# 
# @param windows_config  - New value for the field.
# Guest customization specification for a Windows guest operating system. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_windows_config {
   my ($self, %args) = @_;
   $self->{'windows_config'} = $args{'windows_config'}; 
   return;	
}

## @method get_linux_config ()
# Gets the value of 'linux_config' property.
#
# @retval linux_config - The current value of the field.
# Guest customization specification for a linux guest operating system. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_linux_config {
   my ($self, %args) = @_;
   return $self->{'linux_config'}; 	
}

## @method set_linux_config ()
# Sets the given value for 'linux_config' property.
# 
# @param linux_config  - New value for the field.
# Guest customization specification for a linux guest operating system. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_linux_config {
   my ($self, %args) = @_;
   $self->{'linux_config'} = $args{'linux_config'}; 
   return;	
}


1;


