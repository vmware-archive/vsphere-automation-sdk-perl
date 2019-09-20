## @class Com::Vmware::Vcenter::Lcm::DeploymentInfo
#
#
# Information about the appliance deployed.

package Com::Vmware::Vcenter::Lcm::DeploymentInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::DeploymentInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{appliance_name} = $args{'appliance_name'};
   $self->{appliance_fqdn} = $args{'appliance_fqdn'};
   $self->{appliance_ips} = $args{'appliance_ips'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::DeploymentInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.deployment_info');
   $self->set_binding_field('key' => 'appliance_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'appliance_fqdn', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'appliance_ips', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_appliance_name ()
# Gets the value of 'appliance_name' property.
#
# @retval appliance_name - The current value of the field.
# The name of the appliance.
#
# String#
sub get_appliance_name {
   my ($self, %args) = @_;
   return $self->{'appliance_name'}; 	
}

## @method set_appliance_name ()
# Sets the given value for 'appliance_name' property.
# 
# @param appliance_name  - New value for the field.
# The name of the appliance.
#
sub set_appliance_name {
   my ($self, %args) = @_;
   $self->{'appliance_name'} = $args{'appliance_name'}; 
   return;	
}

## @method get_appliance_fqdn ()
# Gets the value of 'appliance_fqdn' property.
#
# @retval appliance_fqdn - The current value of the field.
# The FQDN of the appliance.
#
# Optional#
sub get_appliance_fqdn {
   my ($self, %args) = @_;
   return $self->{'appliance_fqdn'}; 	
}

## @method set_appliance_fqdn ()
# Sets the given value for 'appliance_fqdn' property.
# 
# @param appliance_fqdn  - New value for the field.
# The FQDN of the appliance.
#
sub set_appliance_fqdn {
   my ($self, %args) = @_;
   $self->{'appliance_fqdn'} = $args{'appliance_fqdn'}; 
   return;	
}

## @method get_appliance_ips ()
# Gets the value of 'appliance_ips' property.
#
# @retval appliance_ips - The current value of the field.
# The ip addresses of the appliance.
#
# Optional#
sub get_appliance_ips {
   my ($self, %args) = @_;
   return $self->{'appliance_ips'}; 	
}

## @method set_appliance_ips ()
# Sets the given value for 'appliance_ips' property.
# 
# @param appliance_ips  - New value for the field.
# The ip addresses of the appliance.
#
sub set_appliance_ips {
   my ($self, %args) = @_;
   $self->{'appliance_ips'} = $args{'appliance_ips'}; 
   return;	
}


1;


