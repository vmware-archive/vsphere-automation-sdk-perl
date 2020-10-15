## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Principal
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Principal``
#       *class*  This structure represents the configuration for Principal

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Principal;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Principal structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{group} = $args{'group'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::Principal');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.authmanagement.principal');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'group', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Principal name.
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
# Principal name.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_group ()
# Gets the value of 'group' property.
#
# @retval group - The current value of the field.
# Is a Group
#
# Boolean#
sub get_group {
   my ($self, %args) = @_;
   return $self->{'group'}; 	
}

## @method set_group ()
# Sets the given value for 'group' property.
# 
# @param group  - New value for the field.
# Is a Group
#
sub set_group {
   my ($self, %args) = @_;
   $self->{'group'} = $args{'group'}; 
   return;	
}


1;


