## @class Com::Vmware::Vapi::Std::DynamicID
#
#
# The  ``Com::Vmware::Vapi::Std::DynamicID``   *class*  represents an identifier for a
#     resource of an arbitrary type.

package Com::Vmware::Vapi::Std::DynamicID;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::DynamicID structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{id} = $args{'id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::DynamicID');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.dynamic_ID');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of resource being identified (for example  ``com.acme.Person`` ). <p>
# 
# *Interfaces*  that contain  *methods*  for creating and deleting resources typically
#     contain a  *constant*  specifying the resource type for the resources being created
#     and deleted. The API metamodel metadata  *interfaces*  include a  *interface*  that
#     allows retrieving all the known resource types.</p>
#
# String#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of resource being identified (for example  ``com.acme.Person`` ). <p>
# 
# *Interfaces*  that contain  *methods*  for creating and deleting resources typically
#     contain a  *constant*  specifying the resource type for the resources being created
#     and deleted. The API metamodel metadata  *interfaces*  include a  *interface*  that
#     allows retrieving all the known resource types.</p>
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The identifier for a resource whose type is specified by 
#     :attr:`Com::Vmware::Vapi::Std::DynamicID.type` .
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The identifier for a resource whose type is specified by 
#     :attr:`Com::Vmware::Vapi::Std::DynamicID.type` .
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}


1;


