## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RetentionInfo
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RetentionInfo``
#       *class*  contains retention information associated with a schedule.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RetentionInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RetentionInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{max_count} = $args{'max_count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RetentionInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.retention_info');
   $self->set_binding_field('key' => 'max_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_max_count ()
# Gets the value of 'max_count' property.
#
# @retval max_count - The current value of the field.
# Number of backups which should be retained. If retention is not set, all the backups
#     will be retained forever.
#
# Long#
sub get_max_count {
   my ($self, %args) = @_;
   return $self->{'max_count'}; 	
}

## @method set_max_count ()
# Sets the given value for 'max_count' property.
# 
# @param max_count  - New value for the field.
# Number of backups which should be retained. If retention is not set, all the backups
#     will be retained forever.
#
sub set_max_count {
   my ($self, %args) = @_;
   $self->{'max_count'} = $args{'max_count'}; 
   return;	
}


1;


