########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Versions.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions
# The  ``Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions``  
#     *interface*  provides  *methods*  to get versions of base-images from the sync&apos;ed
#     and imported depots.
#

package Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions;

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
use Com::Vmware::Esx::Settings::Depot_content::Base_images::VersionsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depot_content.base_images.versions';


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
# Returns information about a given base-image version in the depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @param version [REQUIRED] Version of the base-image
# . The value must be String.
#
# @retval 
# Information about the given base-image
# The return type will be
# Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if base-image with given version is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $version = $args {version};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType
#
# The 
#     ``Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType``  
#     *enumerated type*  defines possible values of categories for a base-image.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType::SECURITY #
#Security
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType::ENHANCEMENT #
#Enhancement
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType::BUGFIX #
#Bugfix

package Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType;

use constant {
    SECURITY =>  'SECURITY',
    ENHANCEMENT =>  'ENHANCEMENT',
    BUGFIX =>  'BUGFIX',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depot_content.base_images.versions.category_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::CategoryType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::ComponentVersionInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::ComponentVersionInfo``
#       *class*  defines the information regarding a component present inbase-image.

package Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::ComponentVersionInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::ComponentVersionInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{display_name} = $args{'display_name'};
   $self->{version} = $args{'version'};
   $self->{display_version} = $args{'display_version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::ComponentVersionInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depot_content.base_images.versions.component_version_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Identifier of the component.
#
# ID#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Identifier of the component.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the component.
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
# Display name of the component.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the component.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the component.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Human readable version of the base-image.
#
# String#
sub get_display_version {
   my ($self, %args) = @_;
   return $self->{'display_version'}; 	
}

## @method set_display_version ()
# Sets the given value for 'display_version' property.
# 
# @param display_version  - New value for the field.
# Human readable version of the base-image.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::Info``  
#     *class*  defines the information regarding a base-image.

package Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::Info structure
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
   $self->{version} = $args{'version'};
   $self->{display_version} = $args{'display_version'};
   $self->{summary} = $args{'summary'};
   $self->{description} = $args{'description'};
   $self->{category} = $args{'category'};
   $self->{kb} = $args{'kb'};
   $self->{release_date} = $args{'release_date'};
   $self->{components} = $args{'components'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depot_content.base_images.versions.info');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'summary', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content::Base_images', 'type_name' => 'Versions::CategoryType'));
   $self->set_binding_field('key' => 'kb', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'components', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content::Base_images', 'type_name' => 'Versions::ComponentVersionInfo')));
   bless $self, $class;
   return $self;
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the base-image.
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
# Display name of the base-image.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the base-image.
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
# Version of the base-image.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Human readable version of the base-image.
#
# String#
sub get_display_version {
   my ($self, %args) = @_;
   return $self->{'display_version'}; 	
}

## @method set_display_version ()
# Sets the given value for 'display_version' property.
# 
# @param display_version  - New value for the field.
# Human readable version of the base-image.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}

## @method get_summary ()
# Gets the value of 'summary' property.
#
# @retval summary - The current value of the field.
# Summary of the base-image.
#
# String#
sub get_summary {
   my ($self, %args) = @_;
   return $self->{'summary'}; 	
}

## @method set_summary ()
# Sets the given value for 'summary' property.
# 
# @param summary  - New value for the field.
# Summary of the base-image.
#
sub set_summary {
   my ($self, %args) = @_;
   $self->{'summary'} = $args{'summary'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Discription of the base-image.
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
# Discription of the base-image.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# Category of the base-image.
#
# CategoryType#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# Category of the base-image.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_kb ()
# Gets the value of 'kb' property.
#
# @retval kb - The current value of the field.
# Link to kb article related to this the base-image.
#
# URI#
sub get_kb {
   my ($self, %args) = @_;
   return $self->{'kb'}; 	
}

## @method set_kb ()
# Sets the given value for 'kb' property.
# 
# @param kb  - New value for the field.
# Link to kb article related to this the base-image.
#
sub set_kb {
   my ($self, %args) = @_;
   $self->{'kb'} = $args{'kb'}; 
   return;	
}

## @method get_release_date ()
# Gets the value of 'release_date' property.
#
# @retval release_date - The current value of the field.
# Release date of the base-image.
#
# DateTime#
sub get_release_date {
   my ($self, %args) = @_;
   return $self->{'release_date'}; 	
}

## @method set_release_date ()
# Sets the given value for 'release_date' property.
# 
# @param release_date  - New value for the field.
# Release date of the base-image.
#
sub set_release_date {
   my ($self, %args) = @_;
   $self->{'release_date'} = $args{'release_date'}; 
   return;	
}

## @method get_components ()
# Gets the value of 'components' property.
#
# @retval components - The current value of the field.
# List of components in this base-image.
#
# List#
sub get_components {
   my ($self, %args) = @_;
   return $self->{'components'}; 	
}

## @method set_components ()
# Sets the given value for 'components' property.
# 
# @param components  - New value for the field.
# List of components in this base-image.
#
sub set_components {
   my ($self, %args) = @_;
   $self->{'components'} = $args{'components'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Depot_content::Base_images::Versions service
#########################################################################################
