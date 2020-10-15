########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Packages.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages
# The  ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages``  
#     *interface*  provides  *methods*  to manage a host&apos;s Hardware Support Package
#     (HSP) configuration.
#

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages;

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
use Com::Vmware::Esx::Settings::Hardware_support::Managers::PackagesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.hardware_support.managers.packages';


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
# Returns the list of available Hardware Support Packages (HSPs) for a particular host, as
# specified by its Hardware Support Manager (HSM)
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @param manager [REQUIRED] Identifier for the Hardware Support Manager (HSM).
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.setting.hardware_support.manager).
# . The value must be str.
#
# @param filter [OPTIONAL] Specification of Hardware Support Packages (HSPs) to be returned
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::FilterSpec  with all
#      *fields*   *null* , which means all HSPs match the filter.
# . The value must be
# Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::FilterSpec or None.
#
# @retval 
# List of available Hardware Support Packages (HSPs) for given manager
# The return type will be Array of
# Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::HardwareSupportPackageInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no Hardware Support Manager (HSM) with the specified name
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated. named  ``manager``  in the system.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   my $manager = $args {manager};
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::HardwareSupportPackageInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::HardwareSupportPackageInfo``
#     *class*  contains  *fields*  that describe a particular 3rd party Hardware Support
#     Package (HSP)

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::HardwareSupportPackageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::HardwareSupportPackageInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::HardwareSupportPackageInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support.managers.packages.hardware_support_package_info');
   $self->set_binding_field('key' => 'pkg', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'supported_releases', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
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


1;


## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::FilterSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::FilterSpec`` 
#     *class*  contains  *fields*  used to filter the results when listing OEM Hardware
#     Support Packages (HSPs), see 
#     :func:`Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages.list` ).

package Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::FilterSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support.managers.packages.filter_spec');
   $self->set_binding_field('key' => 'base_image_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_base_image_version ()
# Gets the value of 'base_image_version' property.
#
# @retval base_image_version - The current value of the field.
# vSphere release version the Hardware Support Package (HSP) must support to match the
#     filter. Only Hardware Support Packages (HSPs) compatible with the vSphere release
#     version specified in &apos;baseImageVersion&apos; will be returned. The
#     &apos;baseImageVersion&apos; parameter should be a full numeric base image version
#     string (e.g. &quot;7.1.0-2.3.436234&quot;). Future implementations may support version
#     specification by prefix (e.g. &quot;7.1&quot; to specify all updates and builds of
#     7.1) or other forms of specification (e.g. &quot;&gt;=7.0&quot;). Hardware Support
#     Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate
#     the remainder is wildcarded. Matching is on the specified substring only, so a bundle
#     supporting &quot;7.1.0-2&quot; would match a &apos;release&apos; parameter of
#     &quot;7.1.0-2.3.436234&quot; as well as &quot;7.1.0-2.1.4133564&quot; and
#     &quot;7.1.0-1.0.355667&quot; but not &quot;7.1.0-3.0.63445&quot; or any base image
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
# vSphere release version the Hardware Support Package (HSP) must support to match the
#     filter. Only Hardware Support Packages (HSPs) compatible with the vSphere release
#     version specified in &apos;baseImageVersion&apos; will be returned. The
#     &apos;baseImageVersion&apos; parameter should be a full numeric base image version
#     string (e.g. &quot;7.1.0-2.3.436234&quot;). Future implementations may support version
#     specification by prefix (e.g. &quot;7.1&quot; to specify all updates and builds of
#     7.1) or other forms of specification (e.g. &quot;&gt;=7.0&quot;). Hardware Support
#     Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate
#     the remainder is wildcarded. Matching is on the specified substring only, so a bundle
#     supporting &quot;7.1.0-2&quot; would match a &apos;release&apos; parameter of
#     &quot;7.1.0-2.3.436234&quot; as well as &quot;7.1.0-2.1.4133564&quot; and
#     &quot;7.1.0-1.0.355667&quot; but not &quot;7.1.0-3.0.63445&quot; or any base image
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
# Ends structures for the Com::Vmware::Esx::Settings::Hardware_support::Managers::Packages service
#########################################################################################
