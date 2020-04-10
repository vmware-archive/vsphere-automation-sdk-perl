## @class Com::Vmware::Vcenter::Lcm::Discovery::Product
#
#
# The  ``Info``   *class*  contains information about a VMware product which is present
#     in the customer Environemnt. The following information about the products are present:
#     <ul>
#  <li> Name </li>
# <li> Version </li>
# <li> Deployments </li>
# <li> Automatically Discovered or Manually Added </li>
# </ul>

package Com::Vmware::Vcenter::Lcm::Discovery::Product;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::Product structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{installed_product} = $args{'installed_product'};
   $self->{name} = $args{'name'};
   $self->{version} = $args{'version'};
   $self->{target_version} = $args{'target_version'};
   $self->{deployments} = $args{'deployments'};
   $self->{auto} = $args{'auto'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::Product');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.product');
   $self->set_binding_field('key' => 'installed_product', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'target_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'deployments', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'auto', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_installed_product ()
# Gets the value of 'installed_product' property.
#
# @retval installed_product - The current value of the field.
# Identifies a product and a version uniquely. <p>
# 
# The identifier consists of product internal name and version.</p>
#
# ID#
sub get_installed_product {
   my ($self, %args) = @_;
   return $self->{'installed_product'}; 	
}

## @method set_installed_product ()
# Sets the given value for 'installed_product' property.
# 
# @param installed_product  - New value for the field.
# Identifies a product and a version uniquely. <p>
# 
# The identifier consists of product internal name and version.</p>
#
sub set_installed_product {
   my ($self, %args) = @_;
   $self->{'installed_product'} = $args{'installed_product'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# A public official product name.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# A public official product name.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Current product version.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Current product version.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_target_version ()
# Gets the value of 'target_version' property.
#
# @retval target_version - The current value of the field.
# Future version of the product after upgrade.
#
# Optional#
sub get_target_version {
   my ($self, %args) = @_;
   return $self->{'target_version'}; 	
}

## @method set_target_version ()
# Sets the given value for 'target_version' property.
# 
# @param target_version  - New value for the field.
# Future version of the product after upgrade.
#
sub set_target_version {
   my ($self, %args) = @_;
   $self->{'target_version'} = $args{'target_version'}; 
   return;	
}

## @method get_deployments ()
# Gets the value of 'deployments' property.
#
# @retval deployments - The current value of the field.
# The list of hostname/IPs of the instances of the VMware products deployed in the
#     environment. This field would be empty for manually added products.
#
# Optional#
sub get_deployments {
   my ($self, %args) = @_;
   return $self->{'deployments'}; 	
}

## @method set_deployments ()
# Sets the given value for 'deployments' property.
# 
# @param deployments  - New value for the field.
# The list of hostname/IPs of the instances of the VMware products deployed in the
#     environment. This field would be empty for manually added products.
#
sub set_deployments {
   my ($self, %args) = @_;
   $self->{'deployments'} = $args{'deployments'}; 
   return;	
}

## @method get_auto ()
# Gets the value of 'auto' property.
#
# @retval auto - The current value of the field.
# Indicates if the product is auto-detected by the system or manually added. If it is
#     set to true it means it is auto-detected.
#
# boolean#
sub get_auto {
   my ($self, %args) = @_;
   return $self->{'auto'}; 	
}

## @method set_auto ()
# Sets the given value for 'auto' property.
# 
# @param auto  - New value for the field.
# Indicates if the product is auto-detected by the system or manually added. If it is
#     set to true it means it is auto-detected.
#
sub set_auto {
   my ($self, %args) = @_;
   $self->{'auto'} = $args{'auto'}; 
   return;	
}


1;


