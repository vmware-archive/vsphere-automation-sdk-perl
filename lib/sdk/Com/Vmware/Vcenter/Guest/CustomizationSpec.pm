## @class Com::Vmware::Vcenter::Guest::CustomizationSpec
#
#
# The  ``Com::Vmware::Vcenter::Guest::CustomizationSpec``   *class*  contains
#     information required to customize a virtual machine when deploying it or migrating it
#     to a new host. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::CustomizationSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::CustomizationSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{configuration_spec} = $args{'configuration_spec'};
   $self->{global_DNS_settings} = $args{'global_DNS_settings'};
   $self->{interfaces} = $args{'interfaces'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::CustomizationSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.customization_spec');
   $self->set_binding_field('key' => 'configuration_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'ConfigurationSpec'));
   $self->set_binding_field('key' => 'global_DNS_settings', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'GlobalDNSSettings'));
   $self->set_binding_field('key' => 'interfaces', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'AdapterMapping')));
   bless $self, $class;
   return $self;
}

## @method get_configuration_spec ()
# Gets the value of 'configuration_spec' property.
#
# @retval configuration_spec - The current value of the field.
# Settings to be applied to the guest during the customization. This  *field*  was added
#     in vSphere API 7.0.0.
#
# ConfigurationSpec#
sub get_configuration_spec {
   my ($self, %args) = @_;
   return $self->{'configuration_spec'}; 	
}

## @method set_configuration_spec ()
# Sets the given value for 'configuration_spec' property.
# 
# @param configuration_spec  - New value for the field.
# Settings to be applied to the guest during the customization. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_configuration_spec {
   my ($self, %args) = @_;
   $self->{'configuration_spec'} = $args{'configuration_spec'}; 
   return;	
}

## @method get_global_DNS_settings ()
# Gets the value of 'global_DNS_settings' property.
#
# @retval global_DNS_settings - The current value of the field.
# Global DNS settings constitute the DNS settings that are not specific to a particular
#     virtual network adapter. This  *field*  was added in vSphere API 7.0.0.
#
# GlobalDNSSettings#
sub get_global_DNS_settings {
   my ($self, %args) = @_;
   return $self->{'global_DNS_settings'}; 	
}

## @method set_global_DNS_settings ()
# Sets the given value for 'global_DNS_settings' property.
# 
# @param global_DNS_settings  - New value for the field.
# Global DNS settings constitute the DNS settings that are not specific to a particular
#     virtual network adapter. This  *field*  was added in vSphere API 7.0.0.
#
sub set_global_DNS_settings {
   my ($self, %args) = @_;
   $self->{'global_DNS_settings'} = $args{'global_DNS_settings'}; 
   return;	
}

## @method get_interfaces ()
# Gets the value of 'interfaces' property.
#
# @retval interfaces - The current value of the field.
# IP settings that are specific to a particular virtual network adapter. The  class
#     Com::Vmware::Vcenter::Guest::AdapterMapping   *class*  maps a network adapter&apos;s
#     MAC address to its  class Com::Vmware::Vcenter::Guest::IPSettings . May be empty if
#     there are no network adapters, else should match number of network adapters configured
#     for the VM. This  *field*  was added in vSphere API 7.0.0.
#
# List#
sub get_interfaces {
   my ($self, %args) = @_;
   return $self->{'interfaces'}; 	
}

## @method set_interfaces ()
# Sets the given value for 'interfaces' property.
# 
# @param interfaces  - New value for the field.
# IP settings that are specific to a particular virtual network adapter. The  class
#     Com::Vmware::Vcenter::Guest::AdapterMapping   *class*  maps a network adapter&apos;s
#     MAC address to its  class Com::Vmware::Vcenter::Guest::IPSettings . May be empty if
#     there are no network adapters, else should match number of network adapters configured
#     for the VM. This  *field*  was added in vSphere API 7.0.0.
#
sub set_interfaces {
   my ($self, %args) = @_;
   $self->{'interfaces'} = $args{'interfaces'}; 
   return;	
}


1;


