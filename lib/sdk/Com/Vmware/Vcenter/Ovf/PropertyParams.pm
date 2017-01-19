## @class Com::Vmware::Vcenter::Ovf::PropertyParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::PropertyParams``   *class*  contains a  *list*  of
#     OVF properties that can be configured when the OVF package is deployed. <p>
# 
#  This is based on the ovf:ProductSection. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::PropertyParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::PropertyParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{properties} = $args{'properties'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::PropertyParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.property_params');
   $self->set_binding_field('key' => 'properties', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'Property'))));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_properties ()
# Gets the value of 'properties' property.
#
# @retval properties - The current value of the field.
#  *List*  of OVF properties.
#
# optional#
sub get_properties {
   my ($self, %args) = @_;
   return $self->{'properties'}; 	
}

## @method set_properties ()
# Sets the given value for 'properties' property.
# 
# @param properties  - New value for the field.
#  *List*  of OVF properties.
#
sub set_properties {
   my ($self, %args) = @_;
   $self->{'properties'} = $args{'properties'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


