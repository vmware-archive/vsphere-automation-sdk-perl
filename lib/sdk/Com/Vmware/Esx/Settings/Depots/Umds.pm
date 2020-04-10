########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Umds.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depots::Umds
# The  ``Com::Vmware::Esx::Settings::Depots::Umds``   *interface*  provides  *methods* 
#     to manage VMware vSphere Update Manager Download Service (UMDS) software depots used
#     during ESX lifecycle management. This is the depot downloaded using UMDS.<p>
# 
# If a UMDS depot is specified then online depots are ignored and data is downloaded
#     only from the UMDS depot.</p>
#

package Com::Vmware::Esx::Settings::Depots::Umds;

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
use Com::Vmware::Esx::Settings::Depots::UmdsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depots.umds';


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
# Gets the information about a currently configured UMDS software depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @retval 
# Information of the currently configured UMDS software depot.
# The return type will be Com::Vmware::Esx::Settings::Depots::Umds::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no UMDS software depot set.
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
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method set ()
# Sets or overwrites information about an UMDS software depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param spec [REQUIRED] 
# . The value must be Com::Vmware::Esx::Settings::Depots::Umds::SetSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If an invalid location is provided.
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
sub set {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method delete ()
# Removes the configured UMDS software depot. It will not remove the downloaded metadata and
# payloads from that depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no UMDS software depot set.
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
   return $self->invoke(method_name => 'delete', method_args =>  {});
}

## @method update ()
# Updates the configuration of a currently configured UMDS software depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param spec [REQUIRED] Update specification.
# . The value must be Com::Vmware::Esx::Settings::Depots::Umds::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no UMDS depot configured.
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
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depots::Umds service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depots::Umds service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depots::Umds service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depots::Umds::SetSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Umds::SetSpec``   *class*  defines the
#     information of an UMDS depot.

package Com::Vmware::Esx::Settings::Depots::Umds::SetSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Umds::SetSpec structure
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
   $self->{enabled} = $args{'enabled'};
   $self->{location} = $args{'location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Umds::SetSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.umds.set_spec');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
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

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether or not this depot should be enabled. Disabling the depot
#     doesn&apos;t delete its cached metadata and payloads. It will not be refreshed next
#     time depots are re-synced.
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
# Flag indicating whether or not this depot should be enabled. Disabling the depot
#     doesn&apos;t delete its cached metadata and payloads. It will not be refreshed next
#     time depots are re-synced.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
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


1;


## @class Com::Vmware::Esx::Settings::Depots::Umds::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Umds::Info``   *class*  defines the
#     information regarding an UMDS Depot.

package Com::Vmware::Esx::Settings::Depots::Umds::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Umds::Info structure
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
   $self->{enabled} = $args{'enabled'};
   $self->{location} = $args{'location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Umds::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.umds.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
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

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether or not this depot is enabled.
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
# Flag indicating whether or not this depot is enabled.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
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


1;


## @class Com::Vmware::Esx::Settings::Depots::Umds::UpdateSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::Umds::UpdateSpec``   *class*  defines the
#     information used to update the UMDS depot.

package Com::Vmware::Esx::Settings::Depots::Umds::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::Umds::UpdateSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::Umds::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.umds.update_spec');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether or not this depot is enabled. Disabling the depot doesn&apos;t
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
# Flag indicating whether or not this depot is enabled. Disabling the depot doesn&apos;t
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
# Ends structures for the Com::Vmware::Esx::Settings::Depots::Umds service
#########################################################################################
