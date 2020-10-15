########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Networks.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::Networks
# The  ``Com::Vmware::Vcenter::Namespace_management::Networks``   *interface*  provides
#     lifecycle  *methods*  on vSphere Namespaces networks associated with a vSphere
#     cluster. This  *interface*  was added in vSphere API 7.0.1.0.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for network. This  *constant*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::Networks;

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
use Com::Vmware::Vcenter::Namespace_management::NetworksStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.networks';


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

## @method get ()
# Return information about a specific vSphere Namespaces network. This  *method*  was added
# in vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] Identifier for the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param network [REQUIRED] Identifier for the vSphere Namespaces network.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespace_management.Network).
# . The value must be str.
#
# @retval 
# List of information about all vSphere Namespaces networks in the cluster.
# The return type will be Com::Vmware::Vcenter::Namespace_management::Networks::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if cluster or network could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $network = $args {network};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Return information about all vSphere Namespaces networks in the cluster. This  *method* 
# was added in vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] Identifier for the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Information about the specified vSphere Namespaces network..
# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::Networks::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if cluster or network could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub list {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::Networks service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::Networks service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::Networks service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkCreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkCreateSpec``
#     *class*  describes the configuration specification of a vSphere DVPG-backed Namespaces
#     Network object. This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{portgroup} = $args{'portgroup'};
   $self->{address_ranges} = $args{'address_ranges'};
   $self->{gateway} = $args{'gateway'};
   $self->{subnet_mask} = $args{'subnet_mask'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.networks.vsphere_DVPG_network_create_spec');
   $self->set_binding_field('key' => 'portgroup', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address_ranges', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'IPRange')));
   $self->set_binding_field('key' => 'gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subnet_mask', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_portgroup ()
# Gets the value of 'portgroup' property.
#
# @retval portgroup - The current value of the field.
# Identifier of the vSphere Distributed Portgroup backing the vSphere network object.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
# ID#
sub get_portgroup {
   my ($self, %args) = @_;
   return $self->{'portgroup'}; 	
}

## @method set_portgroup ()
# Sets the given value for 'portgroup' property.
# 
# @param portgroup  - New value for the field.
# Identifier of the vSphere Distributed Portgroup backing the vSphere network object.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_portgroup {
   my ($self, %args) = @_;
   $self->{'portgroup'} = $args{'portgroup'}; 
   return;	
}

## @method get_address_ranges ()
# Gets the value of 'address_ranges' property.
#
# @retval address_ranges - The current value of the field.
# Usable IP pools on this network. This  *field*  was added in vSphere API 7.0.1.0.
#
# List#
sub get_address_ranges {
   my ($self, %args) = @_;
   return $self->{'address_ranges'}; 	
}

## @method set_address_ranges ()
# Sets the given value for 'address_ranges' property.
# 
# @param address_ranges  - New value for the field.
# Usable IP pools on this network. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_address_ranges {
   my ($self, %args) = @_;
   $self->{'address_ranges'} = $args{'address_ranges'}; 
   return;	
}

## @method get_gateway ()
# Gets the value of 'gateway' property.
#
# @retval gateway - The current value of the field.
# Gateway for the network. This  *field*  was added in vSphere API 7.0.1.0.
#
# String#
sub get_gateway {
   my ($self, %args) = @_;
   return $self->{'gateway'}; 	
}

## @method set_gateway ()
# Sets the given value for 'gateway' property.
# 
# @param gateway  - New value for the field.
# Gateway for the network. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_gateway {
   my ($self, %args) = @_;
   $self->{'gateway'} = $args{'gateway'}; 
   return;	
}

## @method get_subnet_mask ()
# Gets the value of 'subnet_mask' property.
#
# @retval subnet_mask - The current value of the field.
# Subnet mask of the network. This  *field*  was added in vSphere API 7.0.1.0.
#
# String#
sub get_subnet_mask {
   my ($self, %args) = @_;
   return $self->{'subnet_mask'}; 	
}

## @method set_subnet_mask ()
# Sets the given value for 'subnet_mask' property.
# 
# @param subnet_mask  - New value for the field.
# Subnet mask of the network. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_subnet_mask {
   my ($self, %args) = @_;
   $self->{'subnet_mask'} = $args{'subnet_mask'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Networks::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Networks::CreateSpec``   *class* 
#     contains the specification required to create a vSphere Namespaces network object.
#     This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::Networks::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Networks::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'network_provider',
         'case_map' => {
               'VSPHERE_NETWORK' => ['vsphere_network'],
               'NSXT_CONTAINER_PLUGIN' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{network} = $args{'network'};
   $self->{network_provider} = $args{'network_provider'};
   $self->{vsphere_network} = $args{'vsphere_network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Networks::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.networks.create_spec');
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'network_provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkProvider'));
   $self->set_binding_field('key' => 'vsphere_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Networks::VsphereDVPGNetworkCreateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier of the network. This has DNS_LABEL restrictions as specified in  <a
#     href="https://tools.ietf.org/html/rfc1123"></a> . This must be an alphanumeric (a-z
#     and 0-9) string and with maximum length of 63 characters and with the &apos;-&apos;
#     character allowed anywhere except the first or last character. This name must be
#     unique within a cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
# ID#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Identifier of the network. This has DNS_LABEL restrictions as specified in  <a
#     href="https://tools.ietf.org/html/rfc1123"></a> . This must be an alphanumeric (a-z
#     and 0-9) string and with maximum length of 63 characters and with the &apos;-&apos;
#     character allowed anywhere except the first or last character. This name must be
#     unique within a cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}

## @method get_network_provider ()
# Gets the value of 'network_provider' property.
#
# @retval network_provider - The current value of the field.
# The network provider that will manage the vSphere Namespaces network object. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
# NetworkProvider#
sub get_network_provider {
   my ($self, %args) = @_;
   return $self->{'network_provider'}; 	
}

## @method set_network_provider ()
# Sets the given value for 'network_provider' property.
# 
# @param network_provider  - New value for the field.
# The network provider that will manage the vSphere Namespaces network object. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
sub set_network_provider {
   my ($self, %args) = @_;
   $self->{'network_provider'} = $args{'network_provider'}; 
   return;	
}

## @method get_vsphere_network ()
# Gets the value of 'vsphere_network' property.
#
# @retval vsphere_network - The current value of the field.
# The create spec for a DVPG-backed Namespaces network object, supported by 
#     ``VSPHERE_NETWORK``  network provider. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# optional#
sub get_vsphere_network {
   my ($self, %args) = @_;
   return $self->{'vsphere_network'}; 	
}

## @method set_vsphere_network ()
# Sets the given value for 'vsphere_network' property.
# 
# @param vsphere_network  - New value for the field.
# The create spec for a DVPG-backed Namespaces network object, supported by 
#     ``VSPHERE_NETWORK``  network provider. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_vsphere_network {
   my ($self, %args) = @_;
   $self->{'vsphere_network'} = $args{'vsphere_network'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkInfo
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkInfo`` 
#     *class*  describes the configuration specification of a vSphere DVPG-backed Namespaces
#     Network object. This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{portgroup} = $args{'portgroup'};
   $self->{address_ranges} = $args{'address_ranges'};
   $self->{gateway} = $args{'gateway'};
   $self->{subnet_mask} = $args{'subnet_mask'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Networks::VsphereDVPGNetworkInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.networks.vsphere_DVPG_network_info');
   $self->set_binding_field('key' => 'portgroup', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address_ranges', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'IPRange')));
   $self->set_binding_field('key' => 'gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subnet_mask', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_portgroup ()
# Gets the value of 'portgroup' property.
#
# @retval portgroup - The current value of the field.
# Identifier of the vSphere Distributed Portgroup backing the vSphere network object.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
# ID#
sub get_portgroup {
   my ($self, %args) = @_;
   return $self->{'portgroup'}; 	
}

## @method set_portgroup ()
# Sets the given value for 'portgroup' property.
# 
# @param portgroup  - New value for the field.
# Identifier of the vSphere Distributed Portgroup backing the vSphere network object.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_portgroup {
   my ($self, %args) = @_;
   $self->{'portgroup'} = $args{'portgroup'}; 
   return;	
}

## @method get_address_ranges ()
# Gets the value of 'address_ranges' property.
#
# @retval address_ranges - The current value of the field.
# Usable IP pools on this network. This  *field*  was added in vSphere API 7.0.1.0.
#
# List#
sub get_address_ranges {
   my ($self, %args) = @_;
   return $self->{'address_ranges'}; 	
}

## @method set_address_ranges ()
# Sets the given value for 'address_ranges' property.
# 
# @param address_ranges  - New value for the field.
# Usable IP pools on this network. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_address_ranges {
   my ($self, %args) = @_;
   $self->{'address_ranges'} = $args{'address_ranges'}; 
   return;	
}

## @method get_gateway ()
# Gets the value of 'gateway' property.
#
# @retval gateway - The current value of the field.
# Gateway for the network. This  *field*  was added in vSphere API 7.0.1.0.
#
# String#
sub get_gateway {
   my ($self, %args) = @_;
   return $self->{'gateway'}; 	
}

## @method set_gateway ()
# Sets the given value for 'gateway' property.
# 
# @param gateway  - New value for the field.
# Gateway for the network. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_gateway {
   my ($self, %args) = @_;
   $self->{'gateway'} = $args{'gateway'}; 
   return;	
}

## @method get_subnet_mask ()
# Gets the value of 'subnet_mask' property.
#
# @retval subnet_mask - The current value of the field.
# Subnet mask of the network. This  *field*  was added in vSphere API 7.0.1.0.
#
# String#
sub get_subnet_mask {
   my ($self, %args) = @_;
   return $self->{'subnet_mask'}; 	
}

## @method set_subnet_mask ()
# Sets the given value for 'subnet_mask' property.
# 
# @param subnet_mask  - New value for the field.
# Subnet mask of the network. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_subnet_mask {
   my ($self, %args) = @_;
   $self->{'subnet_mask'} = $args{'subnet_mask'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Networks::Info
#
#


package Com::Vmware::Vcenter::Namespace_management::Networks::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Networks::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'network_provider',
         'case_map' => {
               'VSPHERE_NETWORK' => ['vsphere_network'],
               'NSXT_CONTAINER_PLUGIN' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{network} = $args{'network'};
   $self->{network_provider} = $args{'network_provider'};
   $self->{vsphere_network} = $args{'vsphere_network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Networks::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.networks.info');
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'network_provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkProvider'));
   $self->set_binding_field('key' => 'vsphere_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Networks::VsphereDVPGNetworkInfo')));
   bless $self, $class;
   return $self;
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier of the network. This  *field*  was added in vSphere API 7.0.1.0.
#
# ID#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Identifier of the network. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}

## @method get_network_provider ()
# Gets the value of 'network_provider' property.
#
# @retval network_provider - The current value of the field.
# The network provider that will manage the vSphere Namespaces network object. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
# NetworkProvider#
sub get_network_provider {
   my ($self, %args) = @_;
   return $self->{'network_provider'}; 	
}

## @method set_network_provider ()
# Sets the given value for 'network_provider' property.
# 
# @param network_provider  - New value for the field.
# The network provider that will manage the vSphere Namespaces network object. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
sub set_network_provider {
   my ($self, %args) = @_;
   $self->{'network_provider'} = $args{'network_provider'}; 
   return;	
}

## @method get_vsphere_network ()
# Gets the value of 'vsphere_network' property.
#
# @retval vsphere_network - The current value of the field.
# Updated configuration specification for a DVPG-backed Namespaces network object,
#     supported by  ``VSPHERE_NETWORK``  network provider. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
# optional#
sub get_vsphere_network {
   my ($self, %args) = @_;
   return $self->{'vsphere_network'}; 	
}

## @method set_vsphere_network ()
# Sets the given value for 'vsphere_network' property.
# 
# @param vsphere_network  - New value for the field.
# Updated configuration specification for a DVPG-backed Namespaces network object,
#     supported by  ``VSPHERE_NETWORK``  network provider. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
sub set_vsphere_network {
   my ($self, %args) = @_;
   $self->{'vsphere_network'} = $args{'vsphere_network'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::Networks service
#########################################################################################
