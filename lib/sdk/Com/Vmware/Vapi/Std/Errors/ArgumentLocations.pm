## @class Com::Vmware::Vapi::Std::Errors::ArgumentLocations
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::ArgumentLocations``   *class*  describes which
#     part(s) of the input to the  *method*  caused the  *error* . <p>
# 
# Some types of  *errors*  are caused by the value of one of the inputs to the  *method*
#     , possibly due to an interaction with other inputs to the  *method* . This  *class* 
#     is intended to be used as the payload to identify those inputs when the  *method* 
#     reports  *errors*  like  class Com::Vmware::Vapi::Std::Errors::InvalidArgument  or 
#     class Com::Vmware::Vapi::Std::Errors::NotFound . See 
#     :attr:`Com::Vmware::Vapi::Std::Errors::Error.data` .</p>

package Com::Vmware::Vapi::Std::Errors::ArgumentLocations;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::ArgumentLocations structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{primary} = $args{'primary'};
   $self->{secondary} = $args{'secondary'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::ArgumentLocations');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.argument_locations');
   $self->set_binding_field('key' => 'primary', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'secondary', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_primary ()
# Gets the value of 'primary' property.
#
# @retval primary - The current value of the field.
# String describing the location of the input that triggered the  *error* .
#
# String#
sub get_primary {
   my ($self, %args) = @_;
   return $self->{'primary'}; 	
}

## @method set_primary ()
# Sets the given value for 'primary' property.
# 
# @param primary  - New value for the field.
# String describing the location of the input that triggered the  *error* .
#
sub set_primary {
   my ($self, %args) = @_;
   $self->{'primary'} = $args{'primary'}; 
   return;	
}

## @method get_secondary ()
# Gets the value of 'secondary' property.
#
# @retval secondary - The current value of the field.
# *List*  (possibly empty) of strings describing the locations of other inputs that
#     caused the the primary input to trigger the  *error* .
#
# List#
sub get_secondary {
   my ($self, %args) = @_;
   return $self->{'secondary'}; 	
}

## @method set_secondary ()
# Sets the given value for 'secondary' property.
# 
# @param secondary  - New value for the field.
# *List*  (possibly empty) of strings describing the locations of other inputs that
#     caused the the primary input to trigger the  *error* .
#
sub set_secondary {
   my ($self, %args) = @_;
   $self->{'secondary'} = $args{'secondary'}; 
   return;	
}


1;


