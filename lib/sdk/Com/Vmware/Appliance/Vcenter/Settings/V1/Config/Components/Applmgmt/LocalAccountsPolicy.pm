## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccountsPolicy
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccountsPolicy``
#       *interface*  provides  *methods*  to manage local user accounts password lifecycle.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccountsPolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccountsPolicy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{max_days} = $args{'max_days'};
   $self->{min_days} = $args{'min_days'};
   $self->{warn_days} = $args{'warn_days'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccountsPolicy');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.local_accounts_policy');
   $self->set_binding_field('key' => 'max_days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'min_days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'warn_days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_max_days ()
# Gets the value of 'max_days' property.
#
# @retval max_days - The current value of the field.
# Maximum number of days a password may be used. If the password is older than this, a
#     password change will be forced.
#
# Optional#
sub get_max_days {
   my ($self, %args) = @_;
   return $self->{'max_days'}; 	
}

## @method set_max_days ()
# Sets the given value for 'max_days' property.
# 
# @param max_days  - New value for the field.
# Maximum number of days a password may be used. If the password is older than this, a
#     password change will be forced.
#
sub set_max_days {
   my ($self, %args) = @_;
   $self->{'max_days'} = $args{'max_days'}; 
   return;	
}

## @method get_min_days ()
# Gets the value of 'min_days' property.
#
# @retval min_days - The current value of the field.
# Minimum number of days allowed between password changes. Any password changes
#     attempted sooner than this will be rejected.
#
# Optional#
sub get_min_days {
   my ($self, %args) = @_;
   return $self->{'min_days'}; 	
}

## @method set_min_days ()
# Sets the given value for 'min_days' property.
# 
# @param min_days  - New value for the field.
# Minimum number of days allowed between password changes. Any password changes
#     attempted sooner than this will be rejected.
#
sub set_min_days {
   my ($self, %args) = @_;
   $self->{'min_days'} = $args{'min_days'}; 
   return;	
}

## @method get_warn_days ()
# Gets the value of 'warn_days' property.
#
# @retval warn_days - The current value of the field.
# Number of days warning given before a password expires. A zero means warning is given
#     only upon the day of expiration.
#
# Optional#
sub get_warn_days {
   my ($self, %args) = @_;
   return $self->{'warn_days'}; 	
}

## @method set_warn_days ()
# Sets the given value for 'warn_days' property.
# 
# @param warn_days  - New value for the field.
# Number of days warning given before a password expires. A zero means warning is given
#     only upon the day of expiration.
#
sub set_warn_days {
   my ($self, %args) = @_;
   $self->{'warn_days'} = $args{'warn_days'}; 
   return;	
}


1;


