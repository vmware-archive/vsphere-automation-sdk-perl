## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::TokenPolicy
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::TokenPolicy``
#       *class*  This structure represents the configuration in Token Policy.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::TokenPolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::TokenPolicy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{clock_tolerance} = $args{'clock_tolerance'};
   $self->{token_renewal} = $args{'token_renewal'};
   $self->{token_delegation} = $args{'token_delegation'};
   $self->{bearer_refresh} = $args{'bearer_refresh'};
   $self->{hok_refresh} = $args{'hok_refresh'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::TokenPolicy');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.authmanagement.token_policy');
   $self->set_binding_field('key' => 'clock_tolerance', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'token_renewal', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'token_delegation', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'bearer_refresh', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'hok_refresh', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_clock_tolerance ()
# Gets the value of 'clock_tolerance' property.
#
# @retval clock_tolerance - The current value of the field.
# Clock tolerance ms.
#
# Long#
sub get_clock_tolerance {
   my ($self, %args) = @_;
   return $self->{'clock_tolerance'}; 	
}

## @method set_clock_tolerance ()
# Sets the given value for 'clock_tolerance' property.
# 
# @param clock_tolerance  - New value for the field.
# Clock tolerance ms.
#
sub set_clock_tolerance {
   my ($self, %args) = @_;
   $self->{'clock_tolerance'} = $args{'clock_tolerance'}; 
   return;	
}

## @method get_token_renewal ()
# Gets the value of 'token_renewal' property.
#
# @retval token_renewal - The current value of the field.
# Maximum token renewal count.
#
# Long#
sub get_token_renewal {
   my ($self, %args) = @_;
   return $self->{'token_renewal'}; 	
}

## @method set_token_renewal ()
# Sets the given value for 'token_renewal' property.
# 
# @param token_renewal  - New value for the field.
# Maximum token renewal count.
#
sub set_token_renewal {
   my ($self, %args) = @_;
   $self->{'token_renewal'} = $args{'token_renewal'}; 
   return;	
}

## @method get_token_delegation ()
# Gets the value of 'token_delegation' property.
#
# @retval token_delegation - The current value of the field.
# Maximum token delegation count.
#
# Long#
sub get_token_delegation {
   my ($self, %args) = @_;
   return $self->{'token_delegation'}; 	
}

## @method set_token_delegation ()
# Sets the given value for 'token_delegation' property.
# 
# @param token_delegation  - New value for the field.
# Maximum token delegation count.
#
sub set_token_delegation {
   my ($self, %args) = @_;
   $self->{'token_delegation'} = $args{'token_delegation'}; 
   return;	
}

## @method get_bearer_refresh ()
# Gets the value of 'bearer_refresh' property.
#
# @retval bearer_refresh - The current value of the field.
# Maximum Bearer RefreshToken lifetime.
#
# Long#
sub get_bearer_refresh {
   my ($self, %args) = @_;
   return $self->{'bearer_refresh'}; 	
}

## @method set_bearer_refresh ()
# Sets the given value for 'bearer_refresh' property.
# 
# @param bearer_refresh  - New value for the field.
# Maximum Bearer RefreshToken lifetime.
#
sub set_bearer_refresh {
   my ($self, %args) = @_;
   $self->{'bearer_refresh'} = $args{'bearer_refresh'}; 
   return;	
}

## @method get_hok_refresh ()
# Gets the value of 'hok_refresh' property.
#
# @retval hok_refresh - The current value of the field.
# Maximum HoK RefreshToken lifetime.
#
# Long#
sub get_hok_refresh {
   my ($self, %args) = @_;
   return $self->{'hok_refresh'}; 	
}

## @method set_hok_refresh ()
# Sets the given value for 'hok_refresh' property.
# 
# @param hok_refresh  - New value for the field.
# Maximum HoK RefreshToken lifetime.
#
sub set_hok_refresh {
   my ($self, %args) = @_;
   $self->{'hok_refresh'} = $args{'hok_refresh'}; 
   return;	
}


1;


