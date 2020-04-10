########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Versions.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depot_content::Components::Versions
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::Versions``   *interface*
#     provides  *methods*  to get component versions from the sync&apos;ed and imported
#     depots.
#

package Com::Vmware::Esx::Settings::Depot_content::Components::Versions;

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
use Com::Vmware::Esx::Settings::Depot_content::Components::VersionsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depot_content.components.versions';


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
# Returns information about a given component version in the depot.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @param name [REQUIRED] Name of the component
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.component).
# . The value must be str.
#
# @param version [REQUIRED] Version of the component
# . The value must be String.
#
# @retval 
# Information about the given component
# The return type will be
# Com::Vmware::Esx::Settings::Depot_content::Components::Versions::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if component with given version is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $name = $args {name};
   my $version = $args {version};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depot_content::Components::Versions service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType``
#       *enumerated type*  defines possible values of categories for a component.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::SECURITY #
#Security
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::ENHANCEMENT #
#Enhancement
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::BUGFIX #
#Bugfix
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::RECALL #
#Recall
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::RECALL_FIX #
#Recall-fix
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::INFO #
#Info
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::MISC #
#Misc
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType::GENERAL #
#General

package Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType;

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
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depot_content.components.versions.category_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::Versions::CategoryType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType`` 
#      *enumerated type*  defines possible values of urgencies for a component.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType::CRITICAL #
#Critical
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType::IMPORTANT #
#Important
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType::MODERATE #
#Moderate
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType::LOW #
#Low
#
# Constant Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType::GENERAL #
#General

package Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType;

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
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depot_content.components.versions.urgency_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::Versions::UrgencyType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depot_content::Components::Versions service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depot_content::Components::Versions service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depot_content::Components::Versions::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Depot_content::Components::Versions::Info``  
#     *class*  defines the information regarding a component version.

package Com::Vmware::Esx::Settings::Depot_content::Components::Versions::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depot_content::Components::Versions::Info structure
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
   $self->{vendor} = $args{'vendor'};
   $self->{display_version} = $args{'display_version'};
   $self->{summary} = $args{'summary'};
   $self->{description} = $args{'description'};
   $self->{category} = $args{'category'};
   $self->{urgency} = $args{'urgency'};
   $self->{kb} = $args{'kb'};
   $self->{contact} = $args{'contact'};
   $self->{release_date} = $args{'release_date'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depot_content::Components::Versions::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depot_content.components.versions.info');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'summary', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content::Components', 'type_name' => 'Versions::CategoryType'));
   $self->set_binding_field('key' => 'urgency', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depot_content::Components', 'type_name' => 'Versions::UrgencyType'));
   $self->set_binding_field('key' => 'kb', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'contact', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
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

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Discription of the component version.
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
# Discription of the component version.
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

## @method get_contact ()
# Gets the value of 'contact' property.
#
# @retval contact - The current value of the field.
# Contact email for the component version.
#
# String#
sub get_contact {
   my ($self, %args) = @_;
   return $self->{'contact'}; 	
}

## @method set_contact ()
# Sets the given value for 'contact' property.
# 
# @param contact  - New value for the field.
# Contact email for the component version.
#
sub set_contact {
   my ($self, %args) = @_;
   $self->{'contact'} = $args{'contact'}; 
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



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Depot_content::Components::Versions service
#########################################################################################
