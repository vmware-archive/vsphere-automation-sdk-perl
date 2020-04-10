########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file AssociatedProducts.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts``   *interface* 
#     provides options to list, add, modify, and delete VMware products associated with
#     vCenter Server. Some products can be auto-detected by the system while others can be
#     added manually.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the products interface.

package Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProductsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.lcm.discovery.associated_products';


## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method list ()
# Retrieves a list of all associated VMware product deployments with vCenter Server in the
# environment. The list contains both product deployments discovered automatically and
# deployments registered manually through the API.
#
# @retval 
# List of all the registered products with vCenter.
# The return type will be Array of Com::Vmware::Vcenter::Lcm::Discovery::Product
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method create ()
# Associates a VMware product with vCenter Server manually. The product must be taken from
# the product catalog API.
#
# @param spec [REQUIRED] Info creation specification.
# . The value must be Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::CreateSpec.
#
# @retval 
# Identifier of the newly-added product.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.lcm.product).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if this version is already added
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the spec argument is not allowed
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method get ()
# Returns the detailed information of a product associated with vCenter Server.
#
# @param product [REQUIRED]  An identifier of the product to be modified.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.lcm.product).
# . The value must be str.
#
# @retval 
# Product details.
# The return type will be Com::Vmware::Vcenter::Lcm::Discovery::Product
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no record associated with  ``product``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub get {
   my ($self, %args) = @_;
   my $product = $args {product};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method update ()
# Modifies a VMware product associated with vCenter Server which was added manually.
# Automatically discovered VMware products cannot be modified.
#
# @param product [REQUIRED]  An id of the product to be modified.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.lcm.product).
# . The value must be str.
#
# @param spec [REQUIRED] 
# . The value must be Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the spec argument is not allowed
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no record associated with  ``product``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub update {
   my ($self, %args) = @_;
   my $product = $args {product};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method delete ()
# Deletes or dissociates a VMware product associated with vCenter Server which was added
# manually. Automatically discovered VMware products cannot be deleted or dissociated.
#
# @param product [REQUIRED]  An id of the product to be removed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.lcm.product).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no record associated with  ``product``  in the system database.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub delete {
   my ($self, %args) = @_;
   my $product = $args {product};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::CreateSpec``  
#     *class*  is the specification used for the product creation.

package Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{product_name} = $args{'product_name'};
   $self->{version} = $args{'version'};
   $self->{deployments} = $args{'deployments'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.associated_products.create_spec');
   $self->set_binding_field('key' => 'product_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'deployments', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_product_name ()
# Gets the value of 'product_name' property.
#
# @retval product_name - The current value of the field.
# The name of the product.
#
# String#
sub get_product_name {
   my ($self, %args) = @_;
   return $self->{'product_name'}; 	
}

## @method set_product_name ()
# Sets the given value for 'product_name' property.
# 
# @param product_name  - New value for the field.
# The name of the product.
#
sub set_product_name {
   my ($self, %args) = @_;
   $self->{'product_name'} = $args{'product_name'}; 
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

## @method get_deployments ()
# Gets the value of 'deployments' property.
#
# @retval deployments - The current value of the field.
# The list of hostname/IPs of the instances of the VMware products deployed in the
#     environment.
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
#     environment.
#
sub set_deployments {
   my ($self, %args) = @_;
   $self->{'deployments'} = $args{'deployments'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::UpdateSpec``  
#     *class*  is the specification for the product update.

package Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{deployments} = $args{'deployments'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.associated_products.update_spec');
   $self->set_binding_field('key' => 'deployments', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_deployments ()
# Gets the value of 'deployments' property.
#
# @retval deployments - The current value of the field.
# The list of hostname/IPs of the instances of the VMware products deployed in the
#     environment.
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
#     environment.
#
sub set_deployments {
   my ($self, %args) = @_;
   $self->{'deployments'} = $args{'deployments'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Discovery::AssociatedProducts service
#########################################################################################
