########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Witness.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Vcha;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vcha::Cluster::Witness
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Witness``   *interface*  provides 
#     *methods*  to validate a witness&apos;s placement configuration and redeploy the
#     witness node in a vCenter High Availability (VCHA) cluster. This  *interface*  was
#     added in vSphere API 6.7.1.
#

package Com::Vmware::Vcenter::Vcha::Cluster::Witness;

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
use Com::Vmware::Vcenter::Vcha::Cluster::WitnessStub;

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

## @method check ()
# Validates the specified witness node&apos;s placement configuration. This  *method*  was
# added in vSphere API 6.7.1.
#
# @param spec [REQUIRED] Contains the witness node&apos;s placement specification.
# . The value must be Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckSpec.
#
# @retval 
# CheckResult structure containing errors and warnings.
# The return type will be Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckResult
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the credentials provided for authentincating with the active node&apos;s management
#     vCenter server are invalid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the specified resource spec is deemed invalid for the clone operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnverifiedPeer 
# If the SSL certificate of the management vCenter server cannot be validated.
# The value of the data  *field*  of  class Com::Vmware::Vapi::Std::Errors::Error  will
#     be a  *class*  that contains all the  *fields*  defined in  class
#     Com::Vmware::Vcenter::Vcha::CertificateInfo .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the active virtual machine is not managed by the specified vCenter server for the
#     active node.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration 
# If the active node is on more than one datastore.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If the clone operation is not allowed in the current state of the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. Operation execution
#     requires the Global.VCServer privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#

sub check {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check',
                         method_args => \%args);
}


## @method redeploy ()
# Creates the witness node in a degraded cluster with node location information and
# pre-existing VCHA cluster configuration from the active node. This  *method*  was added in
# vSphere API 6.7.1.
#
# @param spec [REQUIRED] Contains the witness node&apos;s redeploy specification.
# . The value must be Com::Vmware::Vcenter::Vcha::Cluster::Witness::RedeploySpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the credentials provided for authentincating with the active node&apos;s management
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

sub redeploy {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'redeploy',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'redeploy',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::Witness service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::Witness service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vcha::Cluster::Witness service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckSpec``   *class*  contains
#     placement information for validation. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckSpec structure
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
   $self->{placement} = $args{'placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.witness.check_spec');
   $self->set_binding_field('key' => 'vc_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'CredentialsSpec')));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'PlacementSpec'));
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

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Contains the node&apos;s placement information for validation. This  *field*  was
#     added in vSphere API 6.7.1.
#
# PlacementSpec#
sub get_placement {
   my ($self, %args) = @_;
   return $self->{'placement'}; 	
}

## @method set_placement ()
# Sets the given value for 'placement' property.
# 
# @param placement  - New value for the field.
# Contains the node&apos;s placement information for validation. This  *field*  was
#     added in vSphere API 6.7.1.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckResult
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckResult``   *class*  contains
#     the warnings and errors that will occur during the clone operation. This  *class*  was
#     added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{warnings} = $args{'warnings'};
   $self->{errors} = $args{'errors'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Witness::CheckResult');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.witness.check_result');
   $self->set_binding_field('key' => 'warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'errors', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_warnings ()
# Gets the value of 'warnings' property.
#
# @retval warnings - The current value of the field.
# A list of problems which may require attention, but which are not fatal. This  *field*
#      was added in vSphere API 6.7.1.
#
# List#
sub get_warnings {
   my ($self, %args) = @_;
   return $self->{'warnings'}; 	
}

## @method set_warnings ()
# Sets the given value for 'warnings' property.
# 
# @param warnings  - New value for the field.
# A list of problems which may require attention, but which are not fatal. This  *field*
#      was added in vSphere API 6.7.1.
#
sub set_warnings {
   my ($self, %args) = @_;
   $self->{'warnings'} = $args{'warnings'}; 
   return;	
}

## @method get_errors ()
# Gets the value of 'errors' property.
#
# @retval errors - The current value of the field.
# A list of problems which are fatal to the operation and the operation will fail. This 
#     *field*  was added in vSphere API 6.7.1.
#
# List#
sub get_errors {
   my ($self, %args) = @_;
   return $self->{'errors'}; 	
}

## @method set_errors ()
# Sets the given value for 'errors' property.
# 
# @param errors  - New value for the field.
# A list of problems which are fatal to the operation and the operation will fail. This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_errors {
   my ($self, %args) = @_;
   $self->{'errors'} = $args{'errors'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vcha::Cluster::Witness::RedeploySpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Witness::RedeploySpec``   *class* 
#     contains the redeploy specification. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Witness::RedeploySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Witness::RedeploySpec structure
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
   $self->{placement} = $args{'placement'};
   $self->{ha_ip} = $args{'ha_ip'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Witness::RedeploySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.witness.redeploy_spec');
   $self->set_binding_field('key' => 'vc_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'CredentialsSpec')));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'PlacementSpec'));
   $self->set_binding_field('key' => 'ha_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpSpec')));
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

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Contains the node&apos;s placement information. This  *field*  was added in vSphere
#     API 6.7.1.
#
# PlacementSpec#
sub get_placement {
   my ($self, %args) = @_;
   return $self->{'placement'}; 	
}

## @method set_placement ()
# Sets the given value for 'placement' property.
# 
# @param placement  - New value for the field.
# Contains the node&apos;s placement information. This  *field*  was added in vSphere
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
# Contains the VCHA HA network configuration of the node. All cluster communication
#     (state replication, heartbeat, cluster messages) happens over this network. This 
#     *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_ha_ip {
   my ($self, %args) = @_;
   return $self->{'ha_ip'}; 	
}

## @method set_ha_ip ()
# Sets the given value for 'ha_ip' property.
# 
# @param ha_ip  - New value for the field.
# Contains the VCHA HA network configuration of the node. All cluster communication
#     (state replication, heartbeat, cluster messages) happens over this network. This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_ha_ip {
   my ($self, %args) = @_;
   $self->{'ha_ip'} = $args{'ha_ip'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vcha::Cluster::Witness service
#########################################################################################
