## @class Com::Vmware::Vapi::Std::Errors::FileLocations
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::FileLocations``   *class*  identifies the
#     file(s) that caused the  *method*  to report the  *error* . <p>
# 
# Some types of  *errors*  are caused by a problem with one or more files. This  *class*
#     is intended to be used as the payload to identify those files when the  *method* 
#     reports  *errors*  like  class Com::Vmware::Vapi::Std::Errors::NotFound . See 
#     :attr:`Com::Vmware::Vapi::Std::Errors::Error.data` .</p>

package Com::Vmware::Vapi::Std::Errors::FileLocations;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::FileLocations structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::FileLocations');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.file_locations');
   $self->set_binding_field('key' => 'primary', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'secondary', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_primary ()
# Gets the value of 'primary' property.
#
# @retval primary - The current value of the field.
# String identifying the file that triggered the  *error* .
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
# String identifying the file that triggered the  *error* .
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
# *List*  (possibly empty) of strings identifying other files that caused the primary
#     file to trigger the  *error* .
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
# *List*  (possibly empty) of strings identifying other files that caused the primary
#     file to trigger the  *error* .
#
sub set_secondary {
   my ($self, %args) = @_;
   $self->{'secondary'} = $args{'secondary'}; 
   return;	
}


1;


