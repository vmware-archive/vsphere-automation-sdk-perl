########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LastCheckResult.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult``  
#     *interface*  provides  *methods*  to get the most recent available result of the
#     checks that have been run on a cluster before the application of the desired software
#     document to all hosts within the cluster.
#

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult;

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
use Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResultStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.reports.last_check_result';


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
# Returns the most recent available result of checks run on the cluster before the
# application of the desired software document to all hosts within the cluster.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareRemediation.Read.
#
# @param cluster [REQUIRED] The cluster identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Most recent result available of the checks run on the cluster.
# The return type will be
# Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is an unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if there is no
#     result associated with the cluster  ``cluster`` 
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSoftwareRemediation.Read``
#     . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareRemediation.Read`` . </li>
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

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status``  
#     *enumerated type*  defines the status result for a particular check.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status::OK #
#The check indicates a success.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status::WARNING #
#The check indicates a warning.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status::TIMEOUT #
#The check did not return in a timely manner.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status::ERROR #
#The check indicates an error.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status;

use constant {
    OK =>  'OK',
    WARNING =>  'WARNING',
    TIMEOUT =>  'TIMEOUT',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.reports.last_check_result.status',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckInfo``
#       *class*  contains  *fields*  that describe a particular check.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{check} = $args{'check'};
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.last_check_result.check_info');
   $self->set_binding_field('key' => 'check', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_check ()
# Gets the value of 'check' property.
#
# @retval check - The current value of the field.
# The check identifier.
#
# String#
sub get_check {
   my ($self, %args) = @_;
   return $self->{'check'}; 	
}

## @method set_check ()
# Sets the given value for 'check' property.
# 
# @param check  - New value for the field.
# The check identifier.
#
sub set_check {
   my ($self, %args) = @_;
   $self->{'check'} = $args{'check'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The check name.
#
# LocalizableMessage#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The check name.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Human-readable check description.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Human-readable check description.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckStatus
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckStatus``
#       *class*  contains  *fields*  that describe a check result.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckStatus structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{check} = $args{'check'};
   $self->{status} = $args{'status'};
   $self->{issues} = $args{'issues'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckStatus');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.last_check_result.check_status');
   $self->set_binding_field('key' => 'check', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastCheckResult::CheckInfo'));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastCheckResult::Status'));
   $self->set_binding_field('key' => 'issues', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_check ()
# Gets the value of 'check' property.
#
# @retval check - The current value of the field.
# Information about this check.
#
# CheckInfo#
sub get_check {
   my ($self, %args) = @_;
   return $self->{'check'}; 	
}

## @method set_check ()
# Sets the given value for 'check' property.
# 
# @param check  - New value for the field.
# Information about this check.
#
sub set_check {
   my ($self, %args) = @_;
   $self->{'check'} = $args{'check'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The status of this check.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The status of this check.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_issues ()
# Gets the value of 'issues' property.
#
# @retval issues - The current value of the field.
# The issues encountered while running this check.
#
# List#
sub get_issues {
   my ($self, %args) = @_;
   return $self->{'issues'}; 	
}

## @method set_issues ()
# Sets the given value for 'issues' property.
# 
# @param issues  - New value for the field.
# The issues encountered while running this check.
#
sub set_issues {
   my ($self, %args) = @_;
   $self->{'issues'} = $args{'issues'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult``
#     *class*  contains  *fields*  that describe aggregated status of all checks performed
#     on a specific entity.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult structure
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
               'CLUSTER' => ['cluster'],
               'HOST' => ['host'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{cluster} = $args{'cluster'};
   $self->{host} = $args{'host'};
   $self->{status} = $args{'status'};
   $self->{check_statuses} = $args{'check_statuses'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.last_check_result.entity_check_result');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastCheckResult::EntityCheckResult::EntityType'));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastCheckResult::Status'));
   $self->set_binding_field('key' => 'check_statuses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastCheckResult::CheckStatus')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The entity type for which these checks are being run.
#
# EntityType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The entity type for which these checks are being run.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# If the entity type is CLUSTER then the cluster identifier for which the checks have
#     been run.
#
# optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# If the entity type is CLUSTER then the cluster identifier for which the checks have
#     been run.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# If the entity type is HOST then the host identifier for which the checks have been
#     run.
#
# optional#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# If the entity type is HOST then the host identifier for which the checks have been
#     run.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Aggregated status from all checks performed on this entity.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Aggregated status from all checks performed on this entity.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_check_statuses ()
# Gets the value of 'check_statuses' property.
#
# @retval check_statuses - The current value of the field.
# List of 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckStatus``
#      for all checks performed.
#
# List#
sub get_check_statuses {
   my ($self, %args) = @_;
   return $self->{'check_statuses'}; 	
}

## @method set_check_statuses ()
# Sets the given value for 'check_statuses' property.
# 
# @param check_statuses  - New value for the field.
# List of 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckStatus``
#      for all checks performed.
#
sub set_check_statuses {
   my ($self, %args) = @_;
   $self->{'check_statuses'} = $args{'check_statuses'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult::EntityType
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult::EntityType``
#       *enumerated type*  contains the entitites on which checks can be performed.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult::EntityType::CLUSTER #
#Entity type Cluster
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult::EntityType::HOST #
#Entity type Host

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult::EntityType;

use constant {
    CLUSTER =>  'CLUSTER',
    HOST =>  'HOST',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult::EntityType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.reports.last_check_result.entity_check_result.entity_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult::EntityType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckResult
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckResult``
#      *class*  contains  *fields*  that describe aggregated status of all checks performed.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};
   $self->{commit} = $args{'commit'};
   $self->{host_info} = $args{'host_info'};
   $self->{entity_results} = $args{'entity_results'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::CheckResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.last_check_result.check_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastCheckResult::Status'));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostInfo')}))));
   $self->set_binding_field('key' => 'entity_results', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastCheckResult::EntityCheckResult')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Aggregated status from all checks performed.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Aggregated status from all checks performed.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Time when the operation started.
#
# DateTime#
sub get_start_time {
   my ($self, %args) = @_;
   return $self->{'start_time'}; 	
}

## @method set_start_time ()
# Sets the given value for 'start_time' property.
# 
# @param start_time  - New value for the field.
# Time when the operation started.
#
sub set_start_time {
   my ($self, %args) = @_;
   $self->{'start_time'} = $args{'start_time'}; 
   return;	
}

## @method get_end_time ()
# Gets the value of 'end_time' property.
#
# @retval end_time - The current value of the field.
# Time when the operation completed.
#
# DateTime#
sub get_end_time {
   my ($self, %args) = @_;
   return $self->{'end_time'}; 	
}

## @method set_end_time ()
# Sets the given value for 'end_time' property.
# 
# @param end_time  - New value for the field.
# Time when the operation completed.
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# The identifier of the commit on which checks have been run.
#
# ID#
sub get_commit {
   my ($self, %args) = @_;
   return $self->{'commit'}; 	
}

## @method set_commit ()
# Sets the given value for 'commit' property.
# 
# @param commit  - New value for the field.
# The identifier of the commit on which checks have been run.
#
sub set_commit {
   my ($self, %args) = @_;
   $self->{'commit'} = $args{'commit'}; 
   return;	
}

## @method get_host_info ()
# Gets the value of 'host_info' property.
#
# @retval host_info - The current value of the field.
# Information about the hosts in this cluster for which checks have been requested to be
#     run.
#
# Map#
sub get_host_info {
   my ($self, %args) = @_;
   return $self->{'host_info'}; 	
}

## @method set_host_info ()
# Sets the given value for 'host_info' property.
# 
# @param host_info  - New value for the field.
# Information about the hosts in this cluster for which checks have been requested to be
#     run.
#
sub set_host_info {
   my ($self, %args) = @_;
   $self->{'host_info'} = $args{'host_info'}; 
   return;	
}

## @method get_entity_results ()
# Gets the value of 'entity_results' property.
#
# @retval entity_results - The current value of the field.
# List of 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult``
#      for all entities for which checks have been run.
#
# List#
sub get_entity_results {
   my ($self, %args) = @_;
   return $self->{'entity_results'}; 	
}

## @method set_entity_results ()
# Sets the given value for 'entity_results' property.
# 
# @param entity_results  - New value for the field.
# List of 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult::EntityCheckResult``
#      for all entities for which checks have been run.
#
sub set_entity_results {
   my ($self, %args) = @_;
   $self->{'entity_results'} = $args{'entity_results'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastCheckResult service
#########################################################################################
