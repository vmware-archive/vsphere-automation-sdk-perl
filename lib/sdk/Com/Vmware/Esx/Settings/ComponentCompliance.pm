## @class Com::Vmware::Esx::Settings::ComponentCompliance
#
#
# The  ``Com::Vmware::Esx::Settings::ComponentCompliance``   *class*  contains
#     information that describe the compliance of a component with respect to the component
#     present in the target software specification.

package Com::Vmware::Esx::Settings::ComponentCompliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::ComponentCompliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{current} = $args{'current'};
   $self->{target} = $args{'target'};
   $self->{current_source} = $args{'current_source'};
   $self->{target_source} = $args{'target_source'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::ComponentCompliance');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.component_compliance');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComplianceStatus'));
   $self->set_binding_field('key' => 'current', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentInfo')));
   $self->set_binding_field('key' => 'target', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentInfo')));
   $self->set_binding_field('key' => 'current_source', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentSource')));
   $self->set_binding_field('key' => 'target_source', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentSource')));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Compliance status of the component.
#
# ComplianceStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Compliance status of the component.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_current ()
# Gets the value of 'current' property.
#
# @retval current - The current value of the field.
# Current version of the component present on the host.
#
# Optional#
sub get_current {
   my ($self, %args) = @_;
   return $self->{'current'}; 	
}

## @method set_current ()
# Sets the given value for 'current' property.
# 
# @param current  - New value for the field.
# Current version of the component present on the host.
#
sub set_current {
   my ($self, %args) = @_;
   $self->{'current'} = $args{'current'}; 
   return;	
}

## @method get_target ()
# Gets the value of 'target' property.
#
# @retval target - The current value of the field.
# Target version of the component present in the software specification.
#
# Optional#
sub get_target {
   my ($self, %args) = @_;
   return $self->{'target'}; 	
}

## @method set_target ()
# Sets the given value for 'target' property.
# 
# @param target  - New value for the field.
# Target version of the component present in the software specification.
#
sub set_target {
   my ($self, %args) = @_;
   $self->{'target'} = $args{'target'}; 
   return;	
}

## @method get_current_source ()
# Gets the value of 'current_source' property.
#
# @retval current_source - The current value of the field.
# Source of the component on the host.
#
# Optional#
sub get_current_source {
   my ($self, %args) = @_;
   return $self->{'current_source'}; 	
}

## @method set_current_source ()
# Sets the given value for 'current_source' property.
# 
# @param current_source  - New value for the field.
# Source of the component on the host.
#
sub set_current_source {
   my ($self, %args) = @_;
   $self->{'current_source'} = $args{'current_source'}; 
   return;	
}

## @method get_target_source ()
# Gets the value of 'target_source' property.
#
# @retval target_source - The current value of the field.
# Source of the component in the software specification.
#
# Optional#
sub get_target_source {
   my ($self, %args) = @_;
   return $self->{'target_source'}; 	
}

## @method set_target_source ()
# Sets the given value for 'target_source' property.
# 
# @param target_source  - New value for the field.
# Source of the component in the software specification.
#
sub set_target_source {
   my ($self, %args) = @_;
   $self->{'target_source'} = $args{'target_source'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications describing the compliance result.
#
# Notifications#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications describing the compliance result.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;


