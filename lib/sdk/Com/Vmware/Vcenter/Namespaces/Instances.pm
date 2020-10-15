########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Instances.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespaces::Instances
# The  ``Com::Vmware::Vcenter::Namespaces::Instances``   *interface*  provides 
#     *methods*  to create and delete a namespace object. In this version, an Instance is an
#     abstraction around a Kubernetes namespace.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for namespace.

package Com::Vmware::Vcenter::Namespaces::Instances;

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
use Com::Vmware::Vcenter::Namespaces::InstancesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespaces.instances';


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

## @method create ()
# Create namespace object in the cluster.
#
# @param spec [REQUIRED] Specification for setting up the namespace.
# . The value must be Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a namespace with the same name exists in vCenter server.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contain any errors or if an invalid name is specified.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the associated cluster is deing disabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  :attr:`Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec.cluster`  is not
#     registered on this vCenter server.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if  :attr:`Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec.cluster`  is not
#     enabled for Namespaces, or if the networks field is set when the 
#     :attr:`Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec.cluster`  hosting the
#     namespace uses NSXT_CONTAINER_PLUGIN as its network provider.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Configure privilege or the namespace identifier
#     begins with &quot;vmware-system&quot; prefix.
#
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Delete the namespace object in the cluster.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the specified namespace could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Configure privilege or the namespace identifier
#     begins with &quot;vmware-system&quot; prefix.
#
sub delete {
   my ($self, %args) = @_;
   my $namespace = $args {namespace};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method get ()
# Returns information about a specific namespace.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @retval 
# Information about the desired state of the specified namespace.
# The return type will be Com::Vmware::Vcenter::Namespaces::Instances::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if namespace could not be located.
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
   my $namespace = $args {namespace};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns the information about all namespaces on this vCenter.
#
# @retval 
# The list of summary of all namespaces.
# The return type will be Array of Com::Vmware::Vcenter::Namespaces::Instances::Summary
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
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method set ()
# Set a new configuration on the namespace object. The specified configuration is applied in
# entirety and will replace the current configuration fully.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @param spec [REQUIRED] New specification for the namespace.
# . The value must be Com::Vmware::Vcenter::Namespaces::Instances::SetSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contain any errors.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the namespace is marked for deletion or the associated cluster is being disabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if namespace with the name  ``namespace``  could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Configure privilege or the namespace identifier
#     begins with &quot;vmware-system&quot; prefix.
#
sub set {
   my ($self, %args) = @_;
   my $namespace = $args {namespace};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method update ()
# Update the namespace object. The specified configuration is applied partially and  *null* 
# fields in  ``spec``  will leave those parts of configuration as-is.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the namespace.
# . The value must be Com::Vmware::Vcenter::Namespaces::Instances::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contain any errors.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the namespace is marked for deletion or the associated cluster is being disabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if namespace with the name  ``namespace``  could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Configure privilege or the namespace identifier
#     begins with &quot;vmware-system&quot; prefix.
#
sub update {
   my ($self, %args) = @_;
   my $namespace = $args {namespace};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespaces::Instances service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus``   *enumerated type*
#      describes the status of reaching the desired state configuration for the namespace.
#
#
#
# Constant Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus::CONFIGURING #
#The configuration is being applied to the namespace.
#
# Constant Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus::REMOVING #
#The configuration is being removed and namespace is being deleted.
#
# Constant Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus::RUNNING #
#The namespace is configured correctly.
#
# Constant Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus::ERROR #
#Failed to apply the configuration to the namespace, user intervention needed.

package Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus;

use constant {
    CONFIGURING =>  'CONFIGURING',
    REMOVING =>  'REMOVING',
    RUNNING =>  'RUNNING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespaces.instances.config_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespaces::Instances service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespaces::Instances service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespaces::Instances::Access
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::Access``   *class*  contains the
#     access control information for a subject on a namespace.

package Com::Vmware::Vcenter::Namespaces::Instances::Access;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::Access structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{subject_type} = $args{'subject_type'};
   $self->{subject} = $args{'subject'};
   $self->{domain} = $args{'domain'};
   $self->{role} = $args{'role'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::Access');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.access');
   $self->set_binding_field('key' => 'subject_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Access::SubjectType'));
   $self->set_binding_field('key' => 'subject', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Access::Role'));
   bless $self, $class;
   return $self;
}

## @method get_subject_type ()
# Gets the value of 'subject_type' property.
#
# @retval subject_type - The current value of the field.
# Type of the subject.
#
# SubjectType#
sub get_subject_type {
   my ($self, %args) = @_;
   return $self->{'subject_type'}; 	
}

## @method set_subject_type ()
# Sets the given value for 'subject_type' property.
# 
# @param subject_type  - New value for the field.
# Type of the subject.
#
sub set_subject_type {
   my ($self, %args) = @_;
   $self->{'subject_type'} = $args{'subject_type'}; 
   return;	
}

## @method get_subject ()
# Gets the value of 'subject' property.
#
# @retval subject - The current value of the field.
# Name of the subject.
#
# String#
sub get_subject {
   my ($self, %args) = @_;
   return $self->{'subject'}; 	
}

## @method set_subject ()
# Sets the given value for 'subject' property.
# 
# @param subject  - New value for the field.
# Name of the subject.
#
sub set_subject {
   my ($self, %args) = @_;
   $self->{'subject'} = $args{'subject'}; 
   return;	
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# Domain of the subject.
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
# Domain of the subject.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# Role of the subject on the namespace instance.
#
# Role#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# Role of the subject on the namespace instance.
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::StorageSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::StorageSpec``   *class*  contains
#     the specification required to configure storage associated with a namespace.
#     Information in this  *class*  will result in storage quotas on the Kubernetes
#     namespace.

package Com::Vmware::Vcenter::Namespaces::Instances::StorageSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::StorageSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policy} = $args{'policy'};
   $self->{limit} = $args{'limit'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::StorageSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.storage_spec');
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# ID of the storage policy. A Kubernetes storage class is created for this storage
#     policy if it does not exist already.
#
# ID#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# ID of the storage policy. A Kubernetes storage class is created for this storage
#     policy if it does not exist already.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_limit ()
# Gets the value of 'limit' property.
#
# @retval limit - The current value of the field.
# The maximum amount of storage (in mebibytes) which can be utilized by the namespace
#     for this specification.
#
# Optional#
sub get_limit {
   my ($self, %args) = @_;
   return $self->{'limit'}; 	
}

## @method set_limit ()
# Sets the given value for 'limit' property.
# 
# @param limit  - New value for the field.
# The maximum amount of storage (in mebibytes) which can be utilized by the namespace
#     for this specification.
#
sub set_limit {
   my ($self, %args) = @_;
   $self->{'limit'} = $args{'limit'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::Message
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::Message``   *class*  contains the
#     information about the object configuration.

package Com::Vmware::Vcenter::Namespaces::Instances::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::Message structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{severity} = $args{'severity'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::Message');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.message');
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Message::MessageSeverity'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_severity ()
# Gets the value of 'severity' property.
#
# @retval severity - The current value of the field.
# Type of the message.
#
# MessageSeverity#
sub get_severity {
   my ($self, %args) = @_;
   return $self->{'severity'}; 	
}

## @method set_severity ()
# Sets the given value for 'severity' property.
# 
# @param severity  - New value for the field.
# Type of the message.
#
sub set_severity {
   my ($self, %args) = @_;
   $self->{'severity'} = $args{'severity'}; 
   return;	
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details about the message.
#
# Optional#
sub get_details {
   my ($self, %args) = @_;
   return $self->{'details'}; 	
}

## @method set_details ()
# Sets the given value for 'details' property.
# 
# @param details  - New value for the field.
# Details about the message.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity``  
#     *enumerated type*  represents the severity of the message.
#
#
#
# Constant Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity::INFO #
#Informational message. This may be accompanied by vCenter event.
#
# Constant Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity::WARNING #
#Warning message. This may be accompanied by vCenter event.
#
# Constant Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity::ERROR #
#Error message. This is accompanied by vCenter event and/or alarm.

package Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity;

use constant {
    INFO =>  'INFO',
    WARNING =>  'WARNING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespaces.instances.message.message_severity',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::Message::MessageSeverity');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::Stats
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::Stats``   *class*  contains the
#     basic runtime statistics about the namespace.

package Com::Vmware::Vcenter::Namespaces::Instances::Stats;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::Stats structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cpu_used} = $args{'cpu_used'};
   $self->{memory_used} = $args{'memory_used'};
   $self->{storage_used} = $args{'storage_used'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::Stats');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.stats');
   $self->set_binding_field('key' => 'cpu_used', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'memory_used', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'storage_used', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_cpu_used ()
# Gets the value of 'cpu_used' property.
#
# @retval cpu_used - The current value of the field.
# Overall CPU usage of the namespace, in MHz. This is the sum of CPU usage across all
#     pods in the Kubernetes namespace.
#
# long#
sub get_cpu_used {
   my ($self, %args) = @_;
   return $self->{'cpu_used'}; 	
}

## @method set_cpu_used ()
# Sets the given value for 'cpu_used' property.
# 
# @param cpu_used  - New value for the field.
# Overall CPU usage of the namespace, in MHz. This is the sum of CPU usage across all
#     pods in the Kubernetes namespace.
#
sub set_cpu_used {
   my ($self, %args) = @_;
   $self->{'cpu_used'} = $args{'cpu_used'}; 
   return;	
}

## @method get_memory_used ()
# Gets the value of 'memory_used' property.
#
# @retval memory_used - The current value of the field.
# Overall memory usage of the namespace (in mebibytes). This is the sum of memory usage
#     across all pods.
#
# long#
sub get_memory_used {
   my ($self, %args) = @_;
   return $self->{'memory_used'}; 	
}

## @method set_memory_used ()
# Sets the given value for 'memory_used' property.
# 
# @param memory_used  - New value for the field.
# Overall memory usage of the namespace (in mebibytes). This is the sum of memory usage
#     across all pods.
#
sub set_memory_used {
   my ($self, %args) = @_;
   $self->{'memory_used'} = $args{'memory_used'}; 
   return;	
}

## @method get_storage_used ()
# Gets the value of 'storage_used' property.
#
# @retval storage_used - The current value of the field.
# Overall storage used by the namespace (in mebibytes). This is the sum of storage used
#     by pods across all datastores in the cluster associated with storage policies
#     configured for the namespace.
#
# long#
sub get_storage_used {
   my ($self, %args) = @_;
   return $self->{'storage_used'}; 	
}

## @method set_storage_used ()
# Sets the given value for 'storage_used' property.
# 
# @param storage_used  - New value for the field.
# Overall storage used by the namespace (in mebibytes). This is the sum of storage used
#     by pods across all datastores in the cluster associated with storage policies
#     configured for the namespace.
#
sub set_storage_used {
   my ($self, %args) = @_;
   $self->{'storage_used'} = $args{'storage_used'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::Summary
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::Summary``   *class*  contains
#     basic information about the namespace.

package Com::Vmware::Vcenter::Namespaces::Instances::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{namespace} = $args{'namespace'};
   $self->{description} = $args{'description'};
   $self->{cluster} = $args{'cluster'};
   $self->{config_status} = $args{'config_status'};
   $self->{stats} = $args{'stats'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.summary');
   $self->set_binding_field('key' => 'namespace', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'config_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::ConfigStatus'));
   $self->set_binding_field('key' => 'stats', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Stats'));
   bless $self, $class;
   return $self;
}

## @method get_namespace ()
# Gets the value of 'namespace' property.
#
# @retval namespace - The current value of the field.
# Identifier of the namespace.
#
# ID#
sub get_namespace {
   my ($self, %args) = @_;
   return $self->{'namespace'}; 	
}

## @method set_namespace ()
# Sets the given value for 'namespace' property.
# 
# @param namespace  - New value for the field.
# Identifier of the namespace.
#
sub set_namespace {
   my ($self, %args) = @_;
   $self->{'namespace'} = $args{'namespace'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the namespace.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the namespace.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier for the cluster hosting the namespace.
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
# Identifier for the cluster hosting the namespace.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_config_status ()
# Gets the value of 'config_status' property.
#
# @retval config_status - The current value of the field.
# Current setting for  ``Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus`` .
#
# ConfigStatus#
sub get_config_status {
   my ($self, %args) = @_;
   return $self->{'config_status'}; 	
}

## @method set_config_status ()
# Sets the given value for 'config_status' property.
# 
# @param config_status  - New value for the field.
# Current setting for  ``Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus`` .
#
sub set_config_status {
   my ($self, %args) = @_;
   $self->{'config_status'} = $args{'config_status'}; 
   return;	
}

## @method get_stats ()
# Gets the value of 'stats' property.
#
# @retval stats - The current value of the field.
# Basic runtime statistics for the namespace.
#
# Stats#
sub get_stats {
   my ($self, %args) = @_;
   return $self->{'stats'}; 	
}

## @method set_stats ()
# Sets the given value for 'stats' property.
# 
# @param stats  - New value for the field.
# Basic runtime statistics for the namespace.
#
sub set_stats {
   my ($self, %args) = @_;
   $self->{'stats'} = $args{'stats'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::Info
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::Info``   *class*  contains
#     detailed information about the namespace.

package Com::Vmware::Vcenter::Namespaces::Instances::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::Info structure
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
   $self->{config_status} = $args{'config_status'};
   $self->{messages} = $args{'messages'};
   $self->{stats} = $args{'stats'};
   $self->{description} = $args{'description'};
   $self->{resource_spec} = $args{'resource_spec'};
   $self->{access_list} = $args{'access_list'};
   $self->{storage_specs} = $args{'storage_specs'};
   $self->{networks} = $args{'networks'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.info');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'config_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::ConfigStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Message')));
   $self->set_binding_field('key' => 'stats', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Stats'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   $self->set_binding_field('key' => 'access_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Access')));
   $self->set_binding_field('key' => 'storage_specs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::StorageSpec')));
   $self->set_binding_field('key' => 'networks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier for the cluster hosting the namespace.
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
# Identifier for the cluster hosting the namespace.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_config_status ()
# Gets the value of 'config_status' property.
#
# @retval config_status - The current value of the field.
# Current setting for  ``Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus`` .
#
# ConfigStatus#
sub get_config_status {
   my ($self, %args) = @_;
   return $self->{'config_status'}; 	
}

## @method set_config_status ()
# Sets the given value for 'config_status' property.
# 
# @param config_status  - New value for the field.
# Current setting for  ``Com::Vmware::Vcenter::Namespaces::Instances::ConfigStatus`` .
#
sub set_config_status {
   my ($self, %args) = @_;
   $self->{'config_status'} = $args{'config_status'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# Current set of messages associated with the object.
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# Current set of messages associated with the object.
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_stats ()
# Gets the value of 'stats' property.
#
# @retval stats - The current value of the field.
# Basic runtime statistics for the namespace.
#
# Stats#
sub get_stats {
   my ($self, %args) = @_;
   return $self->{'stats'}; 	
}

## @method set_stats ()
# Sets the given value for 'stats' property.
# 
# @param stats  - New value for the field.
# Basic runtime statistics for the namespace.
#
sub set_stats {
   my ($self, %args) = @_;
   $self->{'stats'} = $args{'stats'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the namespace.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the namespace.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_resource_spec ()
# Gets the value of 'resource_spec' property.
#
# @retval resource_spec - The current value of the field.
# Quotas on the namespace resources. Refer to null for the type of the value for this
#     field.
#
# Optional#
sub get_resource_spec {
   my ($self, %args) = @_;
   return $self->{'resource_spec'}; 	
}

## @method set_resource_spec ()
# Sets the given value for 'resource_spec' property.
# 
# @param resource_spec  - New value for the field.
# Quotas on the namespace resources. Refer to null for the type of the value for this
#     field.
#
sub set_resource_spec {
   my ($self, %args) = @_;
   $self->{'resource_spec'} = $args{'resource_spec'}; 
   return;	
}

## @method get_access_list ()
# Gets the value of 'access_list' property.
#
# @retval access_list - The current value of the field.
# Access controls associated with the namespace.
#
# List#
sub get_access_list {
   my ($self, %args) = @_;
   return $self->{'access_list'}; 	
}

## @method set_access_list ()
# Sets the given value for 'access_list' property.
# 
# @param access_list  - New value for the field.
# Access controls associated with the namespace.
#
sub set_access_list {
   my ($self, %args) = @_;
   $self->{'access_list'} = $args{'access_list'}; 
   return;	
}

## @method get_storage_specs ()
# Gets the value of 'storage_specs' property.
#
# @retval storage_specs - The current value of the field.
# Storage associated with the namespace.
#
# List#
sub get_storage_specs {
   my ($self, %args) = @_;
   return $self->{'storage_specs'}; 	
}

## @method set_storage_specs ()
# Sets the given value for 'storage_specs' property.
# 
# @param storage_specs  - New value for the field.
# Storage associated with the namespace.
#
sub set_storage_specs {
   my ($self, %args) = @_;
   $self->{'storage_specs'} = $args{'storage_specs'}; 
   return;	
}

## @method get_networks ()
# Gets the value of 'networks' property.
#
# @retval networks - The current value of the field.
# vSphere Networks associated with the namespace. This  *field*  was added in vSphere
#     API 7.0.1.0.
#
# Optional#
sub get_networks {
   my ($self, %args) = @_;
   return $self->{'networks'}; 	
}

## @method set_networks ()
# Sets the given value for 'networks' property.
# 
# @param networks  - New value for the field.
# vSphere Networks associated with the namespace. This  *field*  was added in vSphere
#     API 7.0.1.0.
#
sub set_networks {
   my ($self, %args) = @_;
   $self->{'networks'} = $args{'networks'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::UpdateSpec``   *class*  contains
#     the specification required to update the configuration on the namespace. This  *class*
#     is applied partially, and only the specified fields will replace or modify their
#     existing counterparts.

package Com::Vmware::Vcenter::Namespaces::Instances::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{resource_spec} = $args{'resource_spec'};
   $self->{access_list} = $args{'access_list'};
   $self->{storage_specs} = $args{'storage_specs'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.update_spec');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   $self->set_binding_field('key' => 'access_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Access'))));
   $self->set_binding_field('key' => 'storage_specs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::StorageSpec'))));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description for the namespace.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description for the namespace.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_resource_spec ()
# Gets the value of 'resource_spec' property.
#
# @retval resource_spec - The current value of the field.
# Resource quota updates on the namespace. Refer to null and use null for retrieving the
#     type for the value for this field. For an example of this, see  class
#     Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update .
#
# Optional#
sub get_resource_spec {
   my ($self, %args) = @_;
   return $self->{'resource_spec'}; 	
}

## @method set_resource_spec ()
# Sets the given value for 'resource_spec' property.
# 
# @param resource_spec  - New value for the field.
# Resource quota updates on the namespace. Refer to null and use null for retrieving the
#     type for the value for this field. For an example of this, see  class
#     Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update .
#
sub set_resource_spec {
   my ($self, %args) = @_;
   $self->{'resource_spec'} = $args{'resource_spec'}; 
   return;	
}

## @method get_access_list ()
# Gets the value of 'access_list' property.
#
# @retval access_list - The current value of the field.
# Access control associated with the namespace.
#
# Optional#
sub get_access_list {
   my ($self, %args) = @_;
   return $self->{'access_list'}; 	
}

## @method set_access_list ()
# Sets the given value for 'access_list' property.
# 
# @param access_list  - New value for the field.
# Access control associated with the namespace.
#
sub set_access_list {
   my ($self, %args) = @_;
   $self->{'access_list'} = $args{'access_list'}; 
   return;	
}

## @method get_storage_specs ()
# Gets the value of 'storage_specs' property.
#
# @retval storage_specs - The current value of the field.
# Storage associated with the namespace.
#
# Optional#
sub get_storage_specs {
   my ($self, %args) = @_;
   return $self->{'storage_specs'}; 	
}

## @method set_storage_specs ()
# Sets the given value for 'storage_specs' property.
# 
# @param storage_specs  - New value for the field.
# Storage associated with the namespace.
#
sub set_storage_specs {
   my ($self, %args) = @_;
   $self->{'storage_specs'} = $args{'storage_specs'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::SetSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::SetSpec``   *class*  contains the
#     specification required to set a new configuration on the namespace. This  *class*  is
#     applied in entirety, replacing the current specification fully.

package Com::Vmware::Vcenter::Namespaces::Instances::SetSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::SetSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{resource_spec} = $args{'resource_spec'};
   $self->{access_list} = $args{'access_list'};
   $self->{storage_specs} = $args{'storage_specs'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::SetSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.set_spec');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   $self->set_binding_field('key' => 'access_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Access'))));
   $self->set_binding_field('key' => 'storage_specs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::StorageSpec'))));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description for the namespace.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description for the namespace.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_resource_spec ()
# Gets the value of 'resource_spec' property.
#
# @retval resource_spec - The current value of the field.
# Resource quota for the namespace. This will replace the existing resource constraints
#     on the namespace in entirety. Refer to null and use null for retrieving the type for
#     the value for this field. For an example of this, see  class
#     Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1 .
#
# Optional#
sub get_resource_spec {
   my ($self, %args) = @_;
   return $self->{'resource_spec'}; 	
}

## @method set_resource_spec ()
# Sets the given value for 'resource_spec' property.
# 
# @param resource_spec  - New value for the field.
# Resource quota for the namespace. This will replace the existing resource constraints
#     on the namespace in entirety. Refer to null and use null for retrieving the type for
#     the value for this field. For an example of this, see  class
#     Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1 .
#
sub set_resource_spec {
   my ($self, %args) = @_;
   $self->{'resource_spec'} = $args{'resource_spec'}; 
   return;	
}

## @method get_access_list ()
# Gets the value of 'access_list' property.
#
# @retval access_list - The current value of the field.
# Access control associated with the namespace.
#
# Optional#
sub get_access_list {
   my ($self, %args) = @_;
   return $self->{'access_list'}; 	
}

## @method set_access_list ()
# Sets the given value for 'access_list' property.
# 
# @param access_list  - New value for the field.
# Access control associated with the namespace.
#
sub set_access_list {
   my ($self, %args) = @_;
   $self->{'access_list'} = $args{'access_list'}; 
   return;	
}

## @method get_storage_specs ()
# Gets the value of 'storage_specs' property.
#
# @retval storage_specs - The current value of the field.
# Storage associated with the namespace.
#
# Optional#
sub get_storage_specs {
   my ($self, %args) = @_;
   return $self->{'storage_specs'}; 	
}

## @method set_storage_specs ()
# Sets the given value for 'storage_specs' property.
# 
# @param storage_specs  - New value for the field.
# Storage associated with the namespace.
#
sub set_storage_specs {
   my ($self, %args) = @_;
   $self->{'storage_specs'} = $args{'storage_specs'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec``   *class*  contains
#     the specification required to set up a namespace.

package Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{namespace} = $args{'namespace'};
   $self->{cluster} = $args{'cluster'};
   $self->{description} = $args{'description'};
   $self->{resource_spec} = $args{'resource_spec'};
   $self->{access_list} = $args{'access_list'};
   $self->{storage_specs} = $args{'storage_specs'};
   $self->{networks} = $args{'networks'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Instances::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.instances.create_spec');
   $self->set_binding_field('key' => 'namespace', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   $self->set_binding_field('key' => 'access_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::Access'))));
   $self->set_binding_field('key' => 'storage_specs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Instances::StorageSpec'))));
   $self->set_binding_field('key' => 'networks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_namespace ()
# Gets the value of 'namespace' property.
#
# @retval namespace - The current value of the field.
# Identifier of the namespace. This has DNS_LABEL restrictions as specified in  <a
#     href="https://tools.ietf.org/html/rfc1123"></a> . This must be an alphanumeric (a-z
#     and 0-9) string and with maximum length of 63 characters and with the &apos;-&apos;
#     character allowed anywhere except the first or last character. This name is unique
#     across all Namespaces in this vCenter server. In this version, this maps to the name
#     of a Kubernetes namespace.
#
# ID#
sub get_namespace {
   my ($self, %args) = @_;
   return $self->{'namespace'}; 	
}

## @method set_namespace ()
# Sets the given value for 'namespace' property.
# 
# @param namespace  - New value for the field.
# Identifier of the namespace. This has DNS_LABEL restrictions as specified in  <a
#     href="https://tools.ietf.org/html/rfc1123"></a> . This must be an alphanumeric (a-z
#     and 0-9) string and with maximum length of 63 characters and with the &apos;-&apos;
#     character allowed anywhere except the first or last character. This name is unique
#     across all Namespaces in this vCenter server. In this version, this maps to the name
#     of a Kubernetes namespace.
#
sub set_namespace {
   my ($self, %args) = @_;
   $self->{'namespace'} = $args{'namespace'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier of the cluster on which the namespace is being created.
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
# Identifier of the cluster on which the namespace is being created.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description for the namespace.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description for the namespace.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_resource_spec ()
# Gets the value of 'resource_spec' property.
#
# @retval resource_spec - The current value of the field.
# Resource quota on the namespace. Refer to null and use null for retrieving the type
#     for the value for this field. For an example of this, see  class
#     Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1 .
#
# Optional#
sub get_resource_spec {
   my ($self, %args) = @_;
   return $self->{'resource_spec'}; 	
}

## @method set_resource_spec ()
# Sets the given value for 'resource_spec' property.
# 
# @param resource_spec  - New value for the field.
# Resource quota on the namespace. Refer to null and use null for retrieving the type
#     for the value for this field. For an example of this, see  class
#     Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1 .
#
sub set_resource_spec {
   my ($self, %args) = @_;
   $self->{'resource_spec'} = $args{'resource_spec'}; 
   return;	
}

## @method get_access_list ()
# Gets the value of 'access_list' property.
#
# @retval access_list - The current value of the field.
# Access controls associated with the namespace.
#
# Optional#
sub get_access_list {
   my ($self, %args) = @_;
   return $self->{'access_list'}; 	
}

## @method set_access_list ()
# Sets the given value for 'access_list' property.
# 
# @param access_list  - New value for the field.
# Access controls associated with the namespace.
#
sub set_access_list {
   my ($self, %args) = @_;
   $self->{'access_list'} = $args{'access_list'}; 
   return;	
}

## @method get_storage_specs ()
# Gets the value of 'storage_specs' property.
#
# @retval storage_specs - The current value of the field.
# Storage associated with the namespace.
#
# Optional#
sub get_storage_specs {
   my ($self, %args) = @_;
   return $self->{'storage_specs'}; 	
}

## @method set_storage_specs ()
# Sets the given value for 'storage_specs' property.
# 
# @param storage_specs  - New value for the field.
# Storage associated with the namespace.
#
sub set_storage_specs {
   my ($self, %args) = @_;
   $self->{'storage_specs'} = $args{'storage_specs'}; 
   return;	
}

## @method get_networks ()
# Gets the value of 'networks' property.
#
# @retval networks - The current value of the field.
# vSphere Namespaces network objects to be associated with the namespace. The values of
#     this list need to reference names of pre-existing  ``Networks.Info``   *class* s. This
#      *field*  was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_networks {
   my ($self, %args) = @_;
   return $self->{'networks'}; 	
}

## @method set_networks ()
# Sets the given value for 'networks' property.
# 
# @param networks  - New value for the field.
# vSphere Namespaces network objects to be associated with the namespace. The values of
#     this list need to reference names of pre-existing  ``Networks.Info``   *class* s. This
#      *field*  was added in vSphere API 7.0.1.0.
#
sub set_networks {
   my ($self, %args) = @_;
   $self->{'networks'} = $args{'networks'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespaces::Instances service
#########################################################################################
