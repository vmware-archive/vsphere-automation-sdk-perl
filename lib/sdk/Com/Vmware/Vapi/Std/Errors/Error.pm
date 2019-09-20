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
   $self->{error_type} = $args{'error_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::Error');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.error');
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'data', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   $self->set_binding_field('key' => 'error_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error::Type')));
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

## @method get_error_type ()
# Gets the value of 'error_type' property.
#
# @retval error_type - The current value of the field.
# Discriminator field to help API consumers identify the structure type. This  *field* 
#     was added in vSphere API 6.7.2.
#
# optional#
sub get_error_type {
   my ($self, %args) = @_;
   return $self->{'error_type'}; 	
}

## @method set_error_type ()
# Sets the given value for 'error_type' property.
# 
# @param error_type  - New value for the field.
# Discriminator field to help API consumers identify the structure type. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_error_type {
   my ($self, %args) = @_;
   $self->{'error_type'} = $args{'error_type'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Std::Errors::Error::Type
#
# Enumeration of all standard errors. Used as discriminator in protocols that have no
#     standard means for transporting the error type, e.g. REST. This  *enumeration*  was
#     added in vSphere API 6.7.2.
#
#
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::ERROR #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::Error  type. This  *constant*
#  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::ALREADY_EXISTS #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::AlreadyExists  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::ALREADY_IN_DESIRED_STATE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState  type.
# This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::CANCELED #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::Canceled  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::CONCURRENT_CHANGE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::ConcurrentChange  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::FEATURE_IN_USE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::FeatureInUse  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::INTERNAL_SERVER_ERROR #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::InternalServerError  type.
# This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::INVALID_ARGUMENT #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::InvalidArgument  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::INVALID_ELEMENT_CONFIGURATION #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration 
# type. This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::INVALID_ELEMENT_TYPE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::InvalidElementType  type.
# This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::INVALID_REQUEST #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::InvalidRequest  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::NOT_ALLOWED_IN_CURRENT_STATE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# type. This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::NOT_FOUND #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::NotFound  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::OPERATION_NOT_FOUND #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::OperationNotFound  type. This
#  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::RESOURCE_BUSY #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::ResourceBusy  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::RESOURCE_IN_USE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::ResourceInUse  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::RESOURCE_INACCESSIBLE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::ResourceInaccessible  type.
# This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::SERVICE_UNAVAILABLE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::ServiceUnavailable  type.
# This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::TIMED_OUT #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::TimedOut  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::UNABLE_TO_ALLOCATE_RESOURCE #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# type. This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::UNAUTHENTICATED #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::Unauthenticated  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::UNAUTHORIZED #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::Unauthorized  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::UNEXPECTED_INPUT #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::UnexpectedInput  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::UNSUPPORTED #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::Unsupported  type. This 
# *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vapi::Std::Errors::Error::Type::UNVERIFIED_PEER #
#Discriminator for the  class Com::Vmware::Vapi::Std::Errors::UnverifiedPeer  type. This 
# *constant*  was added in vSphere API 6.7.2.

package Com::Vmware::Vapi::Std::Errors::Error::Type;

use constant {
    ERROR =>  'ERROR',
    ALREADY_EXISTS =>  'ALREADY_EXISTS',
    ALREADY_IN_DESIRED_STATE =>  'ALREADY_IN_DESIRED_STATE',
    CANCELED =>  'CANCELED',
    CONCURRENT_CHANGE =>  'CONCURRENT_CHANGE',
    FEATURE_IN_USE =>  'FEATURE_IN_USE',
    INTERNAL_SERVER_ERROR =>  'INTERNAL_SERVER_ERROR',
    INVALID_ARGUMENT =>  'INVALID_ARGUMENT',
    INVALID_ELEMENT_CONFIGURATION =>  'INVALID_ELEMENT_CONFIGURATION',
    INVALID_ELEMENT_TYPE =>  'INVALID_ELEMENT_TYPE',
    INVALID_REQUEST =>  'INVALID_REQUEST',
    NOT_ALLOWED_IN_CURRENT_STATE =>  'NOT_ALLOWED_IN_CURRENT_STATE',
    NOT_FOUND =>  'NOT_FOUND',
    OPERATION_NOT_FOUND =>  'OPERATION_NOT_FOUND',
    RESOURCE_BUSY =>  'RESOURCE_BUSY',
    RESOURCE_IN_USE =>  'RESOURCE_IN_USE',
    RESOURCE_INACCESSIBLE =>  'RESOURCE_INACCESSIBLE',
    SERVICE_UNAVAILABLE =>  'SERVICE_UNAVAILABLE',
    TIMED_OUT =>  'TIMED_OUT',
    UNABLE_TO_ALLOCATE_RESOURCE =>  'UNABLE_TO_ALLOCATE_RESOURCE',
    UNAUTHENTICATED =>  'UNAUTHENTICATED',
    UNAUTHORIZED =>  'UNAUTHORIZED',
    UNEXPECTED_INPUT =>  'UNEXPECTED_INPUT',
    UNSUPPORTED =>  'UNSUPPORTED',
    UNVERIFIED_PEER =>  'UNVERIFIED_PEER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::Error::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.std.errors.error.type',
                           'binding_class' => 'Com::Vmware::Vapi::Std::Errors::Error::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


