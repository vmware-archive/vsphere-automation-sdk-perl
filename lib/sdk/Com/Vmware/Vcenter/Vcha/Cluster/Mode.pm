########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Mode.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vcha::Cluster::Mode
# The  *Mode*   *interface*  provides  *methods*  to manage the operating mode of a
#     vCenter High Availability Cluster (VCHA Cluster). This  *interface*  was added in
#     vSphere API 6.7.1.
#

package Com::Vmware::Vcenter::Vcha::Cluster::Mode;

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
use Com::Vmware::Vcenter::Vcha::Cluster::ModeStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vcha.cluster.mode';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'set_task'} = 'set$task';

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
# Retrieves the current mode of a VCHA cluster. This  *method*  was added in vSphere API
# 6.7.1.
#
# @retval 
# Info structure containing the mode of the the VCHA cluster.
# The return type will be Com::Vmware::Vcenter::Vcha::Cluster::Mode::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If the VCHA cluster is not configured.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. Operation execution
#     requires the System.Read privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method set_task ()
# Manipulates the mode of a VCHA Cluster. Following mode transitions are allowed:
#  enabled -&gt; disabled - Allowed only in healthy and degraded states.
#  enabled -&gt; maintenance - Allowed only in healthy state.
#  disabled -&gt; enabled - Allowed only in healthy state.
# maintenance -&gt; enabled - Allowed only in healthy state with all nodes are running the
# same version.
# maintenance -&gt; disabled - Allowed only in healthy state with all nodes are running the
# same version.
#  All other transitions are not allowed. <p>
# 
#  VCHA Cluster configuration remains intact in any of the cluster modes.</p>
# 
# . This  *method*  was added in vSphere API 6.7.1.
#
# @param mode [REQUIRED] Clustermode to change the VCHA cluster mode to.
# . The value must be Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. Operation execution
#     requires the Global.VCServer privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#
sub set_task {
   my ($self, %args) = @_;
   my $mode = $args {mode};

   $self->validate_args (method_name => 'set$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'set$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::Mode service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode``   *enumerated type* 
#     defines the possible modes for a VCHA Cluster. This  *enumeration*  was added in
#     vSphere API 6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode::ENABLED #
#VCHA Cluster is enabled. State replication between the Active and Passive node is enabled
# and automatic failover is allowed. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode::DISABLED #
#VCHA Cluster is disabled. State replication between the Active and Passive node is
# disabled and automatic failover is not allowed. This  *constant*  was added in vSphere API
# 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode::MAINTENANCE #
#VCHA Cluster is in maintenance mode. State replication between the and Passive node is
# enabled but automatic failover is not allowed. This  *constant*  was added in vSphere API
# 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode;

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
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.mode.cluster_mode',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Mode::ClusterMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::Mode service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vcha::Cluster::Mode service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::Mode::Info
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Mode::Info``   *class*  contains the mode
#     of the VCHA Cluster. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Mode::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Mode::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{mode} = $args{'mode'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Mode::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.mode.info');
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha::Cluster', 'type_name' => 'Mode::ClusterMode'));
   bless $self, $class;
   return $self;
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Identifies the mode of the VCHA cluster. This  *field*  was added in vSphere API
#     6.7.1.
#
# ClusterMode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Identifies the mode of the VCHA cluster. This  *field*  was added in vSphere API
#     6.7.1.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vcha::Cluster::Mode service
#########################################################################################
