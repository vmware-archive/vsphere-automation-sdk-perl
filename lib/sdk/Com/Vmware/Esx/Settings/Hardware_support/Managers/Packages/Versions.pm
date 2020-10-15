########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Versions.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions
# The  ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions``  
#     *interface*  provides  *methods*  to inspect a Hardware Support Package (HSP)&apos;s
#     detailed information.
#

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions;

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
use Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::VersionsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.hardware_support.managers.packages.versions';


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
# Returns the detailed information for a specific version of an available Hardware Support
# Packages (HSPs) as specified by the Hardware Support Manager (HSM)
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @param manager [REQUIRED] Identifier for the Hardware Support Manager (HSM).
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.setting.hardware_support.manager).
# . The value must be str.
#
# @param pkg [REQUIRED] The name of the Hardware Support Package (HSP)
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.setting.hardware_support.package).
# . The value must be str.
#
# @param version [REQUIRED] The version of the Hardware Support Package (HSP)
# . The value must be String.
#
# @param filter [OPTIONAL] Specification of detailed information to be returned
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::FilterSpec
#     with all  *fields*   *null* , which means all releases supported are returned but no
#     component information for any particular release is included.
# . The value must be
# Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::FilterSpec or
# None.
#
# @retval 
# detailed information on Hardware Support Packages (HSPs)
# The return type will be
# Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::PackageInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If any of the specified parameters are Invalid (e.g. if the release version specified
#     in the query parameter is not, in fact, among those supported by the Hardware Support
#     Package (HSP).
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no Hardware Support Manager (HSM) with the specified name, or no Hardware
#     Support Package (HSP) with the specified name and version.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated. named  ``manager``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have the required privilege to perform the operation.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $manager = $args {manager};
   my $pkg = $args {pkg};
   my $version = $args {version};
   my $filter = $args {filter};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::RemovedComponentInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::RemovedComponentInfo``
#       *class*  defines the information regarding a component removed by the HSP manifest.

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::RemovedComponentInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::RemovedComponentInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::RemovedComponentInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support.managers.packages.versions.removed_component_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
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


1;


## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::ComponentInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::ComponentInfo``
#       *class*  defines the information regarding a component present in HSP manifest.

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::ComponentInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::ComponentInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::ComponentInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support.managers.packages.versions.component_info');
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
# Human readable version of the HSP manifest.
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
# Human readable version of the HSP manifest.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::PackageInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::PackageInfo``
#     *class*  contains  *fields*  that describe a particular 3rd party Hardware Support
#     Package (HSP)

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::PackageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::PackageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pkg} = $args{'pkg'};
   $self->{version} = $args{'version'};
   $self->{description} = $args{'description'};
   $self->{supported_releases} = $args{'supported_releases'};
   $self->{components} = $args{'components'};
   $self->{removed_components} = $args{'removed_components'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::PackageInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support.managers.packages.versions.package_info');
   $self->set_binding_field('key' => 'pkg', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'supported_releases', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'components', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages', 'type_name' => 'Versions::ComponentInfo')));
   $self->set_binding_field('key' => 'removed_components', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages', 'type_name' => 'Versions::RemovedComponentInfo')));
   bless $self, $class;
   return $self;
}

## @method get_pkg ()
# Gets the value of 'pkg' property.
#
# @retval pkg - The current value of the field.
# Name of the Hardware Support Package (e.g. &quot;Jan. 2018 Release&quot; or
#     &quot;Latest Hardware Support Package for Frobozz GenX hardware&quot;) selected
#
# ID#
sub get_pkg {
   my ($self, %args) = @_;
   return $self->{'pkg'}; 	
}

## @method set_pkg ()
# Sets the given value for 'pkg' property.
# 
# @param pkg  - New value for the field.
# Name of the Hardware Support Package (e.g. &quot;Jan. 2018 Release&quot; or
#     &quot;Latest Hardware Support Package for Frobozz GenX hardware&quot;) selected
#
sub set_pkg {
   my ($self, %args) = @_;
   $self->{'pkg'} = $args{'pkg'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the Hardware Support Package (e.g. &quot;20180128.1&quot; or
#     &quot;v42&quot;) selected
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
# Version of the Hardware Support Package (e.g. &quot;20180128.1&quot; or
#     &quot;v42&quot;) selected
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the Hardware Support Package (HSP) (e.g. for use in help bubble)
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
# Description of the Hardware Support Package (HSP) (e.g. for use in help bubble)
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_supported_releases ()
# Gets the value of 'supported_releases' property.
#
# @retval supported_releases - The current value of the field.
# Supported vSphere releases
#
# Set#
sub get_supported_releases {
   my ($self, %args) = @_;
   return $self->{'supported_releases'}; 	
}

## @method set_supported_releases ()
# Sets the given value for 'supported_releases' property.
# 
# @param supported_releases  - New value for the field.
# Supported vSphere releases
#
sub set_supported_releases {
   my ($self, %args) = @_;
   $self->{'supported_releases'} = $args{'supported_releases'}; 
   return;	
}

## @method get_components ()
# Gets the value of 'components' property.
#
# @retval components - The current value of the field.
# List of components in this HSP manifest.
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
# List of components in this HSP manifest.
#
sub set_components {
   my ($self, %args) = @_;
   $self->{'components'} = $args{'components'}; 
   return;	
}

## @method get_removed_components ()
# Gets the value of 'removed_components' property.
#
# @retval removed_components - The current value of the field.
# List of components removed by this HSP manifest.
#
# List#
sub get_removed_components {
   my ($self, %args) = @_;
   return $self->{'removed_components'}; 	
}

## @method set_removed_components ()
# Sets the given value for 'removed_components' property.
# 
# @param removed_components  - New value for the field.
# List of components removed by this HSP manifest.
#
sub set_removed_components {
   my ($self, %args) = @_;
   $self->{'removed_components'} = $args{'removed_components'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::FilterSpec
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::FilterSpec``
#     *class*  contains  *fields*  used to filter the results when retrieving Hardware
#     Support Packages (HSPs) information.

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{base_image_version} = $args{'base_image_version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support.managers.packages.versions.filter_spec');
   $self->set_binding_field('key' => 'base_image_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_base_image_version ()
# Gets the value of 'base_image_version' property.
#
# @retval base_image_version - The current value of the field.
# vSphere release version for the component information in the Hardware Support Package
#     (HSP). Only Hardware Support Packages (HSPs) compatible with the vSphere release
#     version specified in &apos;baseImageVersion&apos; will be returned. The
#     &apos;baseImageVersion&apos; parameter should be a full numeric base image version
#     string (e.g. &quot;7.1.0-2.3.436234&quot;). Future implementations may support version
#     specification by prefix (e.g. &quot;7.1&quot; to specify all updates and builds of
#     7.1) or other forms of specification (e.g. &quot;&gt;=7.0&quot;). Hardware Support
#     Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate
#     the remainder is wildcarded. Matching is on the specified substring only, so a bundle
#     supporting &quot;7.1.0-2&quot; would match a &apos;release&apos; parameter of
#     &quot;7.1.0-2.3.436234&quot; as well as &quot;7.1.0-2.1.4133564&quot; and
#     &quot;7.1.0-2.0.355667&quot; but not &quot;7.1.0-3.0.63445&quot; or any base image
#     version starting with &quot;7.2&quot;. Note that we require compatible base image
#     versions be specified at least down to the update version (i.e. &quot;7.0&quot; is
#     insufficiently constrained)
#
# Optional#
sub get_base_image_version {
   my ($self, %args) = @_;
   return $self->{'base_image_version'}; 	
}

## @method set_base_image_version ()
# Sets the given value for 'base_image_version' property.
# 
# @param base_image_version  - New value for the field.
# vSphere release version for the component information in the Hardware Support Package
#     (HSP). Only Hardware Support Packages (HSPs) compatible with the vSphere release
#     version specified in &apos;baseImageVersion&apos; will be returned. The
#     &apos;baseImageVersion&apos; parameter should be a full numeric base image version
#     string (e.g. &quot;7.1.0-2.3.436234&quot;). Future implementations may support version
#     specification by prefix (e.g. &quot;7.1&quot; to specify all updates and builds of
#     7.1) or other forms of specification (e.g. &quot;&gt;=7.0&quot;). Hardware Support
#     Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate
#     the remainder is wildcarded. Matching is on the specified substring only, so a bundle
#     supporting &quot;7.1.0-2&quot; would match a &apos;release&apos; parameter of
#     &quot;7.1.0-2.3.436234&quot; as well as &quot;7.1.0-2.1.4133564&quot; and
#     &quot;7.1.0-2.0.355667&quot; but not &quot;7.1.0-3.0.63445&quot; or any base image
#     version starting with &quot;7.2&quot;. Note that we require compatible base image
#     versions be specified at least down to the update version (i.e. &quot;7.0&quot; is
#     insufficiently constrained)
#
sub set_base_image_version {
   my ($self, %args) = @_;
   $self->{'base_image_version'} = $args{'base_image_version'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::Versions service
#########################################################################################
