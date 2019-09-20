########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Nodes.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Topology::Nodes
# The  ``Com::Vmware::Vcenter::Topology::Nodes``   *interface*  provides  *methods*  to
#     retrieve vCenter and Platform Services Controller nodes information in the topology.
#     This  *interface*  was added in vSphere API 6.7.2.
#

package Com::Vmware::Vcenter::Topology::Nodes;

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
use Com::Vmware::Vcenter::Topology::NodesStub;

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

## @method list ()
# Returns information about all vCenter and Platform Services Controller nodes matching the 
# class Com::Vmware::Vcenter::Topology::Nodes::FilterSpec . This  *method*  was added in
# vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param filter [OPTIONAL] Specification of matching vCenter and Platform Services Controller nodes for which
#     information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Topology::Nodes::FilterSpec  with all  *fields*   *null*  which
#     means all nodes match the filter.
# . The value must be Com::Vmware::Vcenter::Topology::Nodes::FilterSpec or None.
#
# @retval 
# commonly used information for all vCenter and Platform Services Controller nodes
#     matching the  class Com::Vmware::Vcenter::Topology::Nodes::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Topology::Nodes::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if the user doesn&apos;t have the required privileges.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Topology::Nodes::FilterSpec.types`   *field* 
#     contains a value that is not supported.
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


## @method get ()
# Retrieve details for a given identifier of the vCenter or Platform Services Controller
# node. This  *method*  was added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param node [REQUIRED] Identifier of the vCenter or Platform Services Controller node. Identifier can be
#     either IP address or DNS resolvable name of the node.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.VCenter.name).
# . The value must be str.
#
# @retval 
# vCenter or Platform Services Controller node details with replication partners and
#     client affinity information as applicable. See  class
#     Com::Vmware::Vcenter::Topology::Nodes::Info .
# The return type will be Com::Vmware::Vcenter::Topology::Nodes::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if the user doesn&apos;t have the required privileges.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if a node doesn&apos;t exist for given node identifier.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $node = $args {node};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Topology::Nodes service
#########################################################################################

## @class Com::Vmware::Vcenter::Topology::Nodes::ApplianceType
#
# The  ``Com::Vmware::Vcenter::Topology::Nodes::ApplianceType``   *enumerated type* 
#     defines values for valid appliance types for the vCenter and Platform Services
#     Controller node. See  class Com::Vmware::Vcenter::Topology::Nodes::Info . This 
#     *enumeration*  was added in vSphere API 6.7.2.
#
#
#
# Constant Com::Vmware::Vcenter::Topology::Nodes::ApplianceType::VCSA_EMBEDDED #
#vCenter Server Appliance with an embedded Platform Services Controller. This  *constant* 
# was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vcenter::Topology::Nodes::ApplianceType::VCSA_EXTERNAL #
#vCenter Server Appliance with an external Platform Services Controller. This  *constant* 
# was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vcenter::Topology::Nodes::ApplianceType::PSC_EXTERNAL #
#An external Platform Services Controller. This  *constant*  was added in vSphere API
# 6.7.2.

package Com::Vmware::Vcenter::Topology::Nodes::ApplianceType;

use constant {
    VCSA_EMBEDDED =>  'VCSA_EMBEDDED',
    VCSA_EXTERNAL =>  'VCSA_EXTERNAL',
    PSC_EXTERNAL =>  'PSC_EXTERNAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Topology::Nodes::ApplianceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.topology.nodes.appliance_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Topology::Nodes::ApplianceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Topology::Nodes service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Topology::Nodes service
#########################################################################################

## @class Com::Vmware::Vcenter::Topology::Nodes::Info
#
#
# The  ``Com::Vmware::Vcenter::Topology::Nodes::Info``   *class*  contains vCenter or
#     Platform Services Controller node details. This  *class*  was added in vSphere API
#     6.7.2.

package Com::Vmware::Vcenter::Topology::Nodes::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Topology::Nodes::Info structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'VCSA_EMBEDDED' => ['replication_partners'],
               'PSC_EXTERNAL' => ['replication_partners'],
               'VCSA_EXTERNAL' => ['client_affinity'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{domain} = $args{'domain'};
   $self->{type} = $args{'type'};
   $self->{replication_partners} = $args{'replication_partners'};
   $self->{client_affinity} = $args{'client_affinity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Topology::Nodes::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.topology.nodes.info');
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Topology', 'type_name' => 'Nodes::ApplianceType'));
   $self->set_binding_field('key' => 'replication_partners', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'client_affinity', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# Domain name of the node. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_domain {
   my ($self, %args) = @_;
   return $self->{'domain'}; 	
}

## @method set_domain ()
# Sets the given value for 'domain' property.
# 
# @param domain  - New value for the field.
# Domain name of the node. This  *field*  was added in vSphere API 6.7.2.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Appliance type of the node. This  *field*  was added in vSphere API 6.7.2.
#
# ApplianceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Appliance type of the node. This  *field*  was added in vSphere API 6.7.2.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_replication_partners ()
# Gets the value of 'replication_partners' property.
#
# @retval replication_partners - The current value of the field.
# List of replication partners&apos; node identifiers. Identifiers can be either IP
#     address or DNS resolvable name of the partner node. This  *field*  was added in
#     vSphere API 6.7.2.
#
# optional#
sub get_replication_partners {
   my ($self, %args) = @_;
   return $self->{'replication_partners'}; 	
}

## @method set_replication_partners ()
# Sets the given value for 'replication_partners' property.
# 
# @param replication_partners  - New value for the field.
# List of replication partners&apos; node identifiers. Identifiers can be either IP
#     address or DNS resolvable name of the partner node. This  *field*  was added in
#     vSphere API 6.7.2.
#
sub set_replication_partners {
   my ($self, %args) = @_;
   $self->{'replication_partners'} = $args{'replication_partners'}; 
   return;	
}

## @method get_client_affinity ()
# Gets the value of 'client_affinity' property.
#
# @retval client_affinity - The current value of the field.
# Identifier of the affinitized Platform Services Controller node. Identifier can be
#     either IP address or DNS resolvable name of the affinitized node. This  *field*  was
#     added in vSphere API 6.7.2.
#
# optional#
sub get_client_affinity {
   my ($self, %args) = @_;
   return $self->{'client_affinity'}; 	
}

## @method set_client_affinity ()
# Sets the given value for 'client_affinity' property.
# 
# @param client_affinity  - New value for the field.
# Identifier of the affinitized Platform Services Controller node. Identifier can be
#     either IP address or DNS resolvable name of the affinitized node. This  *field*  was
#     added in vSphere API 6.7.2.
#
sub set_client_affinity {
   my ($self, %args) = @_;
   $self->{'client_affinity'} = $args{'client_affinity'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Topology::Nodes::Summary
#
#
# The  ``Com::Vmware::Vcenter::Topology::Nodes::Summary``   *class*  contains commonly
#     used information of vCenter or Platform Services Controller node. This  *class*  was
#     added in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Topology::Nodes::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Topology::Nodes::Summary structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'VCSA_EMBEDDED' => ['replication_partners'],
               'PSC_EXTERNAL' => ['replication_partners'],
               'VCSA_EXTERNAL' => ['client_affinity'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{node} = $args{'node'};
   $self->{type} = $args{'type'};
   $self->{replication_partners} = $args{'replication_partners'};
   $self->{client_affinity} = $args{'client_affinity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Topology::Nodes::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.topology.nodes.summary');
   $self->set_binding_field('key' => 'node', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Topology', 'type_name' => 'Nodes::ApplianceType'));
   $self->set_binding_field('key' => 'replication_partners', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'client_affinity', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
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

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Appliance type of the node. This  *field*  was added in vSphere API 6.7.2.
#
# ApplianceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Appliance type of the node. This  *field*  was added in vSphere API 6.7.2.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_replication_partners ()
# Gets the value of 'replication_partners' property.
#
# @retval replication_partners - The current value of the field.
# List of replication partners&apos; node identifiers. Identifiers can be either IP
#     address or DNS resolvable name of the partner node. This  *field*  was added in
#     vSphere API 6.7.2.
#
# optional#
sub get_replication_partners {
   my ($self, %args) = @_;
   return $self->{'replication_partners'}; 	
}

## @method set_replication_partners ()
# Sets the given value for 'replication_partners' property.
# 
# @param replication_partners  - New value for the field.
# List of replication partners&apos; node identifiers. Identifiers can be either IP
#     address or DNS resolvable name of the partner node. This  *field*  was added in
#     vSphere API 6.7.2.
#
sub set_replication_partners {
   my ($self, %args) = @_;
   $self->{'replication_partners'} = $args{'replication_partners'}; 
   return;	
}

## @method get_client_affinity ()
# Gets the value of 'client_affinity' property.
#
# @retval client_affinity - The current value of the field.
# Identifier of the affinitized Platform Services Controller node. Identifier can be
#     either IP address or DNS resolvable name of the affinitized node. This  *field*  was
#     added in vSphere API 6.7.2.
#
# optional#
sub get_client_affinity {
   my ($self, %args) = @_;
   return $self->{'client_affinity'}; 	
}

## @method set_client_affinity ()
# Sets the given value for 'client_affinity' property.
# 
# @param client_affinity  - New value for the field.
# Identifier of the affinitized Platform Services Controller node. Identifier can be
#     either IP address or DNS resolvable name of the affinitized node. This  *field*  was
#     added in vSphere API 6.7.2.
#
sub set_client_affinity {
   my ($self, %args) = @_;
   $self->{'client_affinity'} = $args{'client_affinity'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Topology::Nodes::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Topology::Nodes::FilterSpec``   *class*  contains 
#     *field*  used to filter the results when listing vCenter and Platform Services
#     Controller nodes (see  :func:`Com::Vmware::Vcenter::Topology::Nodes.list` ). This 
#     *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Topology::Nodes::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Topology::Nodes::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{types} = $args{'types'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Topology::Nodes::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.topology.nodes.filter_spec');
   $self->set_binding_field('key' => 'types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Topology', 'type_name' => 'Nodes::ApplianceType')))));
   bless $self, $class;
   return $self;
}

## @method get_types ()
# Gets the value of 'types' property.
#
# @retval types - The current value of the field.
# Types of the appliance that a vCenter and Platform Services Controller node must be to
#     match the filter (see  class Com::Vmware::Vcenter::Topology::Nodes::ApplianceType .
#     This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_types {
   my ($self, %args) = @_;
   return $self->{'types'}; 	
}

## @method set_types ()
# Sets the given value for 'types' property.
# 
# @param types  - New value for the field.
# Types of the appliance that a vCenter and Platform Services Controller node must be to
#     match the filter (see  class Com::Vmware::Vcenter::Topology::Nodes::ApplianceType .
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_types {
   my ($self, %args) = @_;
   $self->{'types'} = $args{'types'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Topology::Nodes service
#########################################################################################
