########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ReplicationStatus.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Topology::ReplicationStatus
# The  ``Com::Vmware::Vcenter::Topology::ReplicationStatus``   *interface*  provides 
#     *methods*  to retrieve replication status information of vCenter and Platform Services
#     Controller nodes of type VCSA_EMBEDDED/PSC_EXTERNAL (see 
#     :attr:`Com::Vmware::Vcenter::Topology::Nodes::Info.type` ). This  *interface*  was
#     added in vSphere API 6.7.2.
#

package Com::Vmware::Vcenter::Topology::ReplicationStatus;

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
use Com::Vmware::Vcenter::Topology::ReplicationStatusStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.topology.replication_status';


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
# Returns the replication information of vCenter and Platform Services Controller nodes of
# type VCSA_EMBEDDED/PSC_EXTERNAL (see 
# :attr:`Com::Vmware::Vcenter::Topology::Nodes::Info.type` ) matching the  class
# Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec . This  *method*  was added
# in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param filter [OPTIONAL] Specification of matching vCenter and Platform Services Controller nodes for which
#     information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec  with all  *fields*  
#     *null*  which means all vCenter and Platform Services Controller nodes of type
#     VCSA_EMBEDDED/PSC_EXTERNAL match the filter.
# . The value must be Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec or None.
#
# @retval 
# Commonly used replication information about vCenter and Platform Services Controller
#     nodes matching the  class
#     Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec .
# The return type will be Array of
# Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if the user doesn&apos;t have the required privileges.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec.nodes`  
#     *field*  contains a invalid value.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Topology::ReplicationStatus service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Topology::ReplicationStatus service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Topology::ReplicationStatus service
#########################################################################################

## @class Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary
#
#
# The  ``Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary``   *class* 
#     contains replication information of partner vCenter or Platform Services Controller
#     node of type VCSA_EMBEDDED/PSC_EXTERNAL (see 
#     :attr:`Com::Vmware::Vcenter::Topology::Nodes::Info.type` ). This  *class*  was added
#     in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{node} = $args{'node'};
   $self->{replication_partner} = $args{'replication_partner'};
   $self->{partner_available} = $args{'partner_available'};
   $self->{status_available} = $args{'status_available'};
   $self->{replicating} = $args{'replicating'};
   $self->{change_lag} = $args{'change_lag'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.topology.replication_status.summary');
   $self->set_binding_field('key' => 'node', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'replication_partner', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'partner_available', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'status_available', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'replicating', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'change_lag', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_node ()
# Gets the value of 'node' property.
#
# @retval node - The current value of the field.
# Identifier for the vCenter or Platform Services Controller node. Identifier can be
#     either IP address or DNS resolvable name of the node. This  *field*  was added in
#     vSphere API 6.7.2.
#
# ID#
sub get_node {
   my ($self, %args) = @_;
   return $self->{'node'}; 	
}

## @method set_node ()
# Sets the given value for 'node' property.
# 
# @param node  - New value for the field.
# Identifier for the vCenter or Platform Services Controller node. Identifier can be
#     either IP address or DNS resolvable name of the node. This  *field*  was added in
#     vSphere API 6.7.2.
#
sub set_node {
   my ($self, %args) = @_;
   $self->{'node'} = $args{'node'}; 
   return;	
}

## @method get_replication_partner ()
# Gets the value of 'replication_partner' property.
#
# @retval replication_partner - The current value of the field.
# Identifier for the vCenter or Platform Services Controller replication partner.
#     Identifier can be either IP address or DNS resolvable name of the replication partner.
#     This  *field*  was added in vSphere API 6.7.2.
#
# ID#
sub get_replication_partner {
   my ($self, %args) = @_;
   return $self->{'replication_partner'}; 	
}

## @method set_replication_partner ()
# Sets the given value for 'replication_partner' property.
# 
# @param replication_partner  - New value for the field.
# Identifier for the vCenter or Platform Services Controller replication partner.
#     Identifier can be either IP address or DNS resolvable name of the replication partner.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_replication_partner {
   my ($self, %args) = @_;
   $self->{'replication_partner'} = $args{'replication_partner'}; 
   return;	
}

## @method get_partner_available ()
# Gets the value of 'partner_available' property.
#
# @retval partner_available - The current value of the field.
# Indicates if the VMware Directory Service on partner is reachable or not. This 
#     *field*  was added in vSphere API 6.7.2.
#
# boolean#
sub get_partner_available {
   my ($self, %args) = @_;
   return $self->{'partner_available'}; 	
}

## @method set_partner_available ()
# Sets the given value for 'partner_available' property.
# 
# @param partner_available  - New value for the field.
# Indicates if the VMware Directory Service on partner is reachable or not. This 
#     *field*  was added in vSphere API 6.7.2.
#
sub set_partner_available {
   my ($self, %args) = @_;
   $self->{'partner_available'} = $args{'partner_available'}; 
   return;	
}

## @method get_status_available ()
# Gets the value of 'status_available' property.
#
# @retval status_available - The current value of the field.
# Indicates if the replication status for the node with respect to replication partner
#     can be retrieved or not. This  *field*  was added in vSphere API 6.7.2.
#
# boolean#
sub get_status_available {
   my ($self, %args) = @_;
   return $self->{'status_available'}; 	
}

## @method set_status_available ()
# Sets the given value for 'status_available' property.
# 
# @param status_available  - New value for the field.
# Indicates if the replication status for the node with respect to replication partner
#     can be retrieved or not. This  *field*  was added in vSphere API 6.7.2.
#
sub set_status_available {
   my ($self, %args) = @_;
   $self->{'status_available'} = $args{'status_available'}; 
   return;	
}

## @method get_replicating ()
# Gets the value of 'replicating' property.
#
# @retval replicating - The current value of the field.
# Indicates if node is processing replication changes from the replication partner. This
#      *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_replicating {
   my ($self, %args) = @_;
   return $self->{'replicating'}; 	
}

## @method set_replicating ()
# Sets the given value for 'replicating' property.
# 
# @param replicating  - New value for the field.
# Indicates if node is processing replication changes from the replication partner. This
#      *field*  was added in vSphere API 6.7.2.
#
sub set_replicating {
   my ($self, %args) = @_;
   $self->{'replicating'} = $args{'replicating'}; 
   return;	
}

## @method get_change_lag ()
# Gets the value of 'change_lag' property.
#
# @retval change_lag - The current value of the field.
# Number of replication changes node is behind the replication partner. This  *field* 
#     was added in vSphere API 6.7.2.
#
# Optional#
sub get_change_lag {
   my ($self, %args) = @_;
   return $self->{'change_lag'}; 	
}

## @method set_change_lag ()
# Sets the given value for 'change_lag' property.
# 
# @param change_lag  - New value for the field.
# Number of replication changes node is behind the replication partner. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_change_lag {
   my ($self, %args) = @_;
   $self->{'change_lag'} = $args{'change_lag'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec``   *class* 
#     contains  *field*  used to filter the results when listing replication status for the
#     vCenter and Platform Services Controller nodes (see 
#     :func:`Com::Vmware::Vcenter::Topology::ReplicationStatus.list` ) of type
#     VCSA_EMBEDDED/PSC_EXTERNAL (see 
#     :attr:`Com::Vmware::Vcenter::Topology::Nodes::Info.type` ). This  *class*  was added
#     in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{nodes} = $args{'nodes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Topology::ReplicationStatus::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.topology.replication_status.filter_spec');
   $self->set_binding_field('key' => 'nodes', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_nodes ()
# Gets the value of 'nodes' property.
#
# @retval nodes - The current value of the field.
# Identifier that a vCenter and Platform Services Controller node must have to match the
#     filter. (see  :attr:`Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary.node`
#     ). This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_nodes {
   my ($self, %args) = @_;
   return $self->{'nodes'}; 	
}

## @method set_nodes ()
# Sets the given value for 'nodes' property.
# 
# @param nodes  - New value for the field.
# Identifier that a vCenter and Platform Services Controller node must have to match the
#     filter. (see  :attr:`Com::Vmware::Vcenter::Topology::ReplicationStatus::Summary.node`
#     ). This  *field*  was added in vSphere API 6.7.2.
#
sub set_nodes {
   my ($self, %args) = @_;
   $self->{'nodes'} = $args{'nodes'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Topology::ReplicationStatus service
#########################################################################################
