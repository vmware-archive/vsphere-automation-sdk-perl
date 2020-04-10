## @class Com::Vmware::Esx::Settings::AddOnDetails
#
#
# The  ``Com::Vmware::Esx::Settings::AddOnDetails``   *class*  contains information that
#     provide more details about the add-on from the depot.

package Com::Vmware::Esx::Settings::AddOnDetails;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::AddOnDetails structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{display_name} = $args{'display_name'};
   $self->{vendor} = $args{'vendor'};
   $self->{display_version} = $args{'display_version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::AddOnDetails');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.add_on_details');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the OEM add-on.
#
# String#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# Display name of the OEM add-on.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# Vendor of the OEM add-on.
#
# String#
sub get_vendor {
   my ($self, %args) = @_;
   return $self->{'vendor'}; 	
}

## @method set_vendor ()
# Sets the given value for 'vendor' property.
# 
# @param vendor  - New value for the field.
# Vendor of the OEM add-on.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Human readable version of the OEM add-on.
#
# String#
sub get_display_version {
   my ($self, %args) = @_;
   return $self->{'display_version'}; 	
}

## @method set_display_version ()
# Sets the given value for 'display_version' property.
# 
# @param display_version  - New value for the field.
# Human readable version of the OEM add-on.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}


1;


