## @class Com::Vmware::Esx::Settings::EffectiveComponentDetails
#
#
# The  ``Com::Vmware::Esx::Settings::EffectiveComponentDetails``   *class*  contains
#     information that provide more details about the component from the depot.

package Com::Vmware::Esx::Settings::EffectiveComponentDetails;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::EffectiveComponentDetails structure
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
   $self->{display_version} = $args{'display_version'};
   $self->{vendor} = $args{'vendor'};
   $self->{source} = $args{'source'};
   $self->{note} = $args{'note'};
   $self->{overridden_components} = $args{'overridden_components'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::EffectiveComponentDetails');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.effective_component_details');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'source', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentSource'));
   $self->set_binding_field('key' => 'note', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'overridden_components', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentOverrideInfo')));
   bless $self, $class;
   return $self;
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the component.
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
# Display name of the component.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Human readable version of the component.
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
# Human readable version of the component.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# Vendor of the component.
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
# Vendor of the component.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}

## @method get_source ()
# Gets the value of 'source' property.
#
# @retval source - The current value of the field.
# Final effective source of the component.
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
# Final effective source of the component.
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
# Note assosicated with this component.
#
# Optional#
sub get_note {
   my ($self, %args) = @_;
   return $self->{'note'}; 	
}

## @method set_note ()
# Sets the given value for 'note' property.
# 
# @param note  - New value for the field.
# Note assosicated with this component.
#
sub set_note {
   my ($self, %args) = @_;
   $self->{'note'} = $args{'note'}; 
   return;	
}

## @method get_overridden_components ()
# Gets the value of 'overridden_components' property.
#
# @retval overridden_components - The current value of the field.
# List of other component versions present in base-image, add-ons or solutions that this
#     component is overriding. For example, if a component version-1 was implicitly present
#     in the base-image, but user wants it to be changed to version-2. In that case, 
#     :attr:`Com::Vmware::Esx::Settings::EffectiveComponentDetails.source`  would be USER
#     and there will be one entry in this list indicating base-image component version-1 is
#     being overridden.
#
# List#
sub get_overridden_components {
   my ($self, %args) = @_;
   return $self->{'overridden_components'}; 	
}

## @method set_overridden_components ()
# Sets the given value for 'overridden_components' property.
# 
# @param overridden_components  - New value for the field.
# List of other component versions present in base-image, add-ons or solutions that this
#     component is overriding. For example, if a component version-1 was implicitly present
#     in the base-image, but user wants it to be changed to version-2. In that case, 
#     :attr:`Com::Vmware::Esx::Settings::EffectiveComponentDetails.source`  would be USER
#     and there will be one entry in this list indicating base-image component version-1 is
#     being overridden.
#
sub set_overridden_components {
   my ($self, %args) = @_;
   $self->{'overridden_components'} = $args{'overridden_components'}; 
   return;	
}


1;


