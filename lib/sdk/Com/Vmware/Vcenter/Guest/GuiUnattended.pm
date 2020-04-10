## @class Com::Vmware::Vcenter::Guest::GuiUnattended
#
#
# The  ``Com::Vmware::Vcenter::Guest::GuiUnattended``   *class*  maps to the
#     GuiUnattended key in the sysprep.xml answer file. These values are plugged directly
#     into the sysprep.xml file that VirtualCenter stores on the target virtual disk. For
#     more detailed information about performing unattended installations, check
#     https://technet.microsoft.com/en-us/library/cc771830(v=ws.10).aspx. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::GuiUnattended;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::GuiUnattended structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auto_logon} = $args{'auto_logon'};
   $self->{auto_logon_count} = $args{'auto_logon_count'};
   $self->{password} = $args{'password'};
   $self->{time_zone} = $args{'time_zone'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::GuiUnattended');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.gui_unattended');
   $self->set_binding_field('key' => 'auto_logon', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'auto_logon_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'time_zone', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_auto_logon ()
# Gets the value of 'auto_logon' property.
#
# @retval auto_logon - The current value of the field.
# Flag to determine whether or not the machine automatically logs on as Administrator.
#     See the  :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.password`  property. If 
#     :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.auto_logon`  flag is set, then 
#     :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.password`  must not be  *null*  or
#     the guest customization will fail. This  *field*  was added in vSphere API 7.0.0.
#
# boolean#
sub get_auto_logon {
   my ($self, %args) = @_;
   return $self->{'auto_logon'}; 	
}

## @method set_auto_logon ()
# Sets the given value for 'auto_logon' property.
# 
# @param auto_logon  - New value for the field.
# Flag to determine whether or not the machine automatically logs on as Administrator.
#     See the  :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.password`  property. If 
#     :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.auto_logon`  flag is set, then 
#     :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.password`  must not be  *null*  or
#     the guest customization will fail. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auto_logon {
   my ($self, %args) = @_;
   $self->{'auto_logon'} = $args{'auto_logon'}; 
   return;	
}

## @method get_auto_logon_count ()
# Gets the value of 'auto_logon_count' property.
#
# @retval auto_logon_count - The current value of the field.
# If the  :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.auto_logon`  flag is  *set*
#     , then this property specifies the number of times the machine should automatically
#     log on as Administrator. Generally it should be 1, but if the setup requires a number
#     of reboots, you may want to increase it. This number may be determined by the list of
#     commands. This  *field*  was added in vSphere API 7.0.0.
#
# long#
sub get_auto_logon_count {
   my ($self, %args) = @_;
   return $self->{'auto_logon_count'}; 	
}

## @method set_auto_logon_count ()
# Sets the given value for 'auto_logon_count' property.
# 
# @param auto_logon_count  - New value for the field.
# If the  :attr:`Com::Vmware::Vcenter::Guest::GuiUnattended.auto_logon`  flag is  *set*
#     , then this property specifies the number of times the machine should automatically
#     log on as Administrator. Generally it should be 1, but if the setup requires a number
#     of reboots, you may want to increase it. This number may be determined by the list of
#     commands. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auto_logon_count {
   my ($self, %args) = @_;
   $self->{'auto_logon_count'} = $args{'auto_logon_count'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# The new administrator password for the machine. To specify that the password should be
#     set to blank (that is, no password), leave it unset. This  *field*  was added in
#     vSphere API 7.0.0.
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
# The new administrator password for the machine. To specify that the password should be
#     set to blank (that is, no password), leave it unset. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_time_zone ()
# Gets the value of 'time_zone' property.
#
# @retval time_zone - The current value of the field.
# The time zone index for the virtual machine. Numbers correspond to time zones at
#     https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values. This
#      *field*  was added in vSphere API 7.0.0.
#
# long#
sub get_time_zone {
   my ($self, %args) = @_;
   return $self->{'time_zone'}; 	
}

## @method set_time_zone ()
# Sets the given value for 'time_zone' property.
# 
# @param time_zone  - New value for the field.
# The time zone index for the virtual machine. Numbers correspond to time zones at
#     https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values. This
#      *field*  was added in vSphere API 7.0.0.
#
sub set_time_zone {
   my ($self, %args) = @_;
   $self->{'time_zone'} = $args{'time_zone'}; 
   return;	
}


1;


