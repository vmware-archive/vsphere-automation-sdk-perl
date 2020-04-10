########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Online.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depots::Online
# The  ``Com::Vmware::Esx::Settings::Depots::Online``   *interface*  provides  *methods*
#      to manage Online Software Depots used during ESX lifecycle management.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for depots resource

package Com::Vmware::Esx::Settings::Depots::Online;

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
use Com::Vmware::Esx::Settings::Depots::OnlineStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depots.online';


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
# Returns a list of currently configured online software depots.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @retval 
# Map of currently configured online software depots keyed by their identifiers.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.online).
# The return type will be Dictionary of str and
# Com::Vmware::Esx::Settings::Depots::Online::Summary
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

## @method get ()
# Gets the information about a currently configured online software depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @param depot [REQUIRED] Identifier for the depot.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.online).
# . The value must be str.
#
# @retval 
# Information of the currently configured online software depot.
# The return type will be Com::Vmware::Esx::Settings::Depots::Online::Info
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

## @method create ()
# Adds a new online software depot to the list of currently configured online software
# depots.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param spec [REQUIRED] Depot information.
# . The value must be Com::Vmware::Esx::Settings::Depots::Online::CreateSpec.
#
# @retval 
# Identifier of the currently configured online software depot.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.online).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If an invalid location is provided.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if depot with given location already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# </ul>
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
# Removes a depot from the list of currently configured online software depots. It will not
# remove the downloaded metadata and payloads from that depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param depot [REQUIRED] Identifier of the depot to be removed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.online).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If given depot is system defined.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no depot associated with  ``depot``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
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

## @method update ()
# Updates the configuration of a currently configured online software depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param depot [REQUIRED] Identifier of the depot to be updated.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.depots.online).
# . The value must be str.
#
# @param spec [REQUIRED] Update specification.
# . The value must be Com::Vmware::Esx::Settings::Depots::Online::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If given depot is system defined.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no depot associated with parameter  ``depot``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# </ul>
#
sub update {
   my ($self, %args) = @_;
   my $depot = $args {depot};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depots::Online service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depots::Online service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depots::Online service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depots::Online::CreateSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Online::CreateSpec``   *class*  defines the
#     information used to create a depot.

package Com::Vmware::Esx::Settings::Depots::Online::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Online::CreateSpec structure
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
   $self->{location} = $args{'location'};
   $self->{enabled} = $args{'enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Online::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.online.create_spec');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the Depot.
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
# Description of the Depot.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the Depot. It should be the location to the index.xml for that depot.
#
# URI#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the Depot. It should be the location to the index.xml for that depot.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether this depot is enabled or not. Disabling the depot doesn&apos;t
#     delete its cached metadata and payloads. It will not be refreshed next time depots are
#     re-synced.
#
# Optional#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Flag indicating whether this depot is enabled or not. Disabling the depot doesn&apos;t
#     delete its cached metadata and payloads. It will not be refreshed next time depots are
#     re-synced.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depots::Online::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Online::Info``   *class*  defines the
#     information regarding a Depot.

package Com::Vmware::Esx::Settings::Depots::Online::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Online::Info structure
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
   $self->{location} = $args{'location'};
   $self->{enabled} = $args{'enabled'};
   $self->{system_defined} = $args{'system_defined'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Online::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.online.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'system_defined', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the Depot. It will be an empty string if no description was provided
#     during create.
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
# Description of the Depot. It will be an empty string if no description was provided
#     during create.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the Depot.
#
# URI#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the Depot.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether this depot is enabled or not.
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
# Flag indicating whether this depot is enabled or not.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_system_defined ()
# Gets the value of 'system_defined' property.
#
# @retval system_defined - The current value of the field.
# Flag to indicate if the depot is system defined. System defined depot can not be
#     deleted.
#
# boolean#
sub get_system_defined {
   my ($self, %args) = @_;
   return $self->{'system_defined'}; 	
}

## @method set_system_defined ()
# Sets the given value for 'system_defined' property.
# 
# @param system_defined  - New value for the field.
# Flag to indicate if the depot is system defined. System defined depot can not be
#     deleted.
#
sub set_system_defined {
   my ($self, %args) = @_;
   $self->{'system_defined'} = $args{'system_defined'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depots::Online::Summary
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Online::Summary``   *class*  defines the
#     summary information regarding a Depot.

package Com::Vmware::Esx::Settings::Depots::Online::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Online::Summary structure
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
   $self->{location} = $args{'location'};
   $self->{enabled} = $args{'enabled'};
   $self->{system_defined} = $args{'system_defined'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Online::Summary');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.online.summary');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'system_defined', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the Depot. It will be an empty string if no description was provided
#     during create.
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
# Description of the Depot. It will be an empty string if no description was provided
#     during create.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the Depot.
#
# URI#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the Depot.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether this depot is enabled or not.
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
# Flag indicating whether this depot is enabled or not.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_system_defined ()
# Gets the value of 'system_defined' property.
#
# @retval system_defined - The current value of the field.
# Flag to indicate if the depot is system defined. System defined depot can not be
#     deleted.
#
# boolean#
sub get_system_defined {
   my ($self, %args) = @_;
   return $self->{'system_defined'}; 	
}

## @method set_system_defined ()
# Sets the given value for 'system_defined' property.
# 
# @param system_defined  - New value for the field.
# Flag to indicate if the depot is system defined. System defined depot can not be
#     deleted.
#
sub set_system_defined {
   my ($self, %args) = @_;
   $self->{'system_defined'} = $args{'system_defined'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depots::Online::UpdateSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Online::UpdateSpec``   *class*  defines the
#     information used to update the depot.

package Com::Vmware::Esx::Settings::Depots::Online::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Online::UpdateSpec structure
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
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Online::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.online.update_spec');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether this depot is enabled or not. Disabling the depot doesn&apos;t
#     delete its cached metadata and payloads. It will not be refreshed next time depots are
#     re-synced.
#
# Optional#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Flag indicating whether this depot is enabled or not. Disabling the depot doesn&apos;t
#     delete its cached metadata and payloads. It will not be refreshed next time depots are
#     re-synced.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the Depot.
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
# Description of the Depot.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Depots::Online service
#########################################################################################
