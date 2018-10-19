## @class Com::Vmware::Vcenter::Deployment::StandaloneSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::StandaloneSpec``   *class*  contains
#     information used to configure a standalone embedded vCenter Server appliance. This 
#     *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::StandaloneSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::StandaloneSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::StandaloneSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.standalone_spec');
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_sso_admin_password ()
# Gets the value of 'sso_admin_password' property.
#
# @retval sso_admin_password - The current value of the field.
# The SSO administrator account password. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_sso_admin_password {
   my ($self, %args) = @_;
   return $self->{'sso_admin_password'}; 	
}

## @method set_sso_admin_password ()
# Sets the given value for 'sso_admin_password' property.
# 
# @param sso_admin_password  - New value for the field.
# The SSO administrator account password. This  *field*  was added in vSphere API 6.7.
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
# The SSO domain name to be used to configure this appliance. This  *field*  was added
#     in vSphere API 6.7.
#
# Optional#
sub get_sso_domain_name {
   my ($self, %args) = @_;
   return $self->{'sso_domain_name'}; 	
}

## @method set_sso_domain_name ()
# Sets the given value for 'sso_domain_name' property.
# 
# @param sso_domain_name  - New value for the field.
# The SSO domain name to be used to configure this appliance. This  *field*  was added
#     in vSphere API 6.7.
#
sub set_sso_domain_name {
   my ($self, %args) = @_;
   $self->{'sso_domain_name'} = $args{'sso_domain_name'}; 
   return;	
}


1;


