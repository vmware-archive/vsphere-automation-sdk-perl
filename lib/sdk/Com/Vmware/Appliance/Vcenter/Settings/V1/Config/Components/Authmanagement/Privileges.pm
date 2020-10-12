## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Privileges
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Privileges``
#       *class*  This structure represents the configuration for Privileges.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Privileges;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Privileges structure
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
   $self->{description} = $args{'description'};
   $self->{group} = $args{'group'};
   $self->{is_on_parent} = $args{'is_on_parent'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Privileges');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.authmanagement.privileges');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'group', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'is_on_parent', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Privilege identifier.
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
# Privilege identifier.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Privilege description.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Privilege description.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_group ()
# Gets the value of 'group' property.
#
# @retval group - The current value of the field.
# Group to which the privilege belongs to.
#
# String#
sub get_group {
   my ($self, %args) = @_;
   return $self->{'group'}; 	
}

## @method set_group ()
# Sets the given value for 'group' property.
# 
# @param group  - New value for the field.
# Group to which the privilege belongs to.
#
sub set_group {
   my ($self, %args) = @_;
   $self->{'group'} = $args{'group'}; 
   return;	
}

## @method get_is_on_parent ()
# Gets the value of 'is_on_parent' property.
#
# @retval is_on_parent - The current value of the field.
# Is on parent.
#
# Boolean#
sub get_is_on_parent {
   my ($self, %args) = @_;
   return $self->{'is_on_parent'}; 	
}

## @method set_is_on_parent ()
# Sets the given value for 'is_on_parent' property.
# 
# @param is_on_parent  - New value for the field.
# Is on parent.
#
sub set_is_on_parent {
   my ($self, %args) = @_;
   $self->{'is_on_parent'} = $args{'is_on_parent'}; 
   return;	
}


1;


