## @class Com::Vmware::Vcenter::Lcm::GuestCredential
#
#
# Configuration of the guest credential.

package Com::Vmware::Vcenter::Lcm::GuestCredential;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::GuestCredential structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{os_username} = $args{'os_username'};
   $self->{os_password} = $args{'os_password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::GuestCredential');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.guest_credential');
   $self->set_binding_field('key' => 'os_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'os_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_os_username ()
# Gets the value of 'os_username' property.
#
# @retval os_username - The current value of the field.
# Administrator username for the source Windows operating system.
#
# String#
sub get_os_username {
   my ($self, %args) = @_;
   return $self->{'os_username'}; 	
}

## @method set_os_username ()
# Sets the given value for 'os_username' property.
# 
# @param os_username  - New value for the field.
# Administrator username for the source Windows operating system.
#
sub set_os_username {
   my ($self, %args) = @_;
   $self->{'os_username'} = $args{'os_username'}; 
   return;	
}

## @method get_os_password ()
# Gets the value of 'os_password' property.
#
# @retval os_password - The current value of the field.
# Administrator user password for the source Windows operating system.
#
# Secret#
sub get_os_password {
   my ($self, %args) = @_;
   return $self->{'os_password'}; 	
}

## @method set_os_password ()
# Sets the given value for 'os_password' property.
# 
# @param os_password  - New value for the field.
# Administrator user password for the source Windows operating system.
#
sub set_os_password {
   my ($self, %args) = @_;
   $self->{'os_password'} = $args{'os_password'}; 
   return;	
}


1;


