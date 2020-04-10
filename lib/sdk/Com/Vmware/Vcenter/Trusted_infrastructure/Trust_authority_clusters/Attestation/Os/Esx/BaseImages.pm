########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file BaseImages.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages``
#     *interface*  provides  *methods*  to manage trusted instances of ESX software on a
#     cluster level. This  *interface*  was added in vSphere API 7.0.0.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for ESX base image. This  *constant*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImagesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.base_images';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'import_from_imgdb_task'} = 'import_from_imgdb$task';
$_VAPI_OPERATION_IDS->{'list_task'} = 'list$task';
$_VAPI_OPERATION_IDS->{'delete_task'} = 'delete$task';
$_VAPI_OPERATION_IDS->{'get_task'} = 'get$task';

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

## @method import_from_imgdb_task ()
# Import ESX metadata as a new trusted base image to each host in the cluster. <p>
# 
# Import a boot_imgdb.tgz file which contains metadata that describes a trusted ESX base
# image. A boot_imgdb.tgz file can be downloaded from a representative host.</p>
# 
# . This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param imgdb [REQUIRED] ESX metadata on a cluster level.
# . The value must be Binary.
#
# @retval 
# The imported imgdb version identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage).
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if ESX metadata for the same version has already been added.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the imgdb is invalid or cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the cluster is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub import_from_imgdb_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $imgdb = $args {imgdb};

   $self->validate_args (method_name => 'import_from_imgdb$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'import_from_imgdb$task',
                         method_args => \%args);
}


## @method list_task ()
# Return a list of trusted ESX base images. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [OPTIONAL] The search specification.
# if {@term.unset} return all information.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::FilterSpec
# or None.
#
# @retval 
# A list of configured trusted ESX base images.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the cluster is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub list_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'list$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'list$task',
                         method_args => \%args);
}


## @method delete_task ()
# Remove a trusted ESX base image of each ESX in the cluster. This  *method*  was added in
# vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param version [REQUIRED] The ESX base image version.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the version is invalid or the cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the version or cluster is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub delete_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $version = $args {version};

   $self->validate_args (method_name => 'delete$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'delete$task',
                         method_args => \%args);
}


## @method get_task ()
# Get the trusted ESX base version details. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param version [REQUIRED] The ESX base image version.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.BaseImage).
# . The value must be str.
#
# @retval 
# The version info
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the version is invalid or the cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the version or cluster is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub get_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $version = $args {version};

   $self->validate_args (method_name => 'get$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'get$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health``
#     *enumerated type*  is indicator for the consistency of the hosts status in the
#     cluster. This  *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health::NONE #
#No status available. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health::OK #
#Each host in the cluster is in consistent state with the rest hosts in the cluster. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health::WARNING #
#Attestation is funtioning, however there is an issue that requires attention. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health::ERROR #
#Not all hosts in the cluster are in consistent state. This  *constant*  was added in
# vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health;

use constant {
    NONE =>  'NONE',
    OK =>  'OK',
    WARNING =>  'WARNING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.base_images.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Summary``
#     *class*  contains information that summarizes an ESX base image. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{display_name} = $args{'display_name'};
   $self->{health} = $args{'health'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.base_images.summary');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx', 'type_name' => 'BaseImages::Health'));
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# A unique ESX version number. This  *field*  was added in vSphere API 7.0.0.
#
# ID#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# A unique ESX version number. This  *field*  was added in vSphere API 7.0.0.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# A unique ESX version formatted for display. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# A unique ESX version formatted for display. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# A health indicator which indicates whether each host in the cluster has this version
#     of the ESX base image. This  *field*  was added in vSphere API 7.0.0.
#
# Health#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# A health indicator which indicates whether each host in the cluster has this version
#     of the ESX base image. This  *field*  was added in vSphere API 7.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Info``
#     *class*  contains information that describes an ESX base image. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{display_name} = $args{'display_name'};
   $self->{health} = $args{'health'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.base_images.info');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx', 'type_name' => 'BaseImages::Health'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# A unique ESX version formatted for display. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# A unique ESX version formatted for display. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# A health indicator which indicates whether each host in the cluster has this version
#     of the ESX base image. This  *field*  was added in vSphere API 7.0.0.
#
# Health#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# A health indicator which indicates whether each host in the cluster has this version
#     of the ESX base image. This  *field*  was added in vSphere API 7.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details regarding the health. <p>
# 
# When the 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health.NONE`
#     , this member will provide an actionable description of the issues present.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
# List#
sub get_details {
   my ($self, %args) = @_;
   return $self->{'details'}; 	
}

## @method set_details ()
# Sets the given value for 'details' property.
# 
# @param details  - New value for the field.
# Details regarding the health. <p>
# 
# When the 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::Health.NONE`
#     , this member will provide an actionable description of the issues present.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::FilterSpec``
#     *class*  contains the data necessary for identifying a Trust Authority Host in a
#     cluster. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{display_name} = $args{'display_name'};
   $self->{health} = $args{'health'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.os.esx.base_images.filter_spec');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx', 'type_name' => 'BaseImages::Health')))));
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Search criteria by ESX base image version numbers. This  *field*  was added in vSphere
#     API 7.0.0.
#
# Optional#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Search criteria by ESX base image version numbers. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Search criteria by ESX base image version version numbers. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# Search criteria by ESX base image version version numbers. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# Search criteria by health indicator. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# Search criteria by health indicator. This  *field*  was added in vSphere API 7.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Os::Esx::BaseImages service
#########################################################################################
