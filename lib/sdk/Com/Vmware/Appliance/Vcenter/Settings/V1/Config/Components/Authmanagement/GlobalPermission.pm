## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::GlobalPermission
#
#
# ``GlobalPermissions``   *class*  This structure represents the configuration for
#     Global Permissions

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::GlobalPermission;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::GlobalPermission structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{principal} = $args{'principal'};
   $self->{role_ids} = $args{'role_ids'};
   $self->{propagate} = $args{'propagate'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::GlobalPermission');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.authmanagement.global_permission');
   $self->set_binding_field('key' => 'principal', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'Principal'));
   $self->set_binding_field('key' => 'role_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'propagate', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_principal ()
# Gets the value of 'principal' property.
#
# @retval principal - The current value of the field.
# Role identifier.
#
# Principal#
sub get_principal {
   my ($self, %args) = @_;
   return $self->{'principal'}; 	
}

## @method set_principal ()
# Sets the given value for 'principal' property.
# 
# @param principal  - New value for the field.
# Role identifier.
#
sub set_principal {
   my ($self, %args) = @_;
   $self->{'principal'} = $args{'principal'}; 
   return;	
}

## @method get_role_ids ()
# Gets the value of 'role_ids' property.
#
# @retval role_ids - The current value of the field.
# Role Ids assigned to this Principal
#
# List#
sub get_role_ids {
   my ($self, %args) = @_;
   return $self->{'role_ids'}; 	
}

## @method set_role_ids ()
# Sets the given value for 'role_ids' property.
# 
# @param role_ids  - New value for the field.
# Role Ids assigned to this Principal
#
sub set_role_ids {
   my ($self, %args) = @_;
   $self->{'role_ids'} = $args{'role_ids'}; 
   return;	
}

## @method get_propagate ()
# Gets the value of 'propagate' property.
#
# @retval propagate - The current value of the field.
# Propagating to child objects.
#
# Boolean#
sub get_propagate {
   my ($self, %args) = @_;
   return $self->{'propagate'}; 	
}

## @method set_propagate ()
# Sets the given value for 'propagate' property.
# 
# @param propagate  - New value for the field.
# Propagating to child objects.
#
sub set_propagate {
   my ($self, %args) = @_;
   $self->{'propagate'} = $args{'propagate'}; 
   return;	
}


1;


