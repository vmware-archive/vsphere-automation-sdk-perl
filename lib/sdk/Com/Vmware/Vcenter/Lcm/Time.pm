## @class Com::Vmware::Vcenter::Lcm::Time
#
#
# NTP setting of the appliance to be deployed.

package Com::Vmware::Vcenter::Lcm::Time;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Time structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ntp_servers} = $args{'ntp_servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Time');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.time');
   $self->set_binding_field('key' => 'ntp_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_ntp_servers ()
# Gets the value of 'ntp_servers' property.
#
# @retval ntp_servers - The current value of the field.
# To configure NTP time synchronization for the appliance, set the value to a comma -
#     separated list of host names or IP addresses of Network Time Protocol(NTP) servers. If
#     &quot;ntp_servers&quot; is not provided, the appliance clock will be synced to the
#     ESX. For example: [&quot;time.nist.gov&quot;].
#
# Optional#
sub get_ntp_servers {
   my ($self, %args) = @_;
   return $self->{'ntp_servers'}; 	
}

## @method set_ntp_servers ()
# Sets the given value for 'ntp_servers' property.
# 
# @param ntp_servers  - New value for the field.
# To configure NTP time synchronization for the appliance, set the value to a comma -
#     separated list of host names or IP addresses of Network Time Protocol(NTP) servers. If
#     &quot;ntp_servers&quot; is not provided, the appliance clock will be synced to the
#     ESX. For example: [&quot;time.nist.gov&quot;].
#
sub set_ntp_servers {
   my ($self, %args) = @_;
   $self->{'ntp_servers'} = $args{'ntp_servers'}; 
   return;	
}


1;


