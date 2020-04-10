## @class Com::Vmware::Vcenter::Guest::WindowsSysprep
#
#
# The  ``Com::Vmware::Vcenter::Guest::WindowsSysprep``   *class*  provides all the
#     settings like user details, administrator details, etc that need to applied for a
#     windows guest operating system during customization. This  *class*  was added in
#     vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::WindowsSysprep;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::WindowsSysprep structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{gui_run_once_commands} = $args{'gui_run_once_commands'};
   $self->{user_data} = $args{'user_data'};
   $self->{domain} = $args{'domain'};
   $self->{gui_unattended} = $args{'gui_unattended'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::WindowsSysprep');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.windows_sysprep');
   $self->set_binding_field('key' => 'gui_run_once_commands', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'user_data', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'UserData'));
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'Domain')));
   $self->set_binding_field('key' => 'gui_unattended', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'GuiUnattended'));
   bless $self, $class;
   return $self;
}

## @method get_gui_run_once_commands ()
# Gets the value of 'gui_run_once_commands' property.
#
# @retval gui_run_once_commands - The current value of the field.
# A list of commands to run at first user logon, after customizing the guest. These
#     commands are directly mapped to the GuiRunOnce key in the sysprep.xml answer file.
#     These commands are transferred into the sysprep.xml file that VirtualCenter stores on
#     the target virtual disk. For more information about performing unattended
#     installation, check https://technet.microsoft.com/en-us/library/cc771830(v=ws.10).aspx
#     The commands listed here ar executed when a user logs on the first time after
#     customization completes. The logon may be driven by 
#     :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.auto_logon`  setting. These commands
#     are directly mapped to the GuiRunOnce key in the. This  *field*  was added in vSphere
#     API 7.0.0.
#
# Optional#
sub get_gui_run_once_commands {
   my ($self, %args) = @_;
   return $self->{'gui_run_once_commands'}; 	
}

## @method set_gui_run_once_commands ()
# Sets the given value for 'gui_run_once_commands' property.
# 
# @param gui_run_once_commands  - New value for the field.
# A list of commands to run at first user logon, after customizing the guest. These
#     commands are directly mapped to the GuiRunOnce key in the sysprep.xml answer file.
#     These commands are transferred into the sysprep.xml file that VirtualCenter stores on
#     the target virtual disk. For more information about performing unattended
#     installation, check https://technet.microsoft.com/en-us/library/cc771830(v=ws.10).aspx
#     The commands listed here ar executed when a user logs on the first time after
#     customization completes. The logon may be driven by 
#     :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.auto_logon`  setting. These commands
#     are directly mapped to the GuiRunOnce key in the. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_gui_run_once_commands {
   my ($self, %args) = @_;
   $self->{'gui_run_once_commands'} = $args{'gui_run_once_commands'}; 
   return;	
}

## @method get_user_data ()
# Gets the value of 'user_data' property.
#
# @retval user_data - The current value of the field.
# Personal data pertaining to the owner of the virtual machine. This  *field*  was added
#     in vSphere API 7.0.0.
#
# UserData#
sub get_user_data {
   my ($self, %args) = @_;
   return $self->{'user_data'}; 	
}

## @method set_user_data ()
# Sets the given value for 'user_data' property.
# 
# @param user_data  - New value for the field.
# Personal data pertaining to the owner of the virtual machine. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_user_data {
   my ($self, %args) = @_;
   $self->{'user_data'} = $args{'user_data'}; 
   return;	
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# Information needed to join a workgroup or domain. This  *field*  was added in vSphere
#     API 7.0.0.
#
# Optional#
sub get_domain {
   my ($self, %args) = @_;
   return $self->{'domain'}; 	
}

## @method set_domain ()
# Sets the given value for 'domain' property.
# 
# @param domain  - New value for the field.
# Information needed to join a workgroup or domain. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}

## @method get_gui_unattended ()
# Gets the value of 'gui_unattended' property.
#
# @retval gui_unattended - The current value of the field.
# Information related to unattended installation. This  *field*  was added in vSphere
#     API 7.0.0.
#
# GuiUnattended#
sub get_gui_unattended {
   my ($self, %args) = @_;
   return $self->{'gui_unattended'}; 	
}

## @method set_gui_unattended ()
# Sets the given value for 'gui_unattended' property.
# 
# @param gui_unattended  - New value for the field.
# Information related to unattended installation. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_gui_unattended {
   my ($self, %args) = @_;
   $self->{'gui_unattended'} = $args{'gui_unattended'}; 
   return;	
}


1;


