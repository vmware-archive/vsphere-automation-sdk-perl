## @class Com::Vmware::Vcenter::Lcm::PscStandalone
#
#
# Configuration of the standalone Single Sign-On for Embedded type deployment.

package Com::Vmware::Vcenter::Lcm::PscStandalone;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::PscStandalone structure
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
   $self->{sso_site_name} = $args{'sso_site_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::PscStandalone');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.psc_standalone');
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'sso_domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_site_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
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
# Domain name of the newly deployed PSC. For example, &apos;vsphere.local&apos;
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
# Domain name of the newly deployed PSC. For example, &apos;vsphere.local&apos;
#
sub set_sso_domain_name {
   my ($self, %args) = @_;
   $self->{'sso_domain_name'} = $args{'sso_domain_name'}; 
   return;	
}

## @method get_sso_site_name ()
# Gets the value of 'sso_site_name' property.
#
# @retval sso_site_name - The current value of the field.
# Site name of the PSC.
#
# Optional#
sub get_sso_site_name {
   my ($self, %args) = @_;
   return $self->{'sso_site_name'}; 	
}

## @method set_sso_site_name ()
# Sets the given value for 'sso_site_name' property.
# 
# @param sso_site_name  - New value for the field.
# Site name of the PSC.
#
sub set_sso_site_name {
   my ($self, %args) = @_;
   $self->{'sso_site_name'} = $args{'sso_site_name'}; 
   return;	
}


1;


