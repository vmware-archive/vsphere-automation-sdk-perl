## @class Com::Vmware::Vapi::Std::LocalizableMessage
#
#
# The  ``Com::Vmware::Vapi::Std::LocalizableMessage``   *class*  represents a
#     localizable string or message template.  *Interfaces*  include one or more localizable
#     message templates in the  *errors*  they report so that clients can display diagnostic
#     messages in the native language of the user.  *Interfaces*  can include localizable
#     strings in the data returned from  *methods*  to allow clients to display localized
#     status information in the native language of the user.

package Com::Vmware::Vapi::Std::LocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::LocalizableMessage structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{default_message} = $args{'default_message'};
   $self->{args} = $args{'args'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::LocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.localizable_message');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'default_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'args', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Unique identifier of the localizable string or message template. <p>
# 
# This identifier is typically used to retrieve a locale-specific string or message
#     template from a message catalog.</p>
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Unique identifier of the localizable string or message template. <p>
# 
# This identifier is typically used to retrieve a locale-specific string or message
#     template from a message catalog.</p>
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_default_message ()
# Gets the value of 'default_message' property.
#
# @retval default_message - The current value of the field.
# The value of this localizable string or message template in the  ``en_US``  (English)
#     locale. If  :attr:`Com::Vmware::Vapi::Std::LocalizableMessage.id`  refers to a message
#     template, the default message will contain the substituted arguments. This value can
#     be used by clients that do not need to display strings and messages in the native
#     language of the user. It could also be used as a fallback if a client is unable to
#     access the appropriate message catalog.
#
# String#
sub get_default_message {
   my ($self, %args) = @_;
   return $self->{'default_message'}; 	
}

## @method set_default_message ()
# Sets the given value for 'default_message' property.
# 
# @param default_message  - New value for the field.
# The value of this localizable string or message template in the  ``en_US``  (English)
#     locale. If  :attr:`Com::Vmware::Vapi::Std::LocalizableMessage.id`  refers to a message
#     template, the default message will contain the substituted arguments. This value can
#     be used by clients that do not need to display strings and messages in the native
#     language of the user. It could also be used as a fallback if a client is unable to
#     access the appropriate message catalog.
#
sub set_default_message {
   my ($self, %args) = @_;
   $self->{'default_message'} = $args{'default_message'}; 
   return;	
}

## @method get_args ()
# Gets the value of 'args' property.
#
# @retval args - The current value of the field.
# Arguments to be substituted into a message template.
#
# List#
sub get_args {
   my ($self, %args) = @_;
   return $self->{'args'}; 	
}

## @method set_args ()
# Sets the given value for 'args' property.
# 
# @param args  - New value for the field.
# Arguments to be substituted into a message template.
#
sub set_args {
   my ($self, %args) = @_;
   $self->{'args'} = $args{'args'}; 
   return;	
}


1;


