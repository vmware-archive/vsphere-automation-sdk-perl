## @class Com::Vmware::Vcenter::Guest::UserData
#
#
# The  ``Com::Vmware::Vcenter::Guest::UserData``   *class*  specifies the personal data
#     pertaining to the user of the Windows guest operating system. This  *class*  maps to
#     the UserData key in the sysprep.xml answer file. These values are transferred directly
#     into the sysprep.xml file that VirtualCenter stores on the target virtual disk. For
#     more detailed information about performing unattended installation, check
#     https://technet.microsoft.com/en-us/library/cc771830(v=ws.10).aspx. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::UserData;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::UserData structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{computer_name} = $args{'computer_name'};
   $self->{full_name} = $args{'full_name'};
   $self->{organization} = $args{'organization'};
   $self->{product_key} = $args{'product_key'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::UserData');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.user_data');
   $self->set_binding_field('key' => 'computer_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'HostnameGenerator'));
   $self->set_binding_field('key' => 'full_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'organization', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'product_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_computer_name ()
# Gets the value of 'computer_name' property.
#
# @retval computer_name - The current value of the field.
# The computer name of the (Windows) virtual machine. A computer name may contain
#     letters (A-Z), numbers(0-9) and hyphens (-) but no spaces or periods (.). The name may
#     not consist entirely of digits. A computer name is restricted to 15 characters in
#     length. If the computer name is longer than 15 characters, it will be truncated to 15
#     characters. Check  class Com::Vmware::Vcenter::Guest::HostnameGenerator  for various
#     options. This  *field*  was added in vSphere API 7.0.0.
#
# HostnameGenerator#
sub get_computer_name {
   my ($self, %args) = @_;
   return $self->{'computer_name'}; 	
}

## @method set_computer_name ()
# Sets the given value for 'computer_name' property.
# 
# @param computer_name  - New value for the field.
# The computer name of the (Windows) virtual machine. A computer name may contain
#     letters (A-Z), numbers(0-9) and hyphens (-) but no spaces or periods (.). The name may
#     not consist entirely of digits. A computer name is restricted to 15 characters in
#     length. If the computer name is longer than 15 characters, it will be truncated to 15
#     characters. Check  class Com::Vmware::Vcenter::Guest::HostnameGenerator  for various
#     options. This  *field*  was added in vSphere API 7.0.0.
#
sub set_computer_name {
   my ($self, %args) = @_;
   $self->{'computer_name'} = $args{'computer_name'}; 
   return;	
}

## @method get_full_name ()
# Gets the value of 'full_name' property.
#
# @retval full_name - The current value of the field.
# Full name of the end user. Note that this is not the username but full name specified
#     in &quot;Firstname Lastname&quot; format. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_full_name {
   my ($self, %args) = @_;
   return $self->{'full_name'}; 	
}

## @method set_full_name ()
# Sets the given value for 'full_name' property.
# 
# @param full_name  - New value for the field.
# Full name of the end user. Note that this is not the username but full name specified
#     in &quot;Firstname Lastname&quot; format. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_full_name {
   my ($self, %args) = @_;
   $self->{'full_name'} = $args{'full_name'}; 
   return;	
}

## @method get_organization ()
# Gets the value of 'organization' property.
#
# @retval organization - The current value of the field.
# Name of the organization that owns the computer. This  *field*  was added in vSphere
#     API 7.0.0.
#
# String#
sub get_organization {
   my ($self, %args) = @_;
   return $self->{'organization'}; 	
}

## @method set_organization ()
# Sets the given value for 'organization' property.
# 
# @param organization  - New value for the field.
# Name of the organization that owns the computer. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_organization {
   my ($self, %args) = @_;
   $self->{'organization'} = $args{'organization'}; 
   return;	
}

## @method get_product_key ()
# Gets the value of 'product_key' property.
#
# @retval product_key - The current value of the field.
# The product Key to use for activating Windows guest operating system. This  *field* 
#     was added in vSphere API 7.0.0.
#
# String#
sub get_product_key {
   my ($self, %args) = @_;
   return $self->{'product_key'}; 	
}

## @method set_product_key ()
# Sets the given value for 'product_key' property.
# 
# @param product_key  - New value for the field.
# The product Key to use for activating Windows guest operating system. This  *field* 
#     was added in vSphere API 7.0.0.
#
sub set_product_key {
   my ($self, %args) = @_;
   $self->{'product_key'} = $args{'product_key'}; 
   return;	
}


1;


