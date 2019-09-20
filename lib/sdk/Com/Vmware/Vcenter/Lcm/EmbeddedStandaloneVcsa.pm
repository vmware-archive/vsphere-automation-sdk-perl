## @class Com::Vmware::Vcenter::Lcm::EmbeddedStandaloneVcsa
#
#
# Configuration of the standalone Single Sign-On for Embedded type deployment.

package Com::Vmware::Vcenter::Lcm::EmbeddedStandaloneVcsa;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::EmbeddedStandaloneVcsa structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{sso_admin_password} = $args{'sso_admin_password'};
   $self->{sso_domain_name} = $args{'sso_domain_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::EmbeddedStandaloneVcsa');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.embedded_standalone_vcsa');
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'sso_domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_sso_admin_password ()
# Gets the value of 'sso_admin_password' property.
#
# @retval sso_admin_password - The current value of the field.
# Password must conform to the following requirements: 1. At least 8 characters. 2. No
#     more than 20 characters. 3. At least 1 uppercase character. 4. At least 1 lowercase
#     character. 5. At least 1 number. 6. At least 1 special character (e.g., &apos;!&apos;,
#     &apos;(&apos;, &apos;@&apos;, etc.). 7. Only visible A-Z, a-z, 0-9 and punctuation
#     (spaces are not allowed)
#
# Secret#
sub get_sso_admin_password {
   my ($self, %args) = @_;
   return $self->{'sso_admin_password'}; 	
}

## @method set_sso_admin_password ()
# Sets the given value for 'sso_admin_password' property.
# 
# @param sso_admin_password  - New value for the field.
# Password must conform to the following requirements: 1. At least 8 characters. 2. No
#     more than 20 characters. 3. At least 1 uppercase character. 4. At least 1 lowercase
#     character. 5. At least 1 number. 6. At least 1 special character (e.g., &apos;!&apos;,
#     &apos;(&apos;, &apos;@&apos;, etc.). 7. Only visible A-Z, a-z, 0-9 and punctuation
#     (spaces are not allowed)
#
sub set_sso_admin_password {
   my ($self, %args) = @_;
   $self->{'sso_admin_password'} = $args{'sso_admin_password'}; 
   return;	
}

## @method get_sso_domain_name ()
# Gets the value of 'sso_domain_name' property.
#
# @retval sso_domain_name - The current value of the field.
# The Single Sign-On domain name to be used to configure this vCenter Server Appliance.
#     For example, &apos;vsphere.local&apos;
#
# String#
sub get_sso_domain_name {
   my ($self, %args) = @_;
   return $self->{'sso_domain_name'}; 	
}

## @method set_sso_domain_name ()
# Sets the given value for 'sso_domain_name' property.
# 
# @param sso_domain_name  - New value for the field.
# The Single Sign-On domain name to be used to configure this vCenter Server Appliance.
#     For example, &apos;vsphere.local&apos;
#
sub set_sso_domain_name {
   my ($self, %args) = @_;
   $self->{'sso_domain_name'} = $args{'sso_domain_name'}; 
   return;	
}


1;


