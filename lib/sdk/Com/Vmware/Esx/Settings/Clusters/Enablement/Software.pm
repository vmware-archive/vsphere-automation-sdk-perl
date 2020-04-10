########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Software.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Enablement::Software
# The  ``Com::Vmware::Esx::Settings::Clusters::Enablement::Software``   *interface* 
#     provides  *methods*  to control whether the cluster is managed with a single software
#     specification.
#

package Com::Vmware::Esx::Settings::Clusters::Enablement::Software;

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
use Com::Vmware::Esx::Settings::Clusters::Enablement::SoftwareStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.enablement.software';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'check_task'} = 'check$task';
$_VAPI_OPERATION_IDS->{'enable_task'} = 'enable$task';

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
# Returns whether the given cluster is managed with a single software specification.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Information about the feature enablement.
# The return type will be Com::Vmware::Esx::Settings::Clusters::Enablement::Software::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method check_task ()
# Checks the possibility to manage the cluster with a single software specification.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [OPTIONAL] Check specification.
# If  *null* , all checks are performed.
# . The value must be Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckSpec
# or None.
#
# @retval 
# The result of the check  *method* 
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If the feature is already enabled for the given cluster.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub check_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'check$task',
                         method_args => \%args);
}


## @method enable_task ()
# Enables the feature which manages the cluster with a single software specification.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [OPTIONAL] Enablement specification.
# If  *null* , all checks are performed.
# . The value must be Com::Vmware::Esx::Settings::Clusters::Enablement::Software::EnableSpec
# or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If feature enablement failed for the given cluster. The value of the data  *field*  of
#     class Com::Vmware::Vapi::Std::Errors::Error  will be a  *class*  that contains all the
#     *fields*  defined in  class
#     Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckResult .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If the feature is already enabled for the given cluster.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub enable_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'enable$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'enable$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Enablement::Software service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType``  
#     *enumerated type*  contains various checks to identify the possibility to enable the
#     feature that manages the cluster with a single software specification.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType::SOFTWARE #
#Perform host software check. This check is to report standalone VIBs (VIBs which are not
# part of any component) and the features on the given cluster that cannot coexist with the
# feature which manages the cluster with a single software specification.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType::VERSION #
#Perform host version check. This feature does not support hosts with version less than
# XYZ.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType::STATELESSNESS #
#Perform host statelessness check. This feature does not support stateless hosts.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType::VUM_REMEDIATION #
#Perform VUM active remediation check.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType::SOFTWARE_SPECIFICATION_EXISTENCE #
#Perform cluster&apos;s software specification existence check.

package Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType;

use constant {
    SOFTWARE =>  'SOFTWARE',
    VERSION =>  'VERSION',
    STATELESSNESS =>  'STATELESSNESS',
    VUM_REMEDIATION =>  'VUM_REMEDIATION',
    SOFTWARE_SPECIFICATION_EXISTENCE =>  'SOFTWARE_SPECIFICATION_EXISTENCE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.enablement.software.check_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Enablement::Software service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Enablement::Software service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Enablement::Software::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Enablement::Software::Info``   *class* 
#     contains information describing whether the feature is enabled.

package Com::Vmware::Esx::Settings::Clusters::Enablement::Software::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Enablement::Software::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{enabled} = $args{'enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Enablement::Software::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.enablement.software.info');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Status of the feature enablement True if feature is enabled, false otherwise
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Status of the feature enablement True if feature is enabled, false otherwise
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckSpec``  
#     *class*  contains information describing what checks should be performed.

package Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{checks_to_skip} = $args{'checks_to_skip'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.enablement.software.check_spec');
   $self->set_binding_field('key' => 'checks_to_skip', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Enablement', 'type_name' => 'Software::CheckType'))));
   bless $self, $class;
   return $self;
}

## @method get_checks_to_skip ()
# Gets the value of 'checks_to_skip' property.
#
# @retval checks_to_skip - The current value of the field.
# Specifies the checks that should be skipped. If the  *set*  is empty, all checks will
#     be performed.
#
# Set#
sub get_checks_to_skip {
   my ($self, %args) = @_;
   return $self->{'checks_to_skip'}; 	
}

## @method set_checks_to_skip ()
# Sets the given value for 'checks_to_skip' property.
# 
# @param checks_to_skip  - New value for the field.
# Specifies the checks that should be skipped. If the  *set*  is empty, all checks will
#     be performed.
#
sub set_checks_to_skip {
   my ($self, %args) = @_;
   $self->{'checks_to_skip'} = $args{'checks_to_skip'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckResult
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckResult``  
#     *class*  contains information that describes the results of the checks.

package Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.enablement.software.check_result');
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Enablement', 'type_name' => 'Software::CheckType'), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications')}))));
   bless $self, $class;
   return $self;
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications containing check results grouped by  class
#     Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType  type.
#
# Map#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications containing check results grouped by  class
#     Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType  type.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Enablement::Software::EnableSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Enablement::Software::EnableSpec``  
#     *class*  contains information describing checks that should be skipped during
#     enablement. Currently only 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType.SOFTWARE`
#      check can be skipped.

package Com::Vmware::Esx::Settings::Clusters::Enablement::Software::EnableSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Enablement::Software::EnableSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{skip_software_check} = $args{'skip_software_check'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Enablement::Software::EnableSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.enablement.software.enable_spec');
   $self->set_binding_field('key' => 'skip_software_check', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_skip_software_check ()
# Gets the value of 'skip_software_check' property.
#
# @retval skip_software_check - The current value of the field.
# Skip 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType.SOFTWARE`
#      check during feature enablement.
#
# boolean#
sub get_skip_software_check {
   my ($self, %args) = @_;
   return $self->{'skip_software_check'}; 	
}

## @method set_skip_software_check ()
# Sets the given value for 'skip_software_check' property.
# 
# @param skip_software_check  - New value for the field.
# Skip 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Enablement::Software::CheckType.SOFTWARE`
#      check during feature enablement.
#
sub set_skip_software_check {
   my ($self, %args) = @_;
   $self->{'skip_software_check'} = $args{'skip_software_check'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Enablement::Software service
#########################################################################################
