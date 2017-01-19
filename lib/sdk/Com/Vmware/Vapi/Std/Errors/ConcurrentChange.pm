## @class Com::Vmware::Vapi::Std::Errors::ConcurrentChange
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::ConcurrentChange``   *error*  indicates that a
#     data structure, entity, or resource has been modified since some earlier point in
#     time. Typically this happens when the client is doing the <i>write</i> portion of a
#     read-modify-write sequence and indicates that it wants the server to notify it if the
#     data in the server has changed after it did the <i>read</i>, so that it can avoid
#     overwriting that change inadvertantly.

package Com::Vmware::Vapi::Std::Errors::ConcurrentChange;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::ConcurrentChange structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::ConcurrentChange');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.concurrent_change');
   bless $self, $class;
   return $self;
}


1;


