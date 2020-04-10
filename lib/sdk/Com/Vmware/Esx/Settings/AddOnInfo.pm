## @class Com::Vmware::Esx::Settings::AddOnInfo
#
#
# The  ``Com::Vmware::Esx::Settings::AddOnInfo``   *class*  contains information that
#     describe a specific OEM customization add-on.

package Com::Vmware::Esx::Settings::AddOnInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::AddOnInfo structure
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
   $self->{name} = $args{'name'};
   $self->{version} = $args{'version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::AddOnInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.add_on_info');
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'AddOnDetails')));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details about the add-on.
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
# Details about the add-on.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the add-on
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the add-on
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the add-on
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
# Version of the add-on
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}


1;


