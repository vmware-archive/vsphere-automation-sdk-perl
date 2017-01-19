## @class Com::Vmware::Vapi::Std::Errors::TransientIndication
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::TransientIndication``   *class*  indicates
#     whether or not the  *error*  is transient. <p>
# 
# Some types of  *errors*  are transient in certain situtations and not transient in
#     other situtations. This  *error*  payload can be used to indicate to clients whether a
#     particular  *error*  is transient. See 
#     :attr:`Com::Vmware::Vapi::Std::Errors::Error.data` .</p>

package Com::Vmware::Vapi::Std::Errors::TransientIndication;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::TransientIndication structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{is_transient} = $args{'is_transient'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::TransientIndication');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.transient_indication');
   $self->set_binding_field('key' => 'is_transient', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_is_transient ()
# Gets the value of 'is_transient' property.
#
# @retval is_transient - The current value of the field.
# Indicates that the  *error*  this  *class*  is attached to is transient.
#
# boolean#
sub get_is_transient {
   my ($self, %args) = @_;
   return $self->{'is_transient'}; 	
}

## @method set_is_transient ()
# Sets the given value for 'is_transient' property.
# 
# @param is_transient  - New value for the field.
# Indicates that the  *error*  this  *class*  is attached to is transient.
#
sub set_is_transient {
   my ($self, %args) = @_;
   $self->{'is_transient'} = $args{'is_transient'}; 
   return;	
}


1;


