## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::LockoutPolicy
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::LockoutPolicy``
#       *class*  This structure represents the configuration in Lockout Policy.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::LockoutPolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::LockoutPolicy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{failed_login_attempts} = $args{'failed_login_attempts'};
   $self->{failure_interval} = $args{'failure_interval'};
   $self->{unlock_time} = $args{'unlock_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::LockoutPolicy');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.authmanagement.lockout_policy');
   $self->set_binding_field('key' => 'failed_login_attempts', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'failure_interval', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'unlock_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_failed_login_attempts ()
# Gets the value of 'failed_login_attempts' property.
#
# @retval failed_login_attempts - The current value of the field.
# Maximum number of failed login attempts.
#
# Long#
sub get_failed_login_attempts {
   my ($self, %args) = @_;
   return $self->{'failed_login_attempts'}; 	
}

## @method set_failed_login_attempts ()
# Sets the given value for 'failed_login_attempts' property.
# 
# @param failed_login_attempts  - New value for the field.
# Maximum number of failed login attempts.
#
sub set_failed_login_attempts {
   my ($self, %args) = @_;
   $self->{'failed_login_attempts'} = $args{'failed_login_attempts'}; 
   return;	
}

## @method get_failure_interval ()
# Gets the value of 'failure_interval' property.
#
# @retval failure_interval - The current value of the field.
# Time interval between failures.
#
# Long#
sub get_failure_interval {
   my ($self, %args) = @_;
   return $self->{'failure_interval'}; 	
}

## @method set_failure_interval ()
# Sets the given value for 'failure_interval' property.
# 
# @param failure_interval  - New value for the field.
# Time interval between failures.
#
sub set_failure_interval {
   my ($self, %args) = @_;
   $self->{'failure_interval'} = $args{'failure_interval'}; 
   return;	
}

## @method get_unlock_time ()
# Gets the value of 'unlock_time' property.
#
# @retval unlock_time - The current value of the field.
# Unlock time.
#
# Long#
sub get_unlock_time {
   my ($self, %args) = @_;
   return $self->{'unlock_time'}; 	
}

## @method set_unlock_time ()
# Sets the given value for 'unlock_time' property.
# 
# @param unlock_time  - New value for the field.
# Unlock time.
#
sub set_unlock_time {
   my ($self, %args) = @_;
   $self->{'unlock_time'} = $args{'unlock_time'}; 
   return;	
}


1;


