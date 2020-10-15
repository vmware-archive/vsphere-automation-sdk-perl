## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy
#
#
# This 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy``
#       *class*  to set/get background check for the new updates.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{custom_URL} = $args{'custom_URL'};
   $self->{default_URL} = $args{'default_URL'};
   $self->{auto_stage} = $args{'auto_stage'};
   $self->{check_schedule} = $args{'check_schedule'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};
   $self->{certificate_check} = $args{'certificate_check'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.software_update_policy');
   $self->set_binding_field('key' => 'custom_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'default_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'auto_stage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'SoftwareUpdatePolicy::AutoUpdateNotification'));
   $self->set_binding_field('key' => 'check_schedule', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Time')));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'certificate_check', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_custom_URL ()
# Gets the value of 'custom_URL' property.
#
# @retval custom_URL - The current value of the field.
# Current appliance update repository URL. Enter &quot;default&quot; to reset the url to
#     the default url.
#
# Optional#
sub get_custom_URL {
   my ($self, %args) = @_;
   return $self->{'custom_URL'}; 	
}

## @method set_custom_URL ()
# Sets the given value for 'custom_URL' property.
# 
# @param custom_URL  - New value for the field.
# Current appliance update repository URL. Enter &quot;default&quot; to reset the url to
#     the default url.
#
sub set_custom_URL {
   my ($self, %args) = @_;
   $self->{'custom_URL'} = $args{'custom_URL'}; 
   return;	
}

## @method get_default_URL ()
# Gets the value of 'default_URL' property.
#
# @retval default_URL - The current value of the field.
# Default appliance update repository URL.
#
# Optional#
sub get_default_URL {
   my ($self, %args) = @_;
   return $self->{'default_URL'}; 	
}

## @method set_default_URL ()
# Sets the given value for 'default_URL' property.
# 
# @param default_URL  - New value for the field.
# Default appliance update repository URL.
#
sub set_default_URL {
   my ($self, %args) = @_;
   $self->{'default_URL'} = $args{'default_URL'}; 
   return;	
}

## @method get_auto_stage ()
# Gets the value of 'auto_stage' property.
#
# @retval auto_stage - The current value of the field.
# Check for update at the pre-configured repository URL.
#
# AutoUpdateNotification#
sub get_auto_stage {
   my ($self, %args) = @_;
   return $self->{'auto_stage'}; 	
}

## @method set_auto_stage ()
# Sets the given value for 'auto_stage' property.
# 
# @param auto_stage  - New value for the field.
# Check for update at the pre-configured repository URL.
#
sub set_auto_stage {
   my ($self, %args) = @_;
   $self->{'auto_stage'} = $args{'auto_stage'}; 
   return;	
}

## @method get_check_schedule ()
# Gets the value of 'check_schedule' property.
#
# @retval check_schedule - The current value of the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time`` 
#      *class*  defines day and time the automatic check for new updates will be run.
#
# Optional#
sub get_check_schedule {
   my ($self, %args) = @_;
   return $self->{'check_schedule'}; 	
}

## @method set_check_schedule ()
# Sets the given value for 'check_schedule' property.
# 
# @param check_schedule  - New value for the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time`` 
#      *class*  defines day and time the automatic check for new updates will be run.
#
sub set_check_schedule {
   my ($self, %args) = @_;
   $self->{'check_schedule'} = $args{'check_schedule'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for the url update repository
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username for the url update repository
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password for the url update repository
#
# Optional#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password for the url update repository
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_certificate_check ()
# Gets the value of 'certificate_check' property.
#
# @retval certificate_check - The current value of the field.
# Indicates whether certificates will be checked during patching. <p>
# 
# Warning: If this  *field*  is set to false, an insecure connection is made to the
#     update repository which can potentially put the appliance security at risk.</p>
#
# boolean#
sub get_certificate_check {
   my ($self, %args) = @_;
   return $self->{'certificate_check'}; 	
}

## @method set_certificate_check ()
# Sets the given value for 'certificate_check' property.
# 
# @param certificate_check  - New value for the field.
# Indicates whether certificates will be checked during patching. <p>
# 
# Warning: If this  *field*  is set to false, an insecure connection is made to the
#     update repository which can potentially put the appliance security at risk.</p>
#
sub set_certificate_check {
   my ($self, %args) = @_;
   $self->{'certificate_check'} = $args{'certificate_check'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy::AutoUpdateNotification
#
# Defines state for automatic update notification. 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy::AutoUpdateNotification``
#       *enumerated type* 
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy::AutoUpdateNotification::DISABLED #
#Automatic update notification is disabled. Disable periodically query the configured url
# for updates.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy::AutoUpdateNotification::ENABLED #
#Automatic update notification is enabled. Enable periodically query the configured url for
# updates.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy::AutoUpdateNotification;

use constant {
    DISABLED =>  'DISABLED',
    ENABLED =>  'ENABLED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy::AutoUpdateNotification enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.software_update_policy.auto_update_notification',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::SoftwareUpdatePolicy::AutoUpdateNotification');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


