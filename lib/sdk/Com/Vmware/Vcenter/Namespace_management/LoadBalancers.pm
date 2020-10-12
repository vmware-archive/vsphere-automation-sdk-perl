########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LoadBalancers.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers
# ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers``  represent the user
#     provisioned load balancers. The load balancers provided may be used to front the API
#     servers in both, vSphere Namespaces Cluster and Tanzu Kubernetes Grid clusters. Note:
#     The lifecycle of these load balancers is not managed by vSphere. This  *interface* 
#     was added in vSphere API 7.0.1.0.
#

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers;

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
use Com::Vmware::Vcenter::Namespace_management::LoadBalancersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.load_balancers';


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
# Returns information  class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Info
# about the load balancer associated with the given cluster. This  *method*  was added in
# vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] Identifier of the cluster the load balancer is associated with.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param id [REQUIRED] Identifier of the load balancer 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::LoadBalancers::ConfigSpec.id` .
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespace_management.LoadBalancerConfig).
# . The value must be str.
#
# @retval 

# The return type will be Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``cluster``  or  ``id``  cannot be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified cluster does not have vSphere Namespaces enabled.
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $id = $args {id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns information about all load balancers associated with the given cluster. This 
# *method*  was added in vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] Identifier of the cluster the load balancers are associated with.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 

# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``cluster``  cannot be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified cluster does not have vSphere Namespaces enabled.
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
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::LoadBalancers service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Provider
#
# The  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Provider`` 
#     enumerates the kinds of load balancers supported by vSphere Namespaces. This 
#     *enumeration*  was added in vSphere API 7.0.1.0.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Provider::HA_PROXY #
#

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Provider;

use constant {
    HA_PROXY =>  'HA_PROXY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Provider enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.load_balancers.provider',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Provider');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::LoadBalancers service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::LoadBalancers service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::ConfigSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::ConfigSpec`` 
#     encapsulates load balancer configuration on vSphere Namespaces. This  *class*  was
#     added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers::ConfigSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::LoadBalancers::ConfigSpec structure
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
         'discriminant_name' => 'provider',
         'case_map' => {
               'HA_PROXY' => ['ha_proxy_config_create_spec'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{address_ranges} = $args{'address_ranges'};
   $self->{provider} = $args{'provider'};
   $self->{ha_proxy_config_create_spec} = $args{'ha_proxy_config_create_spec'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::LoadBalancers::ConfigSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.load_balancers.config_spec');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address_ranges', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'IPRange')));
   $self->set_binding_field('key' => 'provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::Provider'));
   $self->set_binding_field('key' => 'ha_proxy_config_create_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::HAProxyConfigCreateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# An identifier that identifies a load balancer and can be used to query or configure
#     load balancer properties via these resources. The identifier has DNS_LABEL
#     restrictions as specified in  <a href="https://tools.ietf.org/html/rfc1123"></a> .
#     This must be an alphanumeric (a-z and 0-9) string, with a maximum length of 63
#     characters and with the &apos;-&apos; character allowed anywhere except the first or
#     last character. This name is unique across all Namespaces in this vCenter server. This
#      *field*  was added in vSphere API 7.0.1.0.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# An identifier that identifies a load balancer and can be used to query or configure
#     load balancer properties via these resources. The identifier has DNS_LABEL
#     restrictions as specified in  <a href="https://tools.ietf.org/html/rfc1123"></a> .
#     This must be an alphanumeric (a-z and 0-9) string, with a maximum length of 63
#     characters and with the &apos;-&apos; character allowed anywhere except the first or
#     last character. This name is unique across all Namespaces in this vCenter server. This
#      *field*  was added in vSphere API 7.0.1.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_address_ranges ()
# Gets the value of 'address_ranges' property.
#
# @retval address_ranges - The current value of the field.
# List of address ranges that will be used to derive frontend IP addresses for L4
#     virtual servers. At least one range must be provided. This  *field*  was added in
#     vSphere API 7.0.1.0.
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
# List of address ranges that will be used to derive frontend IP addresses for L4
#     virtual servers. At least one range must be provided. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
sub set_address_ranges {
   my ($self, %args) = @_;
   $self->{'address_ranges'} = $args{'address_ranges'}; 
   return;	
}

## @method get_provider ()
# Gets the value of 'provider' property.
#
# @retval provider - The current value of the field.
# The  ``provider``  selects a provider from the list of available providers to be used
#     with vSphere Namespaces. This  *field*  was added in vSphere API 7.0.1.0.
#
# Provider#
sub get_provider {
   my ($self, %args) = @_;
   return $self->{'provider'}; 	
}

## @method set_provider ()
# Sets the given value for 'provider' property.
# 
# @param provider  - New value for the field.
# The  ``provider``  selects a provider from the list of available providers to be used
#     with vSphere Namespaces. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_provider {
   my ($self, %args) = @_;
   $self->{'provider'} = $args{'provider'}; 
   return;	
}

## @method get_ha_proxy_config_create_spec ()
# Gets the value of 'ha_proxy_config_create_spec' property.
#
# @retval ha_proxy_config_create_spec - The current value of the field.
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyConfigCreateSpec``
#     is a conditional configuration made available upon selecting the HA_PROXY load
#     balancer provider. It is used to configure the load balancer at run time. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
# optional#
sub get_ha_proxy_config_create_spec {
   my ($self, %args) = @_;
   return $self->{'ha_proxy_config_create_spec'}; 	
}

## @method set_ha_proxy_config_create_spec ()
# Sets the given value for 'ha_proxy_config_create_spec' property.
# 
# @param ha_proxy_config_create_spec  - New value for the field.
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyConfigCreateSpec``
#     is a conditional configuration made available upon selecting the HA_PROXY load
#     balancer provider. It is used to configure the load balancer at run time. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
sub set_ha_proxy_config_create_spec {
   my ($self, %args) = @_;
   $self->{'ha_proxy_config_create_spec'} = $args{'ha_proxy_config_create_spec'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Server
#
#
# A  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Server``  represents
#     an endpoint used to configure load balancers. This  *class*  was added in vSphere API
#     7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Server;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Server structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{host} = $args{'host'};
   $self->{port} = $args{'port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Server');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.load_balancers.server');
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# Load balancer hostname or IPv4 address. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# String#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# Load balancer hostname or IPv4 address. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Load balancer port. This  *field*  was added in vSphere API 7.0.1.0.
#
# long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# Load balancer port. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyConfigCreateSpec
#
#
# ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyConfigCreateSpec``
#     captures the configuration data required for Supervisor Service Type:LoadBalancer to
#     have an external load balancer be created via HAProxy. This  *class*  was added in
#     vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyConfigCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyConfigCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{servers} = $args{'servers'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};
   $self->{certificate_authority_chain} = $args{'certificate_authority_chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyConfigCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.load_balancers.HA_proxy_config_create_spec');
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::Server')));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'certificate_authority_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# Servers is a list of the addresses for the data plane API servers used to configure
#     Virtual Servers. This  *field*  was added in vSphere API 7.0.1.0.
#
# List#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# Servers is a list of the addresses for the data plane API servers used to configure
#     Virtual Servers. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# An administrator user name for accessing the HAProxy Data Plane API server. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# An administrator user name for accessing the HAProxy Data Plane API server. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# The password for the administrator user. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# The password for the administrator user. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_certificate_authority_chain ()
# Gets the value of 'certificate_authority_chain' property.
#
# @retval certificate_authority_chain - The current value of the field.
# CertificateAuthorityChain contains PEM-encoded CA chain which is used to verify x509
#     certificates received from the server. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# String#
sub get_certificate_authority_chain {
   my ($self, %args) = @_;
   return $self->{'certificate_authority_chain'}; 	
}

## @method set_certificate_authority_chain ()
# Sets the given value for 'certificate_authority_chain' property.
# 
# @param certificate_authority_chain  - New value for the field.
# CertificateAuthorityChain contains PEM-encoded CA chain which is used to verify x509
#     certificates received from the server. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_certificate_authority_chain {
   my ($self, %args) = @_;
   $self->{'certificate_authority_chain'} = $args{'certificate_authority_chain'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Summary
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Summary``  contains
#     contains basic information related to the load balancer for provisioning virtual
#     servers in the namespace. This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{provider} = $args{'provider'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.load_balancers.summary');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::Provider'));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# An DNS compliant identifier for a load balancer, which can be used to query or
#     configure the load balancer properties. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# An DNS compliant identifier for a load balancer, which can be used to query or
#     configure the load balancer properties. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_provider ()
# Gets the value of 'provider' property.
#
# @retval provider - The current value of the field.
# Load balancer provider for the namespace. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# Provider#
sub get_provider {
   my ($self, %args) = @_;
   return $self->{'provider'}; 	
}

## @method set_provider ()
# Sets the given value for 'provider' property.
# 
# @param provider  - New value for the field.
# Load balancer provider for the namespace. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_provider {
   my ($self, %args) = @_;
   $self->{'provider'} = $args{'provider'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Info
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Info``  contains
#     information related to the load balancer for provisioning virtual servers in the
#     namespace. This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Info structure
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
         'discriminant_name' => 'provider',
         'case_map' => {
               'HA_PROXY' => ['ha_proxy_info'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{address_ranges} = $args{'address_ranges'};
   $self->{provider} = $args{'provider'};
   $self->{ha_proxy_info} = $args{'ha_proxy_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::LoadBalancers::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.load_balancers.info');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address_ranges', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'IPRange')));
   $self->set_binding_field('key' => 'provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::Provider'));
   $self->set_binding_field('key' => 'ha_proxy_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::HAProxyInfo')));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# An DNS compliant identifier for a load balancer, which can be used to query or
#     configure the load balancer properties. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# An DNS compliant identifier for a load balancer, which can be used to query or
#     configure the load balancer properties. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_address_ranges ()
# Gets the value of 'address_ranges' property.
#
# @retval address_ranges - The current value of the field.
# IP address range from which virtual servers are assigned their IPs. This  *field*  was
#     added in vSphere API 7.0.1.0.
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
# IP address range from which virtual servers are assigned their IPs. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
sub set_address_ranges {
   my ($self, %args) = @_;
   $self->{'address_ranges'} = $args{'address_ranges'}; 
   return;	
}

## @method get_provider ()
# Gets the value of 'provider' property.
#
# @retval provider - The current value of the field.
# Load balancer provider for the namespace. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# Provider#
sub get_provider {
   my ($self, %args) = @_;
   return $self->{'provider'}; 	
}

## @method set_provider ()
# Sets the given value for 'provider' property.
# 
# @param provider  - New value for the field.
# Load balancer provider for the namespace. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_provider {
   my ($self, %args) = @_;
   $self->{'provider'} = $args{'provider'}; 
   return;	
}

## @method get_ha_proxy_info ()
# Gets the value of 'ha_proxy_info' property.
#
# @retval ha_proxy_info - The current value of the field.
# The  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyInfo``  is a
#     conditional configuration made available upon selecting the HA_PROXY load balancer
#     provider. It is used to configure the load balancer at run time. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
# optional#
sub get_ha_proxy_info {
   my ($self, %args) = @_;
   return $self->{'ha_proxy_info'}; 	
}

## @method set_ha_proxy_info ()
# Sets the given value for 'ha_proxy_info' property.
# 
# @param ha_proxy_info  - New value for the field.
# The  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyInfo``  is a
#     conditional configuration made available upon selecting the HA_PROXY load balancer
#     provider. It is used to configure the load balancer at run time. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
sub set_ha_proxy_info {
   my ($self, %args) = @_;
   $self->{'ha_proxy_info'} = $args{'ha_proxy_info'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyInfo
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyInfo`` 
#     contains information related to the HAProxy load balancer in the namespace. This 
#     *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{servers} = $args{'servers'};
   $self->{username} = $args{'username'};
   $self->{certificate_authority_chain} = $args{'certificate_authority_chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::LoadBalancers::HAProxyInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.load_balancers.HA_proxy_info');
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::Server')));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'certificate_authority_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# A list of the addresses for the DataPlane API servers used to configure HAProxy. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
# List#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# A list of the addresses for the DataPlane API servers used to configure HAProxy. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# An administrator user name for accessing the HAProxy Data Plane API server. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# An administrator user name for accessing the HAProxy Data Plane API server. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_certificate_authority_chain ()
# Gets the value of 'certificate_authority_chain' property.
#
# @retval certificate_authority_chain - The current value of the field.
# PEM-encoded CA certificate chain which is used to verify x509 certificates received
#     from the server. This  *field*  was added in vSphere API 7.0.1.0.
#
# String#
sub get_certificate_authority_chain {
   my ($self, %args) = @_;
   return $self->{'certificate_authority_chain'}; 	
}

## @method set_certificate_authority_chain ()
# Sets the given value for 'certificate_authority_chain' property.
# 
# @param certificate_authority_chain  - New value for the field.
# PEM-encoded CA certificate chain which is used to verify x509 certificates received
#     from the server. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_certificate_authority_chain {
   my ($self, %args) = @_;
   $self->{'certificate_authority_chain'} = $args{'certificate_authority_chain'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::LoadBalancers service
#########################################################################################
