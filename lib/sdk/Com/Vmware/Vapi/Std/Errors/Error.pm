## @class Com::Vmware::Vapi::Std::Errors::Error
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::Error``   *error*  describes the *fields* 
#     common to all standard  *errors* . <p>
# 
#  This  *error*  serves two purposes: </p>
# 
# <ol>
# <li>It is the  *error*  that clients in many programming languages can catch to handle
#     all standard  *errors* . Typically those clients will display one or more of the
#     localizable messages from  :attr:`Com::Vmware::Vapi::Std::Errors::Error.messages`  to
#     a human. </li>
# <li>It is the  *error*  that  *methods*  can report when they need to report some 
#     *error* , but the  *error*  doesn&apos;t fit into any other standard  *error* , and in
#     fact the only reasonable way for a client to react to the  *error*  is to display the
#     message(s) to a human. </li>
#  </ol>

package Com::Vmware::Vapi::Std::Errors::Error;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiError);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::Error structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{messages} = $args{'messages'};
   $self->{data} = $args{'data'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::Error');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.error');
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'data', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   bless $self, $class;
   return $self;
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# Stack of one or more localizable messages for human  *error*  consumers. <p>
# 
# The message at the top of the stack (first in the list) describes the  *error*  from
#     the perspective of the  *method*  the client invoked. Each subsequent message in the
#     stack describes the &quot;cause&quot; of the prior message.</p>
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# Stack of one or more localizable messages for human  *error*  consumers. <p>
# 
# The message at the top of the stack (first in the list) describes the  *error*  from
#     the perspective of the  *method*  the client invoked. Each subsequent message in the
#     stack describes the &quot;cause&quot; of the prior message.</p>
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_data ()
# Gets the value of 'data' property.
#
# @retval data - The current value of the field.
# Data to facilitate clients responding to the  *method*  reporting a standard  *error* 
#     to indicating that it was unable to complete successfully. <p>
# 
# *Methods*  may provide data that clients can use when responding to  *errors* . Since
#     the data that clients need may be specific to the context of the  *method*  reporting
#     the  *error* , different  *methods*  that report the same  *error*  may provide
#     different data in the  *error* . The documentation for each each  *method*  will
#     describe what, if any, data it provides for each  *error*  it reports. The  class
#     Com::Vmware::Vapi::Std::Errors::ArgumentLocations ,  class
#     Com::Vmware::Vapi::Std::Errors::FileLocations , and  class
#     Com::Vmware::Vapi::Std::Errors::TransientIndication   *classes*  are intended as
#     possible values for this  *field* .  class Com::Vmware::Vapi::Std::DynamicID  may also
#     be useful as a value for this  *field*  (although that is not its primary purpose).
#     Some  *interfaces*  may provide their own specific  *classes*  for use as the value of
#     this  *field*  when reporting  *errors*  from their  *methods* .</p>
#
# Optional#
sub get_data {
   my ($self, %args) = @_;
   return $self->{'data'}; 	
}

## @method set_data ()
# Sets the given value for 'data' property.
# 
# @param data  - New value for the field.
# Data to facilitate clients responding to the  *method*  reporting a standard  *error* 
#     to indicating that it was unable to complete successfully. <p>
# 
# *Methods*  may provide data that clients can use when responding to  *errors* . Since
#     the data that clients need may be specific to the context of the  *method*  reporting
#     the  *error* , different  *methods*  that report the same  *error*  may provide
#     different data in the  *error* . The documentation for each each  *method*  will
#     describe what, if any, data it provides for each  *error*  it reports. The  class
#     Com::Vmware::Vapi::Std::Errors::ArgumentLocations ,  class
#     Com::Vmware::Vapi::Std::Errors::FileLocations , and  class
#     Com::Vmware::Vapi::Std::Errors::TransientIndication   *classes*  are intended as
#     possible values for this  *field* .  class Com::Vmware::Vapi::Std::DynamicID  may also
#     be useful as a value for this  *field*  (although that is not its primary purpose).
#     Some  *interfaces*  may provide their own specific  *classes*  for use as the value of
#     this  *field*  when reporting  *errors*  from their  *methods* .</p>
#
sub set_data {
   my ($self, %args) = @_;
   $self->{'data'} = $args{'data'}; 
   return;	
}


1;


