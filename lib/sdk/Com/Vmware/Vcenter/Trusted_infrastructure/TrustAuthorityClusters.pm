########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TrustAuthorityClusters.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters``  
#     *interface*  manages all the Trust Authority Components on each Trust Authority Host
#     in the cluster. The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters``   *interface*
#     transforms a ClusterComputeResource into Trust Authority Cluster and vice versa. This 
#     *interface*  was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClustersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'update_task'} = 'update$task';

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

## @method update_task ()
# Updates the state of a cluster. This  *method*  was added in vSphere API 7.0.0.0.
#
# @param cluster [REQUIRED] Cluster id.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] The specification for update of a cluster.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``spec``  doesn&apos;t match to any cluster compute resource.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub update_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'update$task',
                         method_args => \%args);
}


## @method get ()
# Get the result of the last Update operation which matches the cluster id. This  *method* 
# was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ReadTrustedHosts, System.View.
#
# @param cluster [REQUIRED] Cluster id.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Info 
#     instance which contains information about the state of the cluster.
# The return type will be
# Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``cluster``  doesn&apos;t match to any ClusterComputeResource.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``TrustedAdmin.ReadTrustedHosts`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``System.View`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns a list of clusters for this vCenter instance which matches the  class
# Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec . This 
# *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ReadTrustedHosts, System.View.
#
# @param spec [OPTIONAL] Return only clusters matching the specified filters.
# If {@term.unset} return all clusters.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec or None.
#
# @retval 
# List of  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Summary  for a 
#     class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters .
# The return type will be Array of
# Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``TrustedAdmin.ReadTrustedHosts`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec.cluster`
#      requires  ``System.View`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::State
#
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::State``  
#     *enumerated type*  defines the states of the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This 
#     *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::State::ENABLE #
#The  class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters  is
# enabled. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::State::DISABLE #
#The  class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters  is
# disabled. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::State;

use constant {
    ENABLE =>  'ENABLE',
    DISABLE =>  'DISABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.state',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Summary
#
#
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Summary``
#     *class*  contains information about  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters  id and state.
#     This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cluster} = $args{'cluster'};
   $self->{state} = $args{'state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.summary');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'TrustAuthorityClusters::State'));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifies the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
# ID#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Identifies the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The state of the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *field* 
#     was added in vSphere API 7.0.0.0.
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# The state of the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec``  
#     *class*  contains the data necessary for identifying a  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *class* 
#     was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cluster} = $args{'cluster'};
   $self->{state} = $args{'state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.filter_spec');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'TrustAuthorityClusters::State')))));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifies the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Identifies the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The state of the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *field* 
#     was added in vSphere API 7.0.0.0.
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
# The state of the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::UpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::UpdateSpec``  
#     *class*  contains the data necessary for update of a  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *class* 
#     was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::UpdateSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.update_spec');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'TrustAuthorityClusters::State')));
   bless $self, $class;
   return $self;
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The state of the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *field* 
#     was added in vSphere API 7.0.0.0.
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
# The state of the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters . This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Info
#
#
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Info``  
#     *class*  contains the data necessary for retrieving the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters  info. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cluster} = $args{'cluster'};
   $self->{state} = $args{'state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.info');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'TrustAuthorityClusters::State'));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifies the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
# ID#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Identifies the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The state of the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# The state of the cluster. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::TrustAuthorityClusters service
#########################################################################################
