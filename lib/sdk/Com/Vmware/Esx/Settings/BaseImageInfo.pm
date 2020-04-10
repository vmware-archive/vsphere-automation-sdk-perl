## @class Com::Vmware::Esx::Settings::BaseImageInfo
#
#
# The  ``Com::Vmware::Esx::Settings::BaseImageInfo``   *class*  contains information
#     that describe a specific ESX base-image.

package Com::Vmware::Esx::Settings::BaseImageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::BaseImageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{details} = $args{'details'};
   $self->{version} = $args{'version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::BaseImageInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.base_image_info');
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'BaseImageDetails')));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details about the base-image.
#
# Optional#
sub get_details {
   my ($self, %args) = @_;
   return $self->{'details'}; 	
}

## @method set_details ()
# Sets the given value for 'details' property.
# 
# @param details  - New value for the field.
# Details about the base-image.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the base-image
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the base-image
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}


1;


