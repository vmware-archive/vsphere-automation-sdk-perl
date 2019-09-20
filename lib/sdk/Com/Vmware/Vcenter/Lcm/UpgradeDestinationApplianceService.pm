## @class Com::Vmware::Vcenter::Lcm::UpgradeDestinationApplianceService
#
#
# Configurable services of destination appliance for upgrade/migrate operation.

package Com::Vmware::Vcenter::Lcm::UpgradeDestinationApplianceService;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::UpgradeDestinationApplianceService structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ssh} = $args{'ssh'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::UpgradeDestinationApplianceService');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.upgrade_destination_appliance_service');
   $self->set_binding_field('key' => 'ssh', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Ssh'));
   bless $self, $class;
   return $self;
}

## @method get_ssh ()
# Gets the value of 'ssh' property.
#
# @retval ssh - The current value of the field.
# Whether to enable SSH on the vCenter Appliance.
#
# Ssh#
sub get_ssh {
   my ($self, %args) = @_;
   return $self->{'ssh'}; 	
}

## @method set_ssh ()
# Sets the given value for 'ssh' property.
# 
# @param ssh  - New value for the field.
# Whether to enable SSH on the vCenter Appliance.
#
sub set_ssh {
   my ($self, %args) = @_;
   $self->{'ssh'} = $args{'ssh'}; 
   return;	
}


1;


