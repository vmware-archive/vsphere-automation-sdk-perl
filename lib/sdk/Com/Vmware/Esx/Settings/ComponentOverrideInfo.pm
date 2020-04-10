## @class Com::Vmware::Esx::Settings::ComponentOverrideInfo
#
#
# The  ``Com::Vmware::Esx::Settings::ComponentOverrideInfo``   *class*  contains fields
#     that describe how the component was overridden.

package Com::Vmware::Esx::Settings::ComponentOverrideInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::ComponentOverrideInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{display_version} = $args{'display_version'};
   $self->{source} = $args{'source'};
   $self->{note} = $args{'note'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::ComponentOverrideInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.component_override_info');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'source', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentSource'));
   $self->set_binding_field('key' => 'note', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the component override.
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
# Version of the component override.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Human readable version of the component override.
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
# Human readable version of the component override.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}

## @method get_source ()
# Gets the value of 'source' property.
#
# @retval source - The current value of the field.
# Source of the component override.
#
# ComponentSource#
sub get_source {
   my ($self, %args) = @_;
   return $self->{'source'}; 	
}

## @method set_source ()
# Sets the given value for 'source' property.
# 
# @param source  - New value for the field.
# Source of the component override.
#
sub set_source {
   my ($self, %args) = @_;
   $self->{'source'} = $args{'source'}; 
   return;	
}

## @method get_note ()
# Gets the value of 'note' property.
#
# @retval note - The current value of the field.
# Note explaining the override.
#
# LocalizableMessage#
sub get_note {
   my ($self, %args) = @_;
   return $self->{'note'}; 	
}

## @method set_note ()
# Sets the given value for 'note' property.
# 
# @param note  - New value for the field.
# Note explaining the override.
#
sub set_note {
   my ($self, %args) = @_;
   $self->{'note'} = $args{'note'}; 
   return;	
}


1;


