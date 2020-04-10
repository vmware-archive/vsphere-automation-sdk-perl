## @class Com::Vmware::Esx::Hosts::SoftwareInfo
#
#
# The  ``Com::Vmware::Esx::Hosts::SoftwareInfo``   *class*  contains  *fields*  that
#     describe desired software specification for an ESX host.

package Com::Vmware::Esx::Hosts::SoftwareInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hosts::SoftwareInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{base_image} = $args{'base_image'};
   $self->{add_on} = $args{'add_on'};
   $self->{components} = $args{'components'};
   $self->{solutions} = $args{'solutions'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hosts::SoftwareInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.hosts.software_info');
   $self->set_binding_field('key' => 'base_image', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hosts', 'type_name' => 'BaseImageInfo'));
   $self->set_binding_field('key' => 'add_on', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hosts', 'type_name' => 'AddOnInfo')));
   $self->set_binding_field('key' => 'components', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hosts', 'type_name' => 'ComponentInfo'))}))));
   $self->set_binding_field('key' => 'solutions', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hosts', 'type_name' => 'SolutionInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_base_image ()
# Gets the value of 'base_image' property.
#
# @retval base_image - The current value of the field.
# Base image of the ESX.
#
# BaseImageInfo#
sub get_base_image {
   my ($self, %args) = @_;
   return $self->{'base_image'}; 	
}

## @method set_base_image ()
# Sets the given value for 'base_image' property.
# 
# @param base_image  - New value for the field.
# Base image of the ESX.
#
sub set_base_image {
   my ($self, %args) = @_;
   $self->{'base_image'} = $args{'base_image'}; 
   return;	
}

## @method get_add_on ()
# Gets the value of 'add_on' property.
#
# @retval add_on - The current value of the field.
# OEM customization on top of given base-image. The components in this customization
#     override the components in the base base-image.
#
# Optional#
sub get_add_on {
   my ($self, %args) = @_;
   return $self->{'add_on'}; 	
}

## @method set_add_on ()
# Sets the given value for 'add_on' property.
# 
# @param add_on  - New value for the field.
# OEM customization on top of given base-image. The components in this customization
#     override the components in the base base-image.
#
sub set_add_on {
   my ($self, %args) = @_;
   $self->{'add_on'} = $args{'add_on'}; 
   return;	
}

## @method get_components ()
# Gets the value of 'components' property.
#
# @retval components - The current value of the field.
# Map of components in an ESX image. The key is the component name and value is the
#     information about specific version of the component.
#
# Map#
sub get_components {
   my ($self, %args) = @_;
   return $self->{'components'}; 	
}

## @method set_components ()
# Sets the given value for 'components' property.
# 
# @param components  - New value for the field.
# Map of components in an ESX image. The key is the component name and value is the
#     information about specific version of the component.
#
sub set_components {
   my ($self, %args) = @_;
   $self->{'components'} = $args{'components'}; 
   return;	
}

## @method get_solutions ()
# Gets the value of 'solutions' property.
#
# @retval solutions - The current value of the field.
# Map of software solutions in an ESX image. The key is the solution name and value is
#     the specification detailing components registered by that solution.
#
# Map#
sub get_solutions {
   my ($self, %args) = @_;
   return $self->{'solutions'}; 	
}

## @method set_solutions ()
# Sets the given value for 'solutions' property.
# 
# @param solutions  - New value for the field.
# Map of software solutions in an ESX image. The key is the solution name and value is
#     the specification detailing components registered by that solution.
#
sub set_solutions {
   my ($self, %args) = @_;
   $self->{'solutions'} = $args{'solutions'}; 
   return;	
}


1;


