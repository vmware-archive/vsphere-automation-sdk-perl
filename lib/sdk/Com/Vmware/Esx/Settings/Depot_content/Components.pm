########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Components.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depot_content::Components
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components``   *interface*  provides
#      *methods*  to get Components from the sync&apos;ed and imported depots.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for add-on resource

package Com::Vmware::Esx::Settings::Depot_content::Components;

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
use Com::Vmware::Esx::Settings::Depot_content::ComponentsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depot_content.components';


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
# Returns a list of currently available components in the depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read, VcIntegrity.lifecycleSettings.Read.
#
# @param filter [OPTIONAL] The specification of matching components.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Esx::Settings::Depot_content::Components::FilterSpec  with all  *fields* 
#      *null* , which means ALL components match the filter.
# . The value must be Com::Vmware::Esx::Settings::Depot_content::Components::FilterSpec or
# None.
#
# @retval 
# List of components in the depot.
# The return type will be Array of
# Com::Vmware::Esx::Settings::Depot_content::Components::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
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
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depot_content::Components service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType``  
#     *enumerated type*  defines possible values of categories for a component.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::SECURITY #
#Security
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::ENHANCEMENT #
#Enhancement
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::BUGFIX #
#Bugfix
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::RECALL #
#Recall
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::RECALL_FIX #
#Recall-fix
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::INFO #
#Info
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::MISC #
#Misc
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType::GENERAL #
#General

package Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType;

use constant {
    SECURITY =>  'SECURITY',
    ENHANCEMENT =>  'ENHANCEMENT',
    BUGFIX =>  'BUGFIX',
    RECALL =>  'RECALL',
    RECALL_FIX =>  'RECALL_FIX',
    INFO =>  'INFO',
    MISC =>  'MISC',
    GENERAL =>  'GENERAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depot_content.components.category_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::CategoryType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType``  
#     *enumerated type*  defines possible values of urgencies for a component.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType::CRITICAL #
#Critical
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType::IMPORTANT #
#Important
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType::MODERATE #
#Moderate
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType::LOW #
#Low
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType::GENERAL #
#General

package Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType;

use constant {
    CRITICAL =>  'CRITICAL',
    IMPORTANT =>  'IMPORTANT',
    MODERATE =>  'MODERATE',
    LOW =>  'LOW',
    GENERAL =>  'GENERAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depot_content.components.urgency_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::UrgencyType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType``  
#     *enumerated type*  defines possible ways components are bundled.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType::INDEPENDENT #
#Components not bundled in base-images or add-ons
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType::BASE_IMAGE #
#Components bundled in base-images
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType::ADD_ON #
#Components bundled in add-ons

package Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType;

use constant {
    INDEPENDENT =>  'INDEPENDENT',
    BASE_IMAGE =>  'BASE_IMAGE',
    ADD_ON =>  'ADD_ON',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depot_content.components.component_bundle_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::ComponentBundleType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depot_content::Components service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depot_content::Components service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depot_content::Components::Summary
#
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::Summary``   *class* 
#     defines the summary information regarding a component.

package Com::Vmware::Esx::Settings::Depot_content::Components::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::Summary structure
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
   $self->{vendor} = $args{'vendor'};
   $self->{versions} = $args{'versions'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::Summary');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depot_content.components.summary');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'versions', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content', 'type_name' => 'Components::ComponentVersionSummary')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the Component.
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
# Name of the Component.
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

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# Vendor of the component.
#
# String#
sub get_vendor {
   my ($self, %args) = @_;
   return $self->{'vendor'}; 	
}

## @method set_vendor ()
# Sets the given value for 'vendor' property.
# 
# @param vendor  - New value for the field.
# Vendor of the component.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}

## @method get_versions ()
# Gets the value of 'versions' property.
#
# @retval versions - The current value of the field.
# Summary information about the versions of this component. These are sorted by the
#     version.
#
# List#
sub get_versions {
   my ($self, %args) = @_;
   return $self->{'versions'}; 	
}

## @method set_versions ()
# Sets the given value for 'versions' property.
# 
# @param versions  - New value for the field.
# Summary information about the versions of this component. These are sorted by the
#     version.
#
sub set_versions {
   my ($self, %args) = @_;
   $self->{'versions'} = $args{'versions'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depot_content::Components::ComponentVersionSummary
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Depot_content::Components::ComponentVersionSummary``  
#     *class*  defines the summary information regarding a version of a component.

package Com::Vmware::Esx::Settings::Depot_content::Components::ComponentVersionSummary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::ComponentVersionSummary structure
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
   $self->{display_version} = $args{'display_version'};
   $self->{summary} = $args{'summary'};
   $self->{category} = $args{'category'};
   $self->{urgency} = $args{'urgency'};
   $self->{kb} = $args{'kb'};
   $self->{release_date} = $args{'release_date'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::ComponentVersionSummary');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depot_content.components.component_version_summary');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'summary', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content', 'type_name' => 'Components::CategoryType'));
   $self->set_binding_field('key' => 'urgency', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content', 'type_name' => 'Components::UrgencyType'));
   $self->set_binding_field('key' => 'kb', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
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
# Human readable version of the component.
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
# Human readable version of the component.
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
# Summary of the component version.
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
# Summary of the component version.
#
sub set_summary {
   my ($self, %args) = @_;
   $self->{'summary'} = $args{'summary'}; 
   return;	
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# Category of the component version.
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
# Category of the component version.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_urgency ()
# Gets the value of 'urgency' property.
#
# @retval urgency - The current value of the field.
# Urgency of the component version.
#
# UrgencyType#
sub get_urgency {
   my ($self, %args) = @_;
   return $self->{'urgency'}; 	
}

## @method set_urgency ()
# Sets the given value for 'urgency' property.
# 
# @param urgency  - New value for the field.
# Urgency of the component version.
#
sub set_urgency {
   my ($self, %args) = @_;
   $self->{'urgency'} = $args{'urgency'}; 
   return;	
}

## @method get_kb ()
# Gets the value of 'kb' property.
#
# @retval kb - The current value of the field.
# Link to kb article related to this the component version.
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
# Link to kb article related to this the component version.
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
# Release date of the component version.
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
# Release date of the component version.
#
sub set_release_date {
   my ($self, %args) = @_;
   $self->{'release_date'} = $args{'release_date'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depot_content::Components::FilterSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::FilterSpec``   *class* 
#     contains  *fields*  used to filter the results when listing components, see 
#     :func:`Com::Vmware::Esx::Settings::Depot_content::Components.list` ).

package Com::Vmware::Esx::Settings::Depot_content::Components::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vendors} = $args{'vendors'};
   $self->{names} = $args{'names'};
   $self->{versions} = $args{'versions'};
   $self->{min_version} = $args{'min_version'};
   $self->{bundle_types} = $args{'bundle_types'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depot_content.components.filter_spec');
   $self->set_binding_field('key' => 'vendors', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'versions', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'min_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'bundle_types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content', 'type_name' => 'Components::ComponentBundleType')))));
   bless $self, $class;
   return $self;
}

## @method get_vendors ()
# Gets the value of 'vendors' property.
#
# @retval vendors - The current value of the field.
# Vendors that a component must have to match the filter.
#
# Optional#
sub get_vendors {
   my ($self, %args) = @_;
   return $self->{'vendors'}; 	
}

## @method set_vendors ()
# Sets the given value for 'vendors' property.
# 
# @param vendors  - New value for the field.
# Vendors that a component must have to match the filter.
#
sub set_vendors {
   my ($self, %args) = @_;
   $self->{'vendors'} = $args{'vendors'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that a component must have to match the filter.
#
# Optional#
sub get_names {
   my ($self, %args) = @_;
   return $self->{'names'}; 	
}

## @method set_names ()
# Sets the given value for 'names' property.
# 
# @param names  - New value for the field.
# Names that a component must have to match the filter.
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_versions ()
# Gets the value of 'versions' property.
#
# @retval versions - The current value of the field.
# Versions that a component must have to match the filter.
#
# Optional#
sub get_versions {
   my ($self, %args) = @_;
   return $self->{'versions'}; 	
}

## @method set_versions ()
# Sets the given value for 'versions' property.
# 
# @param versions  - New value for the field.
# Versions that a component must have to match the filter.
#
sub set_versions {
   my ($self, %args) = @_;
   $self->{'versions'} = $args{'versions'}; 
   return;	
}

## @method get_min_version ()
# Gets the value of 'min_version' property.
#
# @retval min_version - The current value of the field.
# Minimum version of the component that can match the filter.
#
# Optional#
sub get_min_version {
   my ($self, %args) = @_;
   return $self->{'min_version'}; 	
}

## @method set_min_version ()
# Sets the given value for 'min_version' property.
# 
# @param min_version  - New value for the field.
# Minimum version of the component that can match the filter.
#
sub set_min_version {
   my ($self, %args) = @_;
   $self->{'min_version'} = $args{'min_version'}; 
   return;	
}

## @method get_bundle_types ()
# Gets the value of 'bundle_types' property.
#
# @retval bundle_types - The current value of the field.
# Component bundle types that a component must have to match the filter.
#
# Optional#
sub get_bundle_types {
   my ($self, %args) = @_;
   return $self->{'bundle_types'}; 	
}

## @method set_bundle_types ()
# Sets the given value for 'bundle_types' property.
# 
# @param bundle_types  - New value for the field.
# Component bundle types that a component must have to match the filter.
#
sub set_bundle_types {
   my ($self, %args) = @_;
   $self->{'bundle_types'} = $args{'bundle_types'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Depot_content::Components service
#########################################################################################
