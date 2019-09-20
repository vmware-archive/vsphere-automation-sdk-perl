## @class Com::Vmware::Content::Library::SourceInfo
#
#
# The  ``Com::Vmware::Content::Library::SourceInfo``   *class*  contains information
#     about the source published library of a subscribed library. This  *class*  was added
#     in vSphere API 6.7.2.

package Com::Vmware::Content::Library::SourceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::SourceInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source_library} = $args{'source_library'};
   $self->{subscription} = $args{'subscription'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::SourceInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.source_info');
   $self->set_binding_field('key' => 'source_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'subscription', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_source_library ()
# Gets the value of 'source_library' property.
#
# @retval source_library - The current value of the field.
# Identifier of the published library. This  *field*  was added in vSphere API 6.7.2.
#
# optional#
sub get_source_library {
   my ($self, %args) = @_;
   return $self->{'source_library'}; 	
}

## @method set_source_library ()
# Sets the given value for 'source_library' property.
# 
# @param source_library  - New value for the field.
# Identifier of the published library. This  *field*  was added in vSphere API 6.7.2.
#
sub set_source_library {
   my ($self, %args) = @_;
   $self->{'source_library'} = $args{'source_library'}; 
   return;	
}

## @method get_subscription ()
# Gets the value of 'subscription' property.
#
# @retval subscription - The current value of the field.
# Identifier of the subscription associated with the subscribed library. This  *field* 
#     was added in vSphere API 6.7.2.
#
# optional#
sub get_subscription {
   my ($self, %args) = @_;
   return $self->{'subscription'}; 	
}

## @method set_subscription ()
# Sets the given value for 'subscription' property.
# 
# @param subscription  - New value for the field.
# Identifier of the subscription associated with the subscribed library. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_subscription {
   my ($self, %args) = @_;
   $self->{'subscription'} = $args{'subscription'}; 
   return;	
}


1;


