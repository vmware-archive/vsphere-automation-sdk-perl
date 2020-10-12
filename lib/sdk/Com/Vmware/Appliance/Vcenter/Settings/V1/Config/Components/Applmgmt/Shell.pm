## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Shell
#
#
# Get/Set enabled state of BASH, that is, access to BASH from within the controlled CLI.
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Shell``
#       *interface*  provides  *methods* .

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Shell;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Shell structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{enabled} = $args{'enabled'};
   $self->{timeout} = $args{'timeout'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Shell');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.shell');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'timeout', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Enabled can be set to true or false
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Enabled can be set to true or false
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_timeout ()
# Gets the value of 'timeout' property.
#
# @retval timeout - The current value of the field.
# The timeout (in seconds) specifies how long you enable the Shell access. The maximum
#     timeout is 86400 seconds(1 day).
#
# long#
sub get_timeout {
   my ($self, %args) = @_;
   return $self->{'timeout'}; 	
}

## @method set_timeout ()
# Sets the given value for 'timeout' property.
# 
# @param timeout  - New value for the field.
# The timeout (in seconds) specifies how long you enable the Shell access. The maximum
#     timeout is 86400 seconds(1 day).
#
sub set_timeout {
   my ($self, %args) = @_;
   $self->{'timeout'} = $args{'timeout'}; 
   return;	
}


1;


