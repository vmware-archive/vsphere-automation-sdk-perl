########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Offline.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depots::Offline
# The  ``Com::Vmware::Esx::Settings::Depots::Offline``   *interface*  provides 
#     *methods*  to manage Offline Software Depots used during ESX lifecycle management.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for depots resource

package Com::Vmware::Esx::Settings::Depots::Offline;

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
use Com::Vmware::Esx::Settings::Depots::OfflineStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depots.offline';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';

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
# Gets the information about an imported offline software depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @param depot [REQUIRED] Identifier for the depot.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.offline).
# . The value must be str.
#
# @retval 
# Information about the imported offline software depot.
# The return type will be Com::Vmware::Esx::Settings::Depots::Offline::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no depot with given identifier  ``depot``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $depot = $args {depot};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns currently imported offline software depots.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @retval 
# Map of currently imported offline software depots keyed by their identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.offline).
# The return type will be Dictionary of str and
# Com::Vmware::Esx::Settings::Depots::Offline::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method create_task ()
# Imports a new offline software depot. This will also import the metadata and payloads from
# this offline depot. The returned task will fail and no Offline Depot would be created if
# there are any issues during import. The result of this operation can be queried by calling
# the cis/tasks/{task-id} where the task-id is the response of this operation.
#
# @param spec [REQUIRED] Depot specification to import an offline depot.
# . The value must be Com::Vmware::Esx::Settings::Depots::Offline::CreateSpec.
#
# @retval 
# Identifier of the imported depot as part of result structure.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If an invalid pullLocation is provided.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# If the depot content of  ``CreateSpec``  already exists. The value of the data 
#     *field*  of  class Com::Vmware::Vapi::Std::Errors::Error  will be a  *class*  that
#     contains existing depot content id as part of depot  *field*  defined in  class
#     Com::Vmware::Esx::Settings::Depots::Offline::CreateResult .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub create_task {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'create$task',
                         method_args => \%args);
}


## @method delete ()
# Removes a depot from the list of imported offline software depots.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param depot [REQUIRED] Identifier of the depot to be removed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.offline).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no depot associated with parameter  ``depot``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# </ul>
#
sub delete {
   my ($self, %args) = @_;
   my $depot = $args {depot};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depots::Offline service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depots::Offline::SourceType
#
# The  ``Com::Vmware::Esx::Settings::Depots::Offline::SourceType``   *enumerated type* 
#     defines possible values of sources for the offline depot.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depots::Offline::SourceType::PULL #
#Content is pulled from the URL location. The URL scheme of the value in {@link
# #pullLocation) can be http, https or file.
#
# Constant Com::Vmware::Esx::Settings::Depots::Offline::SourceType::PUSH #
#Content was previously uploaded using the file upload enpoint present on vCenter
# appliance. This endpoint is present at https://VCENTERFQDN:9087/vum-fileupload URL.

package Com::Vmware::Esx::Settings::Depots::Offline::SourceType;

use constant {
    PULL =>  'PULL',
    PUSH =>  'PUSH',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Offline::SourceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depots.offline.source_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depots::Offline::SourceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depots::Offline service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depots::Offline service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depots::Offline::CreateSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Offline::CreateSpec``   *class*  defines
#     the information used to create a depot.

package Com::Vmware::Esx::Settings::Depots::Offline::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Offline::CreateSpec structure
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
         'discriminant_name' => 'source_type',
         'case_map' => {
               'PULL' => ['location'],
               'PUSH' => ['file_id'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{source_type} = $args{'source_type'};
   $self->{location} = $args{'location'};
   $self->{file_id} = $args{'file_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Offline::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.offline.create_spec');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'source_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depots', 'type_name' => 'Offline::SourceType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'file_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the depot.
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
# Description of the depot.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_source_type ()
# Gets the value of 'source_type' property.
#
# @retval source_type - The current value of the field.
# Type of the source from which offline bundle is obtained.
#
# SourceType#
sub get_source_type {
   my ($self, %args) = @_;
   return $self->{'source_type'}; 	
}

## @method set_source_type ()
# Sets the given value for 'source_type' property.
# 
# @param source_type  - New value for the field.
# Type of the source from which offline bundle is obtained.
#
sub set_source_type {
   my ($self, %args) = @_;
   $self->{'source_type'} = $args{'source_type'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the depot from which content should be retrieved.
#
# optional#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the depot from which content should be retrieved.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_file_id ()
# Gets the value of 'file_id' property.
#
# @retval file_id - The current value of the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
# optional#
sub get_file_id {
   my ($self, %args) = @_;
   return $self->{'file_id'}; 	
}

## @method set_file_id ()
# Sets the given value for 'file_id' property.
# 
# @param file_id  - New value for the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
sub set_file_id {
   my ($self, %args) = @_;
   $self->{'file_id'} = $args{'file_id'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depots::Offline::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Offline::Info``   *class*  defines the
#     information regarding an Offline Depot.

package Com::Vmware::Esx::Settings::Depots::Offline::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Offline::Info structure
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
         'discriminant_name' => 'source_type',
         'case_map' => {
               'PULL' => ['location'],
               'PUSH' => ['file_id'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{source_type} = $args{'source_type'};
   $self->{location} = $args{'location'};
   $self->{file_id} = $args{'file_id'};
   $self->{create_time} = $args{'create_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Offline::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.offline.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'source_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depots', 'type_name' => 'Offline::SourceType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'file_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'create_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the Depot. If not set during import, it will be empty.
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
# Description of the Depot. If not set during import, it will be empty.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_source_type ()
# Gets the value of 'source_type' property.
#
# @retval source_type - The current value of the field.
# Type of the source from which Offline Depot is obtained.
#
# SourceType#
sub get_source_type {
   my ($self, %args) = @_;
   return $self->{'source_type'}; 	
}

## @method set_source_type ()
# Sets the given value for 'source_type' property.
# 
# @param source_type  - New value for the field.
# Type of the source from which Offline Depot is obtained.
#
sub set_source_type {
   my ($self, %args) = @_;
   $self->{'source_type'} = $args{'source_type'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the depot from which content is retrieved.
#
# optional#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the depot from which content is retrieved.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_file_id ()
# Gets the value of 'file_id' property.
#
# @retval file_id - The current value of the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
# optional#
sub get_file_id {
   my ($self, %args) = @_;
   return $self->{'file_id'}; 	
}

## @method set_file_id ()
# Sets the given value for 'file_id' property.
# 
# @param file_id  - New value for the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
sub set_file_id {
   my ($self, %args) = @_;
   $self->{'file_id'} = $args{'file_id'}; 
   return;	
}

## @method get_create_time ()
# Gets the value of 'create_time' property.
#
# @retval create_time - The current value of the field.
# Time when the depot was created.
#
# DateTime#
sub get_create_time {
   my ($self, %args) = @_;
   return $self->{'create_time'}; 	
}

## @method set_create_time ()
# Sets the given value for 'create_time' property.
# 
# @param create_time  - New value for the field.
# Time when the depot was created.
#
sub set_create_time {
   my ($self, %args) = @_;
   $self->{'create_time'} = $args{'create_time'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depots::Offline::Summary
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Offline::Summary``   *class*  defines the
#     summary information regarding an Offline Depot.

package Com::Vmware::Esx::Settings::Depots::Offline::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Offline::Summary structure
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
         'discriminant_name' => 'source_type',
         'case_map' => {
               'PULL' => ['location'],
               'PUSH' => ['file_id'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{source_type} = $args{'source_type'};
   $self->{location} = $args{'location'};
   $self->{file_id} = $args{'file_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Offline::Summary');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.offline.summary');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'source_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depots', 'type_name' => 'Offline::SourceType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'file_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the Depot. If not set during import, it will be empty.
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
# Description of the Depot. If not set during import, it will be empty.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_source_type ()
# Gets the value of 'source_type' property.
#
# @retval source_type - The current value of the field.
# Type of the source from which Offline Depot is obtained.
#
# SourceType#
sub get_source_type {
   my ($self, %args) = @_;
   return $self->{'source_type'}; 	
}

## @method set_source_type ()
# Sets the given value for 'source_type' property.
# 
# @param source_type  - New value for the field.
# Type of the source from which Offline Depot is obtained.
#
sub set_source_type {
   my ($self, %args) = @_;
   $self->{'source_type'} = $args{'source_type'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the depot from which content is retrieved.
#
# optional#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the depot from which content is retrieved.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_file_id ()
# Gets the value of 'file_id' property.
#
# @retval file_id - The current value of the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
# optional#
sub get_file_id {
   my ($self, %args) = @_;
   return $self->{'file_id'}; 	
}

## @method set_file_id ()
# Sets the given value for 'file_id' property.
# 
# @param file_id  - New value for the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
sub set_file_id {
   my ($self, %args) = @_;
   $self->{'file_id'} = $args{'file_id'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depots::Offline::CreateResult
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Offline::CreateResult``   *class*  defines
#     the result information for a new Offline Depot.

package Com::Vmware::Esx::Settings::Depots::Offline::CreateResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Offline::CreateResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{depot} = $args{'depot'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Offline::CreateResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.offline.create_result');
   $self->set_binding_field('key' => 'depot', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_depot ()
# Gets the value of 'depot' property.
#
# @retval depot - The current value of the field.
# ID of the Offline Depot.
#
# ID#
sub get_depot {
   my ($self, %args) = @_;
   return $self->{'depot'}; 	
}

## @method set_depot ()
# Sets the given value for 'depot' property.
# 
# @param depot  - New value for the field.
# ID of the Offline Depot.
#
sub set_depot {
   my ($self, %args) = @_;
   $self->{'depot'} = $args{'depot'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Depots::Offline service
#########################################################################################
