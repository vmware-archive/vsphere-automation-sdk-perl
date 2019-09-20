########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Cluster.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vcha::Cluster
# The  ``Com::Vmware::Vcenter::Vcha::Cluster``   *interface*  provides  *methods*  to
#     deploy and undeploy a vCenter High Availability (VCHA) cluster, failover from the
#     active VCHA node to the passive VCHA node, and retrieve the status of the VCHA
#     cluster. This  *interface*  was added in vSphere API 6.7.1.
#

package Com::Vmware::Vcenter::Vcha::Cluster;

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
use Com::Vmware::Vcenter::Vcha::ClusterStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

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

## @method deploy ()
# Prepares, clones, and configures a VCHA cluster. This  *method*  was added in vSphere API
# 6.7.1.
#
# @param spec [REQUIRED] Contains the deploy specification for all three nodes of a VCHA cluster.
# . The value must be Com::Vmware::Vcenter::Vcha::Cluster::DeploySpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the credentials provided for authenticating with the active node&apos;s management
#     vCenter server are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. Operation execution
#     requires the Global.VCServer privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnverifiedPeer 
# If the SSL certificate of the management vCenter server cannot be validated.
# The value of the data  *field*  of  class Com::Vmware::Vapi::Std::Errors::Error  will
#     be a  *class*  that contains all the  *fields*  defined in  class
#     Com::Vmware::Vcenter::Vcha::CertificateInfo .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#

sub deploy {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'deploy',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'deploy',
                         method_args => \%args);
}


## @method failover ()
# Initiates failover from the active vCenter node to the passive node. <p>
# 
# For forced failover, Active node immediately initiates a failover. This may result into a
# data loss after failover. </p>
# 
# <p>
# 
# For planned failover, Active node flushes all the state to the Passive node, waits for the
# flush to complete before causing a failover. After the failover, Passive node starts
# without any data loss. </p>
# 
# <p>
# 
#  A failover is allowed only in the following cases: </p>
# 
# <ol>
#  <li> Cluster&apos;s mode is enabled and all cluster members are present.</li>
#  <li> Cluster&apos;s mode is maintenance and all cluster members are present.</li>
#  </ol>. This  *method*  was added in vSphere API 6.7.1.
#
# @param planned [REQUIRED] If false, a failover is initiated immediately and may result in data loss.
# If true, a failover is initated after the Active node flushes its state to Passive and
#     there is no data loss.
# . The value must be Boolean.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. Operation execution
#     requires the Global.VCServer privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#

sub failover {
   my ($self, %args) = @_;
   my $planned = $args {planned};

   $self->validate_args (method_name => 'failover',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'failover',
                         method_args => \%args);
}


## @method get ()
# Retrieves the status of a VCHA cluster. This  *method*  was added in vSphere API 6.7.1.
#
# @param vc_spec [OPTIONAL] Contains active node&apos;s management vCenter server credentials.
# If  *null* , then the active vCenter Server instance is assumed to be either
#     self-managed or else in enhanced linked mode and managed by a linked vCenter Server
#     instance.
# . The value must be Com::Vmware::Vcenter::Vcha::CredentialsSpec or None.
#
# @param partial [OPTIONAL] If true, then return only the information that does not require connecting to the
#     Active vCenter Server.
#  If false or unset, then return all the information.
# If  *null* , then return all the information.
# . The value must be Boolean or None.
#
# @retval 
# Info structure containing the VCHA configuration and health information.
# The return type will be Com::Vmware::Vcenter::Vcha::Cluster::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the credentials provided for authenticating with the active node&apos;s management
#     vCenter server are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. <ul>
# <li> If  ``partial``  is false or unset, then the operation execution requires the
#     Global.VCServer privilege.</li>
# <li> If  ``partial``  is true, then the operation execution requires the System.Read
#     privilege.</li>
#  </ul>
#
# @throw Com::Vmware::Vapi::Std::Errors::UnverifiedPeer 
# If the SSL certificate of the management vCenter server cannot be validated.
# The value of the data  *field*  of  class Com::Vmware::Vapi::Std::Errors::Error  will
#     be a  *class*  that contains all the  *fields*  defined in  class
#     Com::Vmware::Vcenter::Vcha::CertificateInfo .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#

sub get {
   my ($self, %args) = @_;
   my $vc_spec = $args {vc_spec};
   my $partial = $args {partial};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method undeploy ()
# Destroys the VCHA cluster and removes all VCHA specific information from the VCVA
# appliance. Optionally, the passive and witness node virtual machines will be deleted only
# if VCHA was deployed using automatic deployment. The active node in the cluster continues
# to run as a standalone VCVA appliance after the destroy operation has been performed. <p>
# 
# If the VCHA cluster is in a transition state and not configured, then the VCHA cluster
# specific information is removed.</p>
# 
# . This  *method*  was added in vSphere API 6.7.1.
#
# @param spec [REQUIRED] Contains the undeploy specification for a VCHA cluster.
# . The value must be Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the credentials provided for authenticating with the active node&apos;s management
#     vCenter server are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the passive virtual machine is not managed by the specified vCenter server.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the witness virtual machine is not managed by the specified vCenter server.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. Operation execution
#     requires the Global.VCServer privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnverifiedPeer 
# If the SSL certificate of the management vCenter server cannot be validated.
# The value of the data  *field*  of  class Com::Vmware::Vapi::Std::Errors::Error  will
#     be a  *class*  that contains all the  *fields*  defined in  class
#     Com::Vmware::Vcenter::Vcha::CertificateInfo .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#

sub undeploy {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'undeploy',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'undeploy',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vcha::Cluster service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::Type
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Type``   *enumerated type*  defines the
#     possible deployment types for a VCHA Cluster. This  *enumeration*  was added in
#     vSphere API 6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::Type::AUTO #
#Passive and witness nodes are cloned automatically. This  *constant*  was added in vSphere
# API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::Type::MANUAL #
#Passive and witness nodes are not cloned automatically. After deployment, the customer
# should clone the passive and witness virtual machines. This  *constant*  was added in
# vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Type;

use constant {
    AUTO =>  'AUTO',
    MANUAL =>  'MANUAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode``   *enumerated type*  defines
#     the possible modes for a VCHA Cluster. This  *enumeration*  was added in vSphere API
#     6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode::ENABLED #
#VCHA Cluster is enabled. State replication between the Active and Passive node is enabled
# and automatic failover is allowed. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode::DISABLED #
#VCHA Cluster is disabled. State replication between the Active and Passive node is
# disabled and automatic failover is not allowed. This  *constant*  was added in vSphere API
# 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode::MAINTENANCE #
#VCHA Cluster is in maintenance mode. State replication between the Active and Passive node
# is enabled but automatic failover is not allowed. This  *constant*  was added in vSphere
# API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode;

use constant {
    ENABLED =>  'ENABLED',
    DISABLED =>  'DISABLED',
    MAINTENANCE =>  'MAINTENANCE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.cluster_mode',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::ClusterMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vcha::Cluster::ClusterState
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::ClusterState``   *enumerated type* 
#     defines the possible for a VCHA Cluster. This  *enumeration*  was added in vSphere API
#     6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ClusterState::HEALTHY #
#All three nodes in a VCHA Cluster are healthy and connected. State replication between
# Active and Passive node is working and both nodes are in sync. This  *constant*  was added
# in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ClusterState::DEGRADED #
#A VCHA Cluster is said to be in a degraded state for either or all of the following
# reasons: <ul>
#  <li> There is a node loss. </li>
# <li> State replication between the Active and Passive node fails.</li>
#  </ul>. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ClusterState::ISOLATED #
#All three nodes are isolated from each other. This  *constant*  was added in vSphere API
# 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::ClusterState;

use constant {
    HEALTHY =>  'HEALTHY',
    DEGRADED =>  'DEGRADED',
    ISOLATED =>  'ISOLATED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::ClusterState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.cluster_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::ClusterState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vcha::Cluster::NodeState
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::NodeState``   *enumerated type*  defines
#     possible state a node can be in a VCHA Cluster. This  *enumeration*  was added in
#     vSphere API 6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::NodeState::UP #
#Node is up and has joined the VCHA Cluster. This  *constant*  was added in vSphere API
# 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::NodeState::DOWN #
#Node is down and has left the VCHA Cluster. This  *constant*  was added in vSphere API
# 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::NodeState;

use constant {
    UP =>  'UP',
    DOWN =>  'DOWN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::NodeState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.node_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::NodeState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vcha::Cluster::NodeRole
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::NodeRole``   *enumerated type*  defines
#     the role node can be in a VCHA Cluster. This  *enumeration*  was added in vSphere API
#     6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::NodeRole::ACTIVE #
#Node is having a role of Active. In this role, node runs a vCenter Server that serves
# client requests. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::NodeRole::PASSIVE #
#Node is having a role of Passive. In this role node, runs as a standby for the Active
# vCenter Server and receives state updates. This node takes over the role of Active vCenter
# Server upon failover. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::NodeRole::WITNESS #
#Node is having a role of Witness. In this role, node acts as a quorum node for avoiding
# the classic split-brain problem. This  *constant*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::NodeRole;

use constant {
    ACTIVE =>  'ACTIVE',
    PASSIVE =>  'PASSIVE',
    WITNESS =>  'WITNESS',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::NodeRole enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.node_role',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::NodeRole');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vcha::Cluster::ConfigState
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::ConfigState``   *enumerated type*  defines
#     the VCHA configuration state. This  *enumeration*  was added in vSphere API 6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ConfigState::CONFIGURED #
#VCHA cluster is configured. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ConfigState::NOTCONFIGURED #
#VCHA cluster is not configured. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ConfigState::INVALID #
#VCHA cluster is in an invalid/dirty state. This  *constant*  was added in vSphere API
# 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::ConfigState::PREPARED #
#vCenter server appliance has been prepared for VCHA cluster configuration. This 
# *constant*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::ConfigState;

use constant {
    CONFIGURED =>  'CONFIGURED',
    NOTCONFIGURED =>  'NOTCONFIGURED',
    INVALID =>  'INVALID',
    PREPARED =>  'PREPARED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::ConfigState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.config_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::ConfigState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vcha::Cluster::IpFamily
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::IpFamily``   *enumerated type*  defines
#     the IP address family. This  *enumeration*  was added in vSphere API 6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::IpFamily::IP_V4 #
#IPV4 address family. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::IpFamily::IP_V6 #
#IPV6 address family. This  *constant*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::IpFamily;

use constant {
    IPV4 =>  'IPV4',
    IPV6 =>  'IPV6',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::IpFamily enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.ip_family',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::IpFamily');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vcha::Cluster service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vcha::Cluster service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec``   *class*  contains the
#     deploy specification for the Active Node of the VCHA cluster. This  *class*  was added
#     in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ha_network_type} = $args{'ha_network_type'};
   $self->{ha_network} = $args{'ha_network'};
   $self->{ha_ip} = $args{'ha_ip'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.active_spec');
   $self->set_binding_field('key' => 'ha_network_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'NetworkType')));
   $self->set_binding_field('key' => 'ha_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ha_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpSpec'));
   bless $self, $class;
   return $self;
}

## @method get_ha_network_type ()
# Gets the value of 'ha_network_type' property.
#
# @retval ha_network_type - The current value of the field.
# The type of the Network object used by the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is set, then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`  field must be
#     set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`   *field*  is
#     ignored. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_ha_network_type {
   my ($self, %args) = @_;
   return $self->{'ha_network_type'}; 	
}

## @method set_ha_network_type ()
# Sets the given value for 'ha_network_type' property.
# 
# @param ha_network_type  - New value for the field.
# The type of the Network object used by the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is set, then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`  field must be
#     set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`   *field*  is
#     ignored. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ha_network_type {
   my ($self, %args) = @_;
   $self->{'ha_network_type'} = $args{'ha_network_type'}; 
   return;	
}

## @method get_ha_network ()
# Gets the value of 'ha_network' property.
#
# @retval ha_network - The current value of the field.
# The identifier of the Network object used for the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is set, then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`   *field* 
#     must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`   *field*  is
#     ignored. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_ha_network {
   my ($self, %args) = @_;
   return $self->{'ha_network'}; 	
}

## @method set_ha_network ()
# Sets the given value for 'ha_network' property.
# 
# @param ha_network  - New value for the field.
# The identifier of the Network object used for the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is set, then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`   *field* 
#     must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network`   *field* 
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::ActiveSpec.ha_network_type`   *field*  is
#     ignored. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ha_network {
   my ($self, %args) = @_;
   $self->{'ha_network'} = $args{'ha_network'}; 
   return;	
}

## @method get_ha_ip ()
# Gets the value of 'ha_ip' property.
#
# @retval ha_ip - The current value of the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
# IpSpec#
sub get_ha_ip {
   my ($self, %args) = @_;
   return $self->{'ha_ip'}; 	
}

## @method set_ha_ip ()
# Sets the given value for 'ha_ip' property.
# 
# @param ha_ip  - New value for the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ha_ip {
   my ($self, %args) = @_;
   $self->{'ha_ip'} = $args{'ha_ip'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::PassiveSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::PassiveSpec``   *class*  contains the
#     deploy specification for the Passive Node of the VCHA cluster. This  *class*  was
#     added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::PassiveSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::PassiveSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{placement} = $args{'placement'};
   $self->{ha_ip} = $args{'ha_ip'};
   $self->{failover_ip} = $args{'failover_ip'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::PassiveSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.passive_spec');
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'PlacementSpec')));
   $self->set_binding_field('key' => 'ha_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpSpec'));
   $self->set_binding_field('key' => 'failover_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpSpec')));
   bless $self, $class;
   return $self;
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Contains the placement configuration of the node. This  *field*  was added in vSphere
#     API 6.7.1.
#
# Optional#
sub get_placement {
   my ($self, %args) = @_;
   return $self->{'placement'}; 	
}

## @method set_placement ()
# Sets the given value for 'placement' property.
# 
# @param placement  - New value for the field.
# Contains the placement configuration of the node. This  *field*  was added in vSphere
#     API 6.7.1.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}

## @method get_ha_ip ()
# Gets the value of 'ha_ip' property.
#
# @retval ha_ip - The current value of the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
# IpSpec#
sub get_ha_ip {
   my ($self, %args) = @_;
   return $self->{'ha_ip'}; 	
}

## @method set_ha_ip ()
# Sets the given value for 'ha_ip' property.
# 
# @param ha_ip  - New value for the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ha_ip {
   my ($self, %args) = @_;
   $self->{'ha_ip'} = $args{'ha_ip'}; 
   return;	
}

## @method get_failover_ip ()
# Gets the value of 'failover_ip' property.
#
# @retval failover_ip - The current value of the field.
# IP specification for the management network. This  *field*  was added in vSphere API
#     6.7.1.
#
# Optional#
sub get_failover_ip {
   my ($self, %args) = @_;
   return $self->{'failover_ip'}; 	
}

## @method set_failover_ip ()
# Sets the given value for 'failover_ip' property.
# 
# @param failover_ip  - New value for the field.
# IP specification for the management network. This  *field*  was added in vSphere API
#     6.7.1.
#
sub set_failover_ip {
   my ($self, %args) = @_;
   $self->{'failover_ip'} = $args{'failover_ip'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::WitnessSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::WitnessSpec``   *class*  contains the
#     deploy specification for the Witness Node of the VCHA cluster. This  *class*  was
#     added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::WitnessSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::WitnessSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{placement} = $args{'placement'};
   $self->{ha_ip} = $args{'ha_ip'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::WitnessSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.witness_spec');
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'PlacementSpec')));
   $self->set_binding_field('key' => 'ha_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpSpec'));
   bless $self, $class;
   return $self;
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Contains the placement configuration of the node. This  *field*  was added in vSphere
#     API 6.7.1.
#
# Optional#
sub get_placement {
   my ($self, %args) = @_;
   return $self->{'placement'}; 	
}

## @method set_placement ()
# Sets the given value for 'placement' property.
# 
# @param placement  - New value for the field.
# Contains the placement configuration of the node. This  *field*  was added in vSphere
#     API 6.7.1.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}

## @method get_ha_ip ()
# Gets the value of 'ha_ip' property.
#
# @retval ha_ip - The current value of the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
# IpSpec#
sub get_ha_ip {
   my ($self, %args) = @_;
   return $self->{'ha_ip'}; 	
}

## @method set_ha_ip ()
# Sets the given value for 'ha_ip' property.
# 
# @param ha_ip  - New value for the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ha_ip {
   my ($self, %args) = @_;
   $self->{'ha_ip'} = $args{'ha_ip'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::DeploySpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::DeploySpec``   *class*  contains the
#     deploy specification for the three nodes of a VCHA cluster. This  *class*  was added
#     in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::DeploySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::DeploySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vc_spec} = $args{'vc_spec'};
   $self->{deployment} = $args{'deployment'};
   $self->{active} = $args{'active'};
   $self->{passive} = $args{'passive'};
   $self->{witness} = $args{'witness'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::DeploySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.deploy_spec');
   $self->set_binding_field('key' => 'vc_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'CredentialsSpec')));
   $self->set_binding_field('key' => 'deployment', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::Type'));
   $self->set_binding_field('key' => 'active', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::ActiveSpec'));
   $self->set_binding_field('key' => 'passive', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::PassiveSpec'));
   $self->set_binding_field('key' => 'witness', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::WitnessSpec'));
   bless $self, $class;
   return $self;
}

## @method get_vc_spec ()
# Gets the value of 'vc_spec' property.
#
# @retval vc_spec - The current value of the field.
# Contains the active node&apos;s management vCenter server credentials. This  *field* 
#     was added in vSphere API 6.7.1.
#
# Optional#
sub get_vc_spec {
   my ($self, %args) = @_;
   return $self->{'vc_spec'}; 	
}

## @method set_vc_spec ()
# Sets the given value for 'vc_spec' property.
# 
# @param vc_spec  - New value for the field.
# Contains the active node&apos;s management vCenter server credentials. This  *field* 
#     was added in vSphere API 6.7.1.
#
sub set_vc_spec {
   my ($self, %args) = @_;
   $self->{'vc_spec'} = $args{'vc_spec'}; 
   return;	
}

## @method get_deployment ()
# Gets the value of 'deployment' property.
#
# @retval deployment - The current value of the field.
# Contains the deployment type. This  *field*  was added in vSphere API 6.7.1.
#
# Type#
sub get_deployment {
   my ($self, %args) = @_;
   return $self->{'deployment'}; 	
}

## @method set_deployment ()
# Sets the given value for 'deployment' property.
# 
# @param deployment  - New value for the field.
# Contains the deployment type. This  *field*  was added in vSphere API 6.7.1.
#
sub set_deployment {
   my ($self, %args) = @_;
   $self->{'deployment'} = $args{'deployment'}; 
   return;	
}

## @method get_active ()
# Gets the value of 'active' property.
#
# @retval active - The current value of the field.
# Contains the active node&apos;s network configuration. This  *field*  was added in
#     vSphere API 6.7.1.
#
# ActiveSpec#
sub get_active {
   my ($self, %args) = @_;
   return $self->{'active'}; 	
}

## @method set_active ()
# Sets the given value for 'active' property.
# 
# @param active  - New value for the field.
# Contains the active node&apos;s network configuration. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_active {
   my ($self, %args) = @_;
   $self->{'active'} = $args{'active'}; 
   return;	
}

## @method get_passive ()
# Gets the value of 'passive' property.
#
# @retval passive - The current value of the field.
# Contains the passive node&apos;s placement configuration. This  *field*  was added in
#     vSphere API 6.7.1.
#
# PassiveSpec#
sub get_passive {
   my ($self, %args) = @_;
   return $self->{'passive'}; 	
}

## @method set_passive ()
# Sets the given value for 'passive' property.
# 
# @param passive  - New value for the field.
# Contains the passive node&apos;s placement configuration. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_passive {
   my ($self, %args) = @_;
   $self->{'passive'} = $args{'passive'}; 
   return;	
}

## @method get_witness ()
# Gets the value of 'witness' property.
#
# @retval witness - The current value of the field.
# Contains the witness node&apos;s placement configuration. This  *field*  was added in
#     vSphere API 6.7.1.
#
# WitnessSpec#
sub get_witness {
   my ($self, %args) = @_;
   return $self->{'witness'}; 	
}

## @method set_witness ()
# Sets the given value for 'witness' property.
# 
# @param witness  - New value for the field.
# Contains the witness node&apos;s placement configuration. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_witness {
   my ($self, %args) = @_;
   $self->{'witness'} = $args{'witness'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo``   *class*  describes a
#     node&apos;s runtime information in a VCHA Cluster. This  *class*  was added in vSphere
#     API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{state} = $args{'state'};
   $self->{role} = $args{'role'};
   $self->{placement} = $args{'placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.node_runtime_info');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeState')));
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeRole')));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'PlacementInfo')));
   bless $self, $class;
   return $self;
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Last known state of the node.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo.state` . This 
#     *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# Last known state of the node.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo.state` . This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# Last known role of the node.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo.role` . This 
#     *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# Last known role of the node.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo.role` . This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Placement information of the node.
# The active node&apos;s management vCenter server credentials are required to populate
#     most  *fields*  of 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo.placement` . This  *field*
#      was added in vSphere API 6.7.1.
#
# Optional#
sub get_placement {
   my ($self, %args) = @_;
   return $self->{'placement'}; 	
}

## @method set_placement ()
# Sets the given value for 'placement' property.
# 
# @param placement  - New value for the field.
# Placement information of the node.
# The active node&apos;s management vCenter server credentials are required to populate
#     most  *fields*  of 
#     :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeRuntimeInfo.placement` . This  *field*
#      was added in vSphere API 6.7.1.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::Ipv4Info
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Ipv4Info``   *class*  contains  *fields* 
#     to describe IPV4 information of the configured network interface. This  *class*  was
#     added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Ipv4Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Ipv4Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{address} = $args{'address'};
   $self->{subnet_mask} = $args{'subnet_mask'};
   $self->{prefix} = $args{'prefix'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Ipv4Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.ipv4_info');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subnet_mask', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IP address of the configured network interface. This  *field*  was added in vSphere
#     API 6.7.1.
#
# String#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# IP address of the configured network interface. This  *field*  was added in vSphere
#     API 6.7.1.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_subnet_mask ()
# Gets the value of 'subnet_mask' property.
#
# @retval subnet_mask - The current value of the field.
# The subnet mask of the interface. This  *field*  was added in vSphere API 6.7.1.
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
# The subnet mask of the interface. This  *field*  was added in vSphere API 6.7.1.
#
sub set_subnet_mask {
   my ($self, %args) = @_;
   $self->{'subnet_mask'} = $args{'subnet_mask'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# The CIDR prefix of the interface. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# The CIDR prefix of the interface. This  *field*  was added in vSphere API 6.7.1.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::Ipv6Info
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Ipv6Info``   *class*  contains  *fields* 
#     to describe IPV6 information of the configured network interface. This  *class*  was
#     added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Ipv6Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Ipv6Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Ipv6Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.ipv6_info');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IP address of the configured network interface. This  *field*  was added in vSphere
#     API 6.7.1.
#
# String#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# IP address of the configured network interface. This  *field*  was added in vSphere
#     API 6.7.1.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# The CIDR prefix of the interface. This  *field*  was added in vSphere API 6.7.1.
#
# long#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# The CIDR prefix of the interface. This  *field*  was added in vSphere API 6.7.1.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::IpInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::IpInfo``   *class*  contains  *fields* 
#     related to an ip. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::IpInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::IpInfo structure
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
         'discriminant_name' => 'ip_family',
         'case_map' => {
               'IPV4' => ['ipv4'],
               'IPV6' => ['ipv6'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip_family} = $args{'ip_family'};
   $self->{ipv4} = $args{'ipv4'};
   $self->{ipv6} = $args{'ipv6'};
   $self->{gateway_ip} = $args{'gateway_ip'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::IpInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.ip_info');
   $self->set_binding_field('key' => 'ip_family', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::IpFamily'));
   $self->set_binding_field('key' => 'ipv4', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::Ipv4Info')));
   $self->set_binding_field('key' => 'ipv6', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::Ipv6Info')));
   $self->set_binding_field('key' => 'gateway_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_ip_family ()
# Gets the value of 'ip_family' property.
#
# @retval ip_family - The current value of the field.
# Family of the ip. This  *field*  was added in vSphere API 6.7.1.
#
# IpFamily#
sub get_ip_family {
   my ($self, %args) = @_;
   return $self->{'ip_family'}; 	
}

## @method set_ip_family ()
# Sets the given value for 'ip_family' property.
# 
# @param ip_family  - New value for the field.
# Family of the ip. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ip_family {
   my ($self, %args) = @_;
   $self->{'ip_family'} = $args{'ip_family'}; 
   return;	
}

## @method get_ipv4 ()
# Gets the value of 'ipv4' property.
#
# @retval ipv4 - The current value of the field.
# If the type of the ip family is IPV4, then this will point to IPv4 address
#     specification. This  *field*  was added in vSphere API 6.7.1.
#
# optional#
sub get_ipv4 {
   my ($self, %args) = @_;
   return $self->{'ipv4'}; 	
}

## @method set_ipv4 ()
# Sets the given value for 'ipv4' property.
# 
# @param ipv4  - New value for the field.
# If the type of the ip family is IPV4, then this will point to IPv4 address
#     specification. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ipv4 {
   my ($self, %args) = @_;
   $self->{'ipv4'} = $args{'ipv4'}; 
   return;	
}

## @method get_ipv6 ()
# Gets the value of 'ipv6' property.
#
# @retval ipv6 - The current value of the field.
# If the type of the ip family is IPV6, then this will point to IPv6 address
#     specification. This  *field*  was added in vSphere API 6.7.1.
#
# optional#
sub get_ipv6 {
   my ($self, %args) = @_;
   return $self->{'ipv6'}; 	
}

## @method set_ipv6 ()
# Sets the given value for 'ipv6' property.
# 
# @param ipv6  - New value for the field.
# If the type of the ip family is IPV6, then this will point to IPv6 address
#     specification. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ipv6 {
   my ($self, %args) = @_;
   $self->{'ipv6'} = $args{'ipv6'}; 
   return;	
}

## @method get_gateway_ip ()
# Gets the value of 'gateway_ip' property.
#
# @retval gateway_ip - The current value of the field.
# Gateway IP address. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_gateway_ip {
   my ($self, %args) = @_;
   return $self->{'gateway_ip'}; 	
}

## @method set_gateway_ip ()
# Sets the given value for 'gateway_ip' property.
# 
# @param gateway_ip  - New value for the field.
# Gateway IP address. This  *field*  was added in vSphere API 6.7.1.
#
sub set_gateway_ip {
   my ($self, %args) = @_;
   $self->{'gateway_ip'} = $args{'gateway_ip'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo``   *class*  defines the
#     configuration information for the active and passive nodes in the cluster. This 
#     *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{failover_ip} = $args{'failover_ip'};
   $self->{ha_ip} = $args{'ha_ip'};
   $self->{runtime} = $args{'runtime'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.node_info');
   $self->set_binding_field('key' => 'failover_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::IpInfo')));
   $self->set_binding_field('key' => 'ha_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::IpInfo'));
   $self->set_binding_field('key' => 'runtime', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeRuntimeInfo')));
   bless $self, $class;
   return $self;
}

## @method get_failover_ip ()
# Gets the value of 'failover_ip' property.
#
# @retval failover_ip - The current value of the field.
# Failover IP address that this node will assume after the failover to serve client
#     requests. Each failover node can have a different failover IP address.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo.failover_ip` . This 
#     *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_failover_ip {
   my ($self, %args) = @_;
   return $self->{'failover_ip'}; 	
}

## @method set_failover_ip ()
# Sets the given value for 'failover_ip' property.
# 
# @param failover_ip  - New value for the field.
# Failover IP address that this node will assume after the failover to serve client
#     requests. Each failover node can have a different failover IP address.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo.failover_ip` . This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_failover_ip {
   my ($self, %args) = @_;
   $self->{'failover_ip'} = $args{'failover_ip'}; 
   return;	
}

## @method get_ha_ip ()
# Gets the value of 'ha_ip' property.
#
# @retval ha_ip - The current value of the field.
# VCHA Cluster network configuration of the node. All cluster communication (state
#     replication, heartbeat, cluster messages) happens over this network.
# The active node&apos;s management vCenter server credentials are not required to
#     populate this  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo.ha_ip` . This 
#     *field*  was added in vSphere API 6.7.1.
#
# IpInfo#
sub get_ha_ip {
   my ($self, %args) = @_;
   return $self->{'ha_ip'}; 	
}

## @method set_ha_ip ()
# Sets the given value for 'ha_ip' property.
# 
# @param ha_ip  - New value for the field.
# VCHA Cluster network configuration of the node. All cluster communication (state
#     replication, heartbeat, cluster messages) happens over this network.
# The active node&apos;s management vCenter server credentials are not required to
#     populate this  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo.ha_ip` . This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_ha_ip {
   my ($self, %args) = @_;
   $self->{'ha_ip'} = $args{'ha_ip'}; 
   return;	
}

## @method get_runtime ()
# Gets the value of 'runtime' property.
#
# @retval runtime - The current value of the field.
# Runtime information for the node in the VCHA Cluster.
# The active node&apos;s management vCenter server credentials are required to populate
#     some  *fields*  of  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo.runtime` .
#     This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_runtime {
   my ($self, %args) = @_;
   return $self->{'runtime'}; 	
}

## @method set_runtime ()
# Sets the given value for 'runtime' property.
# 
# @param runtime  - New value for the field.
# Runtime information for the node in the VCHA Cluster.
# The active node&apos;s management vCenter server credentials are required to populate
#     some  *fields*  of  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::NodeInfo.runtime` .
#     This  *field*  was added in vSphere API 6.7.1.
#
sub set_runtime {
   my ($self, %args) = @_;
   $self->{'runtime'} = $args{'runtime'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo``   *class*  defines the
#     configuration and runtime information for the witness node in the cluster. This 
#     *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ha_ip} = $args{'ha_ip'};
   $self->{runtime} = $args{'runtime'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.witness_info');
   $self->set_binding_field('key' => 'ha_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::IpInfo'));
   $self->set_binding_field('key' => 'runtime', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeRuntimeInfo')));
   bless $self, $class;
   return $self;
}

## @method get_ha_ip ()
# Gets the value of 'ha_ip' property.
#
# @retval ha_ip - The current value of the field.
# VCHA Cluster network configuration of the node. All cluster communication (state
#     replication, heartbeat, cluster messages) happens over this network.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo.ha_ip` . This 
#     *field*  was added in vSphere API 6.7.1.
#
# IpInfo#
sub get_ha_ip {
   my ($self, %args) = @_;
   return $self->{'ha_ip'}; 	
}

## @method set_ha_ip ()
# Sets the given value for 'ha_ip' property.
# 
# @param ha_ip  - New value for the field.
# VCHA Cluster network configuration of the node. All cluster communication (state
#     replication, heartbeat, cluster messages) happens over this network.
# The active node&apos;s management vCenter server credentials are not required to
#     populate  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo.ha_ip` . This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_ha_ip {
   my ($self, %args) = @_;
   $self->{'ha_ip'} = $args{'ha_ip'}; 
   return;	
}

## @method get_runtime ()
# Gets the value of 'runtime' property.
#
# @retval runtime - The current value of the field.
# Runtime information for the node in the VCHA Cluster.
# The active node&apos;s management vCenter server credentials are required to populate
#     some  *fields*  of  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo.runtime` .
#     This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_runtime {
   my ($self, %args) = @_;
   return $self->{'runtime'}; 	
}

## @method set_runtime ()
# Sets the given value for 'runtime' property.
# 
# @param runtime  - New value for the field.
# Runtime information for the node in the VCHA Cluster.
# The active node&apos;s management vCenter server credentials are required to populate
#     some  *fields*  of  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::WitnessInfo.runtime` .
#     This  *field*  was added in vSphere API 6.7.1.
#
sub set_runtime {
   my ($self, %args) = @_;
   $self->{'runtime'} = $args{'runtime'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::ErrorCondition
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::ErrorCondition``   *class*  contains an
#     error condition and a recommendation to handle the error condition. This  *class*  was
#     added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::ErrorCondition;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::ErrorCondition structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{error} = $args{'error'};
   $self->{recommendation} = $args{'recommendation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::ErrorCondition');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.error_condition');
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'recommendation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_error ()
# Gets the value of 'error' property.
#
# @retval error - The current value of the field.
# Contains an error condition. This  *field*  was added in vSphere API 6.7.1.
#
# LocalizableMessage#
sub get_error {
   my ($self, %args) = @_;
   return $self->{'error'}; 	
}

## @method set_error ()
# Sets the given value for 'error' property.
# 
# @param error  - New value for the field.
# Contains an error condition. This  *field*  was added in vSphere API 6.7.1.
#
sub set_error {
   my ($self, %args) = @_;
   $self->{'error'} = $args{'error'}; 
   return;	
}

## @method get_recommendation ()
# Gets the value of 'recommendation' property.
#
# @retval recommendation - The current value of the field.
# Contains a recommendation on handling the error condition. This  *field*  was added in
#     vSphere API 6.7.1.
#
# Optional#
sub get_recommendation {
   my ($self, %args) = @_;
   return $self->{'recommendation'}; 	
}

## @method set_recommendation ()
# Sets the given value for 'recommendation' property.
# 
# @param recommendation  - New value for the field.
# Contains a recommendation on handling the error condition. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_recommendation {
   my ($self, %args) = @_;
   $self->{'recommendation'} = $args{'recommendation'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::Info
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Info``   *class*  contains the
#     configuration and health information of the three nodes in a VCHA Cluster. This 
#     *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{config_state} = $args{'config_state'};
   $self->{node1} = $args{'node1'};
   $self->{node2} = $args{'node2'};
   $self->{witness} = $args{'witness'};
   $self->{mode} = $args{'mode'};
   $self->{health_state} = $args{'health_state'};
   $self->{health_exception} = $args{'health_exception'};
   $self->{health_warnings} = $args{'health_warnings'};
   $self->{manual_failover_allowed} = $args{'manual_failover_allowed'};
   $self->{auto_failover_allowed} = $args{'auto_failover_allowed'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.info');
   $self->set_binding_field('key' => 'config_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::ConfigState')));
   $self->set_binding_field('key' => 'node1', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeInfo')));
   $self->set_binding_field('key' => 'node2', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeInfo')));
   $self->set_binding_field('key' => 'witness', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::WitnessInfo')));
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::ClusterMode')));
   $self->set_binding_field('key' => 'health_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::ClusterState')));
   $self->set_binding_field('key' => 'health_exception', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'))));
   $self->set_binding_field('key' => 'health_warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::ErrorCondition'))));
   $self->set_binding_field('key' => 'manual_failover_allowed', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'auto_failover_allowed', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_config_state ()
# Gets the value of 'config_state' property.
#
# @retval config_state - The current value of the field.
# Configuration state of the VCHA cluster.
# The active node&apos;s management vCenter server credentials are not required to
#     populate this  *field* . This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_config_state {
   my ($self, %args) = @_;
   return $self->{'config_state'}; 	
}

## @method set_config_state ()
# Sets the given value for 'config_state' property.
# 
# @param config_state  - New value for the field.
# Configuration state of the VCHA cluster.
# The active node&apos;s management vCenter server credentials are not required to
#     populate this  *field* . This  *field*  was added in vSphere API 6.7.1.
#
sub set_config_state {
   my ($self, %args) = @_;
   $self->{'config_state'} = $args{'config_state'}; 
   return;	
}

## @method get_node1 ()
# Gets the value of 'node1' property.
#
# @retval node1 - The current value of the field.
# Node configuration information for the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
# Optional#
sub get_node1 {
   my ($self, %args) = @_;
   return $self->{'node1'}; 	
}

## @method set_node1 ()
# Sets the given value for 'node1' property.
# 
# @param node1  - New value for the field.
# Node configuration information for the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_node1 {
   my ($self, %args) = @_;
   $self->{'node1'} = $args{'node1'}; 
   return;	
}

## @method get_node2 ()
# Gets the value of 'node2' property.
#
# @retval node2 - The current value of the field.
# Node configuration information for the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
# Optional#
sub get_node2 {
   my ($self, %args) = @_;
   return $self->{'node2'}; 	
}

## @method set_node2 ()
# Sets the given value for 'node2' property.
# 
# @param node2  - New value for the field.
# Node configuration information for the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_node2 {
   my ($self, %args) = @_;
   $self->{'node2'} = $args{'node2'}; 
   return;	
}

## @method get_witness ()
# Gets the value of 'witness' property.
#
# @retval witness - The current value of the field.
# Node configuration information for the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
# Optional#
sub get_witness {
   my ($self, %args) = @_;
   return $self->{'witness'}; 	
}

## @method set_witness ()
# Sets the given value for 'witness' property.
# 
# @param witness  - New value for the field.
# Node configuration information for the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_witness {
   my ($self, %args) = @_;
   $self->{'witness'} = $args{'witness'}; 
   return;	
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Operational mode of the VCHA Cluster. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Operational mode of the VCHA Cluster. This  *field*  was added in vSphere API 6.7.1.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_health_state ()
# Gets the value of 'health_state' property.
#
# @retval health_state - The current value of the field.
# Last known state of the VCHA Cluster. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_health_state {
   my ($self, %args) = @_;
   return $self->{'health_state'}; 	
}

## @method set_health_state ()
# Sets the given value for 'health_state' property.
# 
# @param health_state  - New value for the field.
# Last known state of the VCHA Cluster. This  *field*  was added in vSphere API 6.7.1.
#
sub set_health_state {
   my ($self, %args) = @_;
   $self->{'health_state'} = $args{'health_state'}; 
   return;	
}

## @method get_health_exception ()
# Gets the value of 'health_exception' property.
#
# @retval health_exception - The current value of the field.
# Health warning messages if the health information is unavailable. This  *field*  was
#     added in vSphere API 6.7.1.
#
# Optional#
sub get_health_exception {
   my ($self, %args) = @_;
   return $self->{'health_exception'}; 	
}

## @method set_health_exception ()
# Sets the given value for 'health_exception' property.
# 
# @param health_exception  - New value for the field.
# Health warning messages if the health information is unavailable. This  *field*  was
#     added in vSphere API 6.7.1.
#
sub set_health_exception {
   my ($self, %args) = @_;
   $self->{'health_exception'} = $args{'health_exception'}; 
   return;	
}

## @method get_health_warnings ()
# Gets the value of 'health_warnings' property.
#
# @retval health_warnings - The current value of the field.
# A collection of messages describing the reason for a non-healthy Cluster. This 
#     *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_health_warnings {
   my ($self, %args) = @_;
   return $self->{'health_warnings'}; 	
}

## @method set_health_warnings ()
# Sets the given value for 'health_warnings' property.
# 
# @param health_warnings  - New value for the field.
# A collection of messages describing the reason for a non-healthy Cluster. This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_health_warnings {
   my ($self, %args) = @_;
   $self->{'health_warnings'} = $args{'health_warnings'}; 
   return;	
}

## @method get_manual_failover_allowed ()
# Gets the value of 'manual_failover_allowed' property.
#
# @retval manual_failover_allowed - The current value of the field.
# Specifies if manual failover is allowed. This  *field*  was added in vSphere API
#     6.7.1.
#
# Optional#
sub get_manual_failover_allowed {
   my ($self, %args) = @_;
   return $self->{'manual_failover_allowed'}; 	
}

## @method set_manual_failover_allowed ()
# Sets the given value for 'manual_failover_allowed' property.
# 
# @param manual_failover_allowed  - New value for the field.
# Specifies if manual failover is allowed. This  *field*  was added in vSphere API
#     6.7.1.
#
sub set_manual_failover_allowed {
   my ($self, %args) = @_;
   $self->{'manual_failover_allowed'} = $args{'manual_failover_allowed'}; 
   return;	
}

## @method get_auto_failover_allowed ()
# Gets the value of 'auto_failover_allowed' property.
#
# @retval auto_failover_allowed - The current value of the field.
# Specifies if automatic failover is allowed. This  *field*  was added in vSphere API
#     6.7.1.
#
# Optional#
sub get_auto_failover_allowed {
   my ($self, %args) = @_;
   return $self->{'auto_failover_allowed'}; 	
}

## @method set_auto_failover_allowed ()
# Sets the given value for 'auto_failover_allowed' property.
# 
# @param auto_failover_allowed  - New value for the field.
# Specifies if automatic failover is allowed. This  *field*  was added in vSphere API
#     6.7.1.
#
sub set_auto_failover_allowed {
   my ($self, %args) = @_;
   $self->{'auto_failover_allowed'} = $args{'auto_failover_allowed'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::NodeVmInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::NodeVmInfo``   *class*  contains
#     information to describe the Virtual Machine of a node of a VCHA cluster. This  *class*
#      was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::NodeVmInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::NodeVmInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm} = $args{'vm'};
   $self->{bios_uuid} = $args{'bios_uuid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::NodeVmInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.node_vm_info');
   $self->set_binding_field('key' => 'vm', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'bios_uuid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_vm ()
# Gets the value of 'vm' property.
#
# @retval vm - The current value of the field.
# The identifier of the virtual machine of the VCHA node. This  *field*  was added in
#     vSphere API 6.7.1.
#
# ID#
sub get_vm {
   my ($self, %args) = @_;
   return $self->{'vm'}; 	
}

## @method set_vm ()
# Sets the given value for 'vm' property.
# 
# @param vm  - New value for the field.
# The identifier of the virtual machine of the VCHA node. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_vm {
   my ($self, %args) = @_;
   $self->{'vm'} = $args{'vm'}; 
   return;	
}

## @method get_bios_uuid ()
# Gets the value of 'bios_uuid' property.
#
# @retval bios_uuid - The current value of the field.
# BIOS UUID for the node. This  *field*  was added in vSphere API 6.7.1.
#
# String#
sub get_bios_uuid {
   my ($self, %args) = @_;
   return $self->{'bios_uuid'}; 	
}

## @method set_bios_uuid ()
# Sets the given value for 'bios_uuid' property.
# 
# @param bios_uuid  - New value for the field.
# BIOS UUID for the node. This  *field*  was added in vSphere API 6.7.1.
#
sub set_bios_uuid {
   my ($self, %args) = @_;
   $self->{'bios_uuid'} = $args{'bios_uuid'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::VmInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::VmInfo``   *class*  contains information
#     to describe the Virtual Machines of passive and witness nodes of a VCHA cluster. This 
#     *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::VmInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::VmInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{passive} = $args{'passive'};
   $self->{witness} = $args{'witness'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::VmInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.vm_info');
   $self->set_binding_field('key' => 'passive', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeVmInfo'));
   $self->set_binding_field('key' => 'witness', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::NodeVmInfo'));
   bless $self, $class;
   return $self;
}

## @method get_passive ()
# Gets the value of 'passive' property.
#
# @retval passive - The current value of the field.
# The virtual machine information of the passive node. This  *field*  was added in
#     vSphere API 6.7.1.
#
# NodeVmInfo#
sub get_passive {
   my ($self, %args) = @_;
   return $self->{'passive'}; 	
}

## @method set_passive ()
# Sets the given value for 'passive' property.
# 
# @param passive  - New value for the field.
# The virtual machine information of the passive node. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_passive {
   my ($self, %args) = @_;
   $self->{'passive'} = $args{'passive'}; 
   return;	
}

## @method get_witness ()
# Gets the value of 'witness' property.
#
# @retval witness - The current value of the field.
# The virtual machine information of the witness node. This  *field*  was added in
#     vSphere API 6.7.1.
#
# NodeVmInfo#
sub get_witness {
   my ($self, %args) = @_;
   return $self->{'witness'}; 	
}

## @method set_witness ()
# Sets the given value for 'witness' property.
# 
# @param witness  - New value for the field.
# The virtual machine information of the witness node. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_witness {
   my ($self, %args) = @_;
   $self->{'witness'} = $args{'witness'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec``   *class*  contains the
#     undeploy specification for a VCHA cluster. This  *class*  was added in vSphere API
#     6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vc_spec} = $args{'vc_spec'};
   $self->{force_delete} = $args{'force_delete'};
   $self->{vms} = $args{'vms'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.undeploy_spec');
   $self->set_binding_field('key' => 'vc_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'CredentialsSpec')));
   $self->set_binding_field('key' => 'force_delete', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'vms', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Cluster::VmInfo')));
   bless $self, $class;
   return $self;
}

## @method get_vc_spec ()
# Gets the value of 'vc_spec' property.
#
# @retval vc_spec - The current value of the field.
# Contains the active node&apos;s management vCenter server credentials. This  *field* 
#     was added in vSphere API 6.7.1.
#
# Optional#
sub get_vc_spec {
   my ($self, %args) = @_;
   return $self->{'vc_spec'}; 	
}

## @method set_vc_spec ()
# Sets the given value for 'vc_spec' property.
# 
# @param vc_spec  - New value for the field.
# Contains the active node&apos;s management vCenter server credentials. This  *field* 
#     was added in vSphere API 6.7.1.
#
sub set_vc_spec {
   my ($self, %args) = @_;
   $self->{'vc_spec'} = $args{'vc_spec'}; 
   return;	
}

## @method get_force_delete ()
# Gets the value of 'force_delete' property.
#
# @retval force_delete - The current value of the field.
# Flag controlling in what circumstances the virtual machines will be deleted. For this
#     flag to take effect, the VCHA cluster should have been successfully configured using
#     automatic deployment. <ul>
# <li> If true, the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`  
#     *field*  will be ignored, the VCHA cluster specific information is removed, and the
#     passive and witness virtual machines will be deleted.</li>
# <li> If false, the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`  
#     *field*  contains the information identifying the passive and witness virtual
#     machines.</li>
#  <ul>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`   *field* 
#     is set, then it will be validated prior to deleting the passive and witness virtual
#     machines and VCHA cluster specific information is removed.</li>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`   *field* 
#     is  *null* , then the passive and witness virtual machines will not be deleted. The
#     customer should delete them in order to cleanup completely. VCHA cluster specific
#     information is removed.</li>
#  </ul> </ul>. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_force_delete {
   my ($self, %args) = @_;
   return $self->{'force_delete'}; 	
}

## @method set_force_delete ()
# Sets the given value for 'force_delete' property.
# 
# @param force_delete  - New value for the field.
# Flag controlling in what circumstances the virtual machines will be deleted. For this
#     flag to take effect, the VCHA cluster should have been successfully configured using
#     automatic deployment. <ul>
# <li> If true, the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`  
#     *field*  will be ignored, the VCHA cluster specific information is removed, and the
#     passive and witness virtual machines will be deleted.</li>
# <li> If false, the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`  
#     *field*  contains the information identifying the passive and witness virtual
#     machines.</li>
#  <ul>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`   *field* 
#     is set, then it will be validated prior to deleting the passive and witness virtual
#     machines and VCHA cluster specific information is removed.</li>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.vms`   *field* 
#     is  *null* , then the passive and witness virtual machines will not be deleted. The
#     customer should delete them in order to cleanup completely. VCHA cluster specific
#     information is removed.</li>
#  </ul> </ul>. This  *field*  was added in vSphere API 6.7.1.
#
sub set_force_delete {
   my ($self, %args) = @_;
   $self->{'force_delete'} = $args{'force_delete'}; 
   return;	
}

## @method get_vms ()
# Gets the value of 'vms' property.
#
# @retval vms - The current value of the field.
# Contains virtual machine information for the passive and witness virtual machines. For
#     this flag to take effect, the VCHA cluster should have been successfully configured
#     using automatic deployment. <p>
# 
# If set, the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.force_delete`  
#     *field*  controls whether this information is validated. </p>
# 
# <ul>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.force_delete`  
#     *field*  is true, then this information is ignored, VCHA cluster specific information
#     is removed and the passive and witness virtual machines will be deleted.</li>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.force_delete`  
#     *field*  is  *null*  or false, then this information is validated prior to deleting
#     the passive and witness virtual machines. VCHA cluster specific information is
#     removed.</li>
#  </ul>. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_vms {
   my ($self, %args) = @_;
   return $self->{'vms'}; 	
}

## @method set_vms ()
# Sets the given value for 'vms' property.
# 
# @param vms  - New value for the field.
# Contains virtual machine information for the passive and witness virtual machines. For
#     this flag to take effect, the VCHA cluster should have been successfully configured
#     using automatic deployment. <p>
# 
# If set, the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.force_delete`  
#     *field*  controls whether this information is validated. </p>
# 
# <ul>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.force_delete`  
#     *field*  is true, then this information is ignored, VCHA cluster specific information
#     is removed and the passive and witness virtual machines will be deleted.</li>
# <li> If the  :attr:`Com::Vmware::Vcenter::Vcha::Cluster::UndeploySpec.force_delete`  
#     *field*  is  *null*  or false, then this information is validated prior to deleting
#     the passive and witness virtual machines. VCHA cluster specific information is
#     removed.</li>
#  </ul>. This  *field*  was added in vSphere API 6.7.1.
#
sub set_vms {
   my ($self, %args) = @_;
   $self->{'vms'} = $args{'vms'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vcha::Cluster service
#########################################################################################
