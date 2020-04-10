########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CompatibilityReport.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Esx::Hcl;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport
# This  *interface*  provides  *methods*  to generate hardware compatibility report for
#     a given ESXi host against a specific ESXi release.
#

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport;

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
use Com::Vmware::Esx::Hcl::Hosts::CompatibilityReportStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.hcl.hosts.compatibility_report';

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

## @method create_task ()
# Generates hardware compatibility report for a specified ESXi host against specific ESXi
# release.<p>
# 
# The result of this operation can be queried by calling the cis/tasks/{task-id} where the
# task-id is the response of this operation.</p>
#
# @param host [REQUIRED] Contains the MoID identifying the ESXi host.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @param spec [OPTIONAL] Specifies the input parameters for generating compatibility report.
# If  *null*  host compatibility will be checked against the current release of the
#     ESXi.
# . The value must be Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Spec or None.
#
# @retval 
# ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Result``   *class*  that contains
#     the requested report and the identifier of the report.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no host with the given MoID can be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the provided host is not supported.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the vCenter this API is executed on is not part of the Customer Experience
#     Improvement Program (CEIP).
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if there is no compatibility data on the vCenter executing the operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
#
sub create_task {
   my ($self, %args) = @_;
   my $host = $args {host};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'create$task',
                         method_args => \%args);
}


## @method get ()
# Returns the last generated hardware compatibility report for the given host.
#
# @param host [REQUIRED] 
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @retval 

# The return type will be Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Result
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no report generated for the given host. This operation does not check if
#     the host id is valid or it exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the vCenter this API is executed on is not part of the Customer Experience
#     Improvement Program (CEIP).
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
#
sub get {
   my ($self, %args) = @_;
   my $host = $args {host};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport service
#########################################################################################

## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::BiosConstraint
#
#
# This  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::BiosConstraint``   *class* 
#     contains  *fields*  that describe the BIOS that is supported for the given server and
#     ESXi release.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::BiosConstraint;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::BiosConstraint structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{bios} = $args{'bios'};
   $self->{notes} = $args{'notes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::BiosConstraint');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.bios_constraint');
   $self->set_binding_field('key' => 'bios', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Firmware'));
   $self->set_binding_field('key' => 'notes', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_bios ()
# Gets the value of 'bios' property.
#
# @retval bios - The current value of the field.
# The BIOS information about the constraint.
#
# Firmware#
sub get_bios {
   my ($self, %args) = @_;
   return $self->{'bios'}; 	
}

## @method set_bios ()
# Sets the given value for 'bios' property.
# 
# @param bios  - New value for the field.
# The BIOS information about the constraint.
#
sub set_bios {
   my ($self, %args) = @_;
   $self->{'bios'} = $args{'bios'}; 
   return;	
}

## @method get_notes ()
# Gets the value of 'notes' property.
#
# @retval notes - The current value of the field.
# Any information that should be taken into account when reviewing the BIOS constraint.
#
# List#
sub get_notes {
   my ($self, %args) = @_;
   return $self->{'notes'}; 	
}

## @method set_notes ()
# Sets the given value for 'notes' property.
# 
# @param notes  - New value for the field.
# Any information that should be taken into account when reviewing the BIOS constraint.
#
sub set_notes {
   my ($self, %args) = @_;
   $self->{'notes'} = $args{'notes'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerCompatibility
#
#
# This  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerCompatibility``  
#     *class*  contains  *fields*  that provide the compatibility information for a server
#     model, cpu and BIOS.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerCompatibility;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerCompatibility structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{bios_constraints} = $args{'bios_constraints'};
   $self->{cpu_series} = $args{'cpu_series'};
   $self->{supported_releases} = $args{'supported_releases'};
   $self->{vcg_link} = $args{'vcg_link'};
   $self->{notes} = $args{'notes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerCompatibility');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.server_compatibility');
   $self->set_binding_field('key' => 'bios_constraints', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl::Hosts', 'type_name' => 'CompatibilityReport::BiosConstraint'))));
   $self->set_binding_field('key' => 'cpu_series', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'supported_releases', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'vcg_link', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'notes', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'))));
   bless $self, $class;
   return $self;
}

## @method get_bios_constraints ()
# Gets the value of 'bios_constraints' property.
#
# @retval bios_constraints - The current value of the field.
# Lists the BIOS constraints that the target ESXi release has for this server.
#
# Optional#
sub get_bios_constraints {
   my ($self, %args) = @_;
   return $self->{'bios_constraints'}; 	
}

## @method set_bios_constraints ()
# Sets the given value for 'bios_constraints' property.
# 
# @param bios_constraints  - New value for the field.
# Lists the BIOS constraints that the target ESXi release has for this server.
#
sub set_bios_constraints {
   my ($self, %args) = @_;
   $self->{'bios_constraints'} = $args{'bios_constraints'}; 
   return;	
}

## @method get_cpu_series ()
# Gets the value of 'cpu_series' property.
#
# @retval cpu_series - The current value of the field.
# The CPU series name.
#
# String#
sub get_cpu_series {
   my ($self, %args) = @_;
   return $self->{'cpu_series'}; 	
}

## @method set_cpu_series ()
# Sets the given value for 'cpu_series' property.
# 
# @param cpu_series  - New value for the field.
# The CPU series name.
#
sub set_cpu_series {
   my ($self, %args) = @_;
   $self->{'cpu_series'} = $args{'cpu_series'}; 
   return;	
}

## @method get_supported_releases ()
# Gets the value of 'supported_releases' property.
#
# @retval supported_releases - The current value of the field.
# Provides information about supported releases for this entry.
#
# Optional#
sub get_supported_releases {
   my ($self, %args) = @_;
   return $self->{'supported_releases'}; 	
}

## @method set_supported_releases ()
# Sets the given value for 'supported_releases' property.
# 
# @param supported_releases  - New value for the field.
# Provides information about supported releases for this entry.
#
sub set_supported_releases {
   my ($self, %args) = @_;
   $self->{'supported_releases'} = $args{'supported_releases'}; 
   return;	
}

## @method get_vcg_link ()
# Gets the value of 'vcg_link' property.
#
# @retval vcg_link - The current value of the field.
# Provides link to the VMware Compatibility Guide for further information on the
#     compatibility.
#
# URI#
sub get_vcg_link {
   my ($self, %args) = @_;
   return $self->{'vcg_link'}; 	
}

## @method set_vcg_link ()
# Sets the given value for 'vcg_link' property.
# 
# @param vcg_link  - New value for the field.
# Provides link to the VMware Compatibility Guide for further information on the
#     compatibility.
#
sub set_vcg_link {
   my ($self, %args) = @_;
   $self->{'vcg_link'} = $args{'vcg_link'}; 
   return;	
}

## @method get_notes ()
# Gets the value of 'notes' property.
#
# @retval notes - The current value of the field.
# Information that needs to be taken into account when considering this server hardware
#     compatibility.
#
# Optional#
sub get_notes {
   my ($self, %args) = @_;
   return $self->{'notes'}; 	
}

## @method set_notes ()
# Sets the given value for 'notes' property.
# 
# @param notes  - New value for the field.
# Information that needs to be taken into account when considering this server hardware
#     compatibility.
#
sub set_notes {
   my ($self, %args) = @_;
   $self->{'notes'} = $args{'notes'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerHclInfo
#
#
# This  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerHclInfo``   *class* 
#     contains  *fields*  that describe the server of a ESXi host and its compatibility
#     information.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerHclInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerHclInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{server} = $args{'server'};
   $self->{matches} = $args{'matches'};
   $self->{model_compatibility} = $args{'model_compatibility'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::ServerHclInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.server_hcl_info');
   $self->set_binding_field('key' => 'server', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Server'));
   $self->set_binding_field('key' => 'matches', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl::Hosts', 'type_name' => 'CompatibilityReport::ServerCompatibility')));
   $self->set_binding_field('key' => 'model_compatibility', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'CompatibilityStatus'));
   bless $self, $class;
   return $self;
}

## @method get_server ()
# Gets the value of 'server' property.
#
# @retval server - The current value of the field.
# Information about the server.
#
# Server#
sub get_server {
   my ($self, %args) = @_;
   return $self->{'server'}; 	
}

## @method set_server ()
# Sets the given value for 'server' property.
# 
# @param server  - New value for the field.
# Information about the server.
#
sub set_server {
   my ($self, %args) = @_;
   $self->{'server'} = $args{'server'}; 
   return;	
}

## @method get_matches ()
# Gets the value of 'matches' property.
#
# @retval matches - The current value of the field.
# Provides information about possible compatibility matches for the given server. <p>
# 
# There could be multiple matches returned as there are several possible matches in the
#     Compatibility data.</p>
#
# List#
sub get_matches {
   my ($self, %args) = @_;
   return $self->{'matches'}; 	
}

## @method set_matches ()
# Sets the given value for 'matches' property.
# 
# @param matches  - New value for the field.
# Provides information about possible compatibility matches for the given server. <p>
# 
# There could be multiple matches returned as there are several possible matches in the
#     Compatibility data.</p>
#
sub set_matches {
   my ($self, %args) = @_;
   $self->{'matches'} = $args{'matches'}; 
   return;	
}

## @method get_model_compatibility ()
# Gets the value of 'model_compatibility' property.
#
# @retval model_compatibility - The current value of the field.
# Shows if the server model is compatible with given target ESXi release.
#
# CompatibilityStatus#
sub get_model_compatibility {
   my ($self, %args) = @_;
   return $self->{'model_compatibility'}; 	
}

## @method set_model_compatibility ()
# Sets the given value for 'model_compatibility' property.
# 
# @param model_compatibility  - New value for the field.
# Shows if the server model is compatible with given target ESXi release.
#
sub set_model_compatibility {
   my ($self, %args) = @_;
   $self->{'model_compatibility'} = $args{'model_compatibility'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceConstraint
#
#
# This  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceConstraint``  
#     *class*  contains  *fields*  that describe pair of driver and firmware that are
#     supported for a given PCI device and ESXi release.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceConstraint;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceConstraint structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{driver} = $args{'driver'};
   $self->{firmware} = $args{'firmware'};
   $self->{notes} = $args{'notes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceConstraint');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.device_constraint');
   $self->set_binding_field('key' => 'driver', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Driver'));
   $self->set_binding_field('key' => 'firmware', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Firmware')));
   $self->set_binding_field('key' => 'notes', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_driver ()
# Gets the value of 'driver' property.
#
# @retval driver - The current value of the field.
# The driver information about the constraint.
#
# Driver#
sub get_driver {
   my ($self, %args) = @_;
   return $self->{'driver'}; 	
}

## @method set_driver ()
# Sets the given value for 'driver' property.
# 
# @param driver  - New value for the field.
# The driver information about the constraint.
#
sub set_driver {
   my ($self, %args) = @_;
   $self->{'driver'} = $args{'driver'}; 
   return;	
}

## @method get_firmware ()
# Gets the value of 'firmware' property.
#
# @retval firmware - The current value of the field.
# The firmware information about the constraint.
#
# Optional#
sub get_firmware {
   my ($self, %args) = @_;
   return $self->{'firmware'}; 	
}

## @method set_firmware ()
# Sets the given value for 'firmware' property.
# 
# @param firmware  - New value for the field.
# The firmware information about the constraint.
#
sub set_firmware {
   my ($self, %args) = @_;
   $self->{'firmware'} = $args{'firmware'}; 
   return;	
}

## @method get_notes ()
# Gets the value of 'notes' property.
#
# @retval notes - The current value of the field.
# Any information that should be taken into account when reviewing the device
#     constraint.
#
# List#
sub get_notes {
   my ($self, %args) = @_;
   return $self->{'notes'}; 	
}

## @method set_notes ()
# Sets the given value for 'notes' property.
# 
# @param notes  - New value for the field.
# Any information that should be taken into account when reviewing the device
#     constraint.
#
sub set_notes {
   my ($self, %args) = @_;
   $self->{'notes'} = $args{'notes'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceHclInfo
#
#
# This  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceHclInfo``   *class* 
#     contains  *fields*  that describe a PCI device of a given ESXi host and its
#     compatibility information. <p>
# 
# If there are multiple PCI devices of the same type on the host each one will be listed
#     in separate instance of this class.</p>

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceHclInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceHclInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{compatibility} = $args{'compatibility'};
   $self->{device} = $args{'device'};
   $self->{device_constraints} = $args{'device_constraints'};
   $self->{supported_releases} = $args{'supported_releases'};
   $self->{vcg_link} = $args{'vcg_link'};
   $self->{notes} = $args{'notes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::DeviceHclInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.device_hcl_info');
   $self->set_binding_field('key' => 'compatibility', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'CompatibilityStatus'));
   $self->set_binding_field('key' => 'device', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'PCIDevice'));
   $self->set_binding_field('key' => 'device_constraints', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl::Hosts', 'type_name' => 'CompatibilityReport::DeviceConstraint'))));
   $self->set_binding_field('key' => 'supported_releases', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'vcg_link', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'notes', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'))));
   bless $self, $class;
   return $self;
}

## @method get_compatibility ()
# Gets the value of 'compatibility' property.
#
# @retval compatibility - The current value of the field.
# Indicates compatibility status of the PCI device.
#
# CompatibilityStatus#
sub get_compatibility {
   my ($self, %args) = @_;
   return $self->{'compatibility'}; 	
}

## @method set_compatibility ()
# Sets the given value for 'compatibility' property.
# 
# @param compatibility  - New value for the field.
# Indicates compatibility status of the PCI device.
#
sub set_compatibility {
   my ($self, %args) = @_;
   $self->{'compatibility'} = $args{'compatibility'}; 
   return;	
}

## @method get_device ()
# Gets the value of 'device' property.
#
# @retval device - The current value of the field.
# Information about the PCI device.
#
# PCIDevice#
sub get_device {
   my ($self, %args) = @_;
   return $self->{'device'}; 	
}

## @method set_device ()
# Sets the given value for 'device' property.
# 
# @param device  - New value for the field.
# Information about the PCI device.
#
sub set_device {
   my ($self, %args) = @_;
   $self->{'device'} = $args{'device'}; 
   return;	
}

## @method get_device_constraints ()
# Gets the value of 'device_constraints' property.
#
# @retval device_constraints - The current value of the field.
# Lists the constraints the target ESXi release has for this PCI device
#
# Optional#
sub get_device_constraints {
   my ($self, %args) = @_;
   return $self->{'device_constraints'}; 	
}

## @method set_device_constraints ()
# Sets the given value for 'device_constraints' property.
# 
# @param device_constraints  - New value for the field.
# Lists the constraints the target ESXi release has for this PCI device
#
sub set_device_constraints {
   my ($self, %args) = @_;
   $self->{'device_constraints'} = $args{'device_constraints'}; 
   return;	
}

## @method get_supported_releases ()
# Gets the value of 'supported_releases' property.
#
# @retval supported_releases - The current value of the field.
# Provides information about supported releases for this device.
#
# Optional#
sub get_supported_releases {
   my ($self, %args) = @_;
   return $self->{'supported_releases'}; 	
}

## @method set_supported_releases ()
# Sets the given value for 'supported_releases' property.
# 
# @param supported_releases  - New value for the field.
# Provides information about supported releases for this device.
#
sub set_supported_releases {
   my ($self, %args) = @_;
   $self->{'supported_releases'} = $args{'supported_releases'}; 
   return;	
}

## @method get_vcg_link ()
# Gets the value of 'vcg_link' property.
#
# @retval vcg_link - The current value of the field.
# Provides link to the VMware Compatibility Guide for further information on the
#     compatibility.
#
# Optional#
sub get_vcg_link {
   my ($self, %args) = @_;
   return $self->{'vcg_link'}; 	
}

## @method set_vcg_link ()
# Sets the given value for 'vcg_link' property.
# 
# @param vcg_link  - New value for the field.
# Provides link to the VMware Compatibility Guide for further information on the
#     compatibility.
#
sub set_vcg_link {
   my ($self, %args) = @_;
   $self->{'vcg_link'} = $args{'vcg_link'}; 
   return;	
}

## @method get_notes ()
# Gets the value of 'notes' property.
#
# @retval notes - The current value of the field.
# Information that needs to be taken into account when considering this device hcl.
#
# Optional#
sub get_notes {
   my ($self, %args) = @_;
   return $self->{'notes'}; 	
}

## @method set_notes ()
# Sets the given value for 'notes' property.
# 
# @param notes  - New value for the field.
# Information that needs to be taken into account when considering this device hcl.
#
sub set_notes {
   my ($self, %args) = @_;
   $self->{'notes'} = $args{'notes'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::HclReport
#
#
# This  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::HclReport``  represents the
#     hardware compatibility report generated for a specific host and target ESXi release.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::HclReport;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::HclReport structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{host} = $args{'host'};
   $self->{target_release} = $args{'target_release'};
   $self->{server_hcl} = $args{'server_hcl'};
   $self->{devices_hcl} = $args{'devices_hcl'};
   $self->{generated_at} = $args{'generated_at'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::HclReport');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.hcl_report');
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'target_release', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'server_hcl', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl::Hosts', 'type_name' => 'CompatibilityReport::ServerHclInfo'));
   $self->set_binding_field('key' => 'devices_hcl', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl::Hosts', 'type_name' => 'CompatibilityReport::DeviceHclInfo'))));
   $self->set_binding_field('key' => 'generated_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# FQDN identifying the ESXi host that the report refers to.
#
# URI#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# FQDN identifying the ESXi host that the report refers to.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_target_release ()
# Gets the value of 'target_release' property.
#
# @retval target_release - The current value of the field.
# Indicates for which ESXi release the report is generated.
#
# String#
sub get_target_release {
   my ($self, %args) = @_;
   return $self->{'target_release'}; 	
}

## @method set_target_release ()
# Sets the given value for 'target_release' property.
# 
# @param target_release  - New value for the field.
# Indicates for which ESXi release the report is generated.
#
sub set_target_release {
   my ($self, %args) = @_;
   $self->{'target_release'} = $args{'target_release'}; 
   return;	
}

## @method get_server_hcl ()
# Gets the value of 'server_hcl' property.
#
# @retval server_hcl - The current value of the field.
# Lists compatibility information for the ESXi&apos;s server part.
#
# ServerHclInfo#
sub get_server_hcl {
   my ($self, %args) = @_;
   return $self->{'server_hcl'}; 	
}

## @method set_server_hcl ()
# Sets the given value for 'server_hcl' property.
# 
# @param server_hcl  - New value for the field.
# Lists compatibility information for the ESXi&apos;s server part.
#
sub set_server_hcl {
   my ($self, %args) = @_;
   $self->{'server_hcl'} = $args{'server_hcl'}; 
   return;	
}

## @method get_devices_hcl ()
# Gets the value of 'devices_hcl' property.
#
# @retval devices_hcl - The current value of the field.
# Lists compatibility information for discoverable PCI devices of the host.
#
# Optional#
sub get_devices_hcl {
   my ($self, %args) = @_;
   return $self->{'devices_hcl'}; 	
}

## @method set_devices_hcl ()
# Sets the given value for 'devices_hcl' property.
# 
# @param devices_hcl  - New value for the field.
# Lists compatibility information for discoverable PCI devices of the host.
#
sub set_devices_hcl {
   my ($self, %args) = @_;
   $self->{'devices_hcl'} = $args{'devices_hcl'}; 
   return;	
}

## @method get_generated_at ()
# Gets the value of 'generated_at' property.
#
# @retval generated_at - The current value of the field.
# Specifies the time the report was generated.
#
# DateTime#
sub get_generated_at {
   my ($self, %args) = @_;
   return $self->{'generated_at'}; 	
}

## @method set_generated_at ()
# Sets the given value for 'generated_at' property.
# 
# @param generated_at  - New value for the field.
# Specifies the time the report was generated.
#
sub set_generated_at {
   my ($self, %args) = @_;
   $self->{'generated_at'} = $args{'generated_at'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications returned by the operation.
#
# Notifications#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications returned by the operation.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Result
#
#
# The  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Result``   *class*  contains
#     the result of hardware compatibility report creation operation.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Result;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Result structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{report} = $args{'report'};
   $self->{identifier} = $args{'identifier'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Result');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.result');
   $self->set_binding_field('key' => 'report', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl::Hosts', 'type_name' => 'CompatibilityReport::HclReport'));
   $self->set_binding_field('key' => 'identifier', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_report ()
# Gets the value of 'report' property.
#
# @retval report - The current value of the field.
# The hardware compatibility report.
#
# HclReport#
sub get_report {
   my ($self, %args) = @_;
   return $self->{'report'}; 	
}

## @method set_report ()
# Sets the given value for 'report' property.
# 
# @param report  - New value for the field.
# The hardware compatibility report.
#
sub set_report {
   my ($self, %args) = @_;
   $self->{'report'} = $args{'report'}; 
   return;	
}

## @method get_identifier ()
# Gets the value of 'identifier' property.
#
# @retval identifier - The current value of the field.
# The identifier of the compatibility report. <p>
# 
# :func:`Com::Vmware::Esx::Hcl::Reports.get`  provides location where a file based
#     report based on the  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::HclReport`` 
#     can be downloaded using this identifier.</p>
#
# Optional#
sub get_identifier {
   my ($self, %args) = @_;
   return $self->{'identifier'}; 	
}

## @method set_identifier ()
# Sets the given value for 'identifier' property.
# 
# @param identifier  - New value for the field.
# The identifier of the compatibility report. <p>
# 
# :func:`Com::Vmware::Esx::Hcl::Reports.get`  provides location where a file based
#     report based on the  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::HclReport`` 
#     can be downloaded using this identifier.</p>
#
sub set_identifier {
   my ($self, %args) = @_;
   $self->{'identifier'} = $args{'identifier'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Spec
#
#
# The  ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Spec``   *class*  contains 
#     *fields*  to describe the input configuration for an ESXi&apos;s compatibility report
#     generation.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Spec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{release} = $args{'release'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport::Spec');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_report.spec');
   $self->set_binding_field('key' => 'release', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_release ()
# Gets the value of 'release' property.
#
# @retval release - The current value of the field.
# A target ESXi release which will be used to generate a compatibility report. Releases
#     that can be used to generate report can be found using 
#     :func:`Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases.list` 
#
# String#
sub get_release {
   my ($self, %args) = @_;
   return $self->{'release'}; 	
}

## @method set_release ()
# Sets the given value for 'release' property.
# 
# @param release  - New value for the field.
# A target ESXi release which will be used to generate a compatibility report. Releases
#     that can be used to generate report can be found using 
#     :func:`Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases.list` 
#
sub set_release {
   my ($self, %args) = @_;
   $self->{'release'} = $args{'release'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReport service
#########################################################################################
