########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Pending.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Lcm;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Update::Pending
# The  ``Com::Vmware::Vcenter::Lcm::Update::Pending``   *interface*  provides  *method* 
#     for listing pending minor or major updates of vCenter Server.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for pending update

package Com::Vmware::Vcenter::Lcm::Update::Pending;

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
use Com::Vmware::Vcenter::Lcm::Update::PendingStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.lcm.update.pending';


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
# Lists all available minor and major updates.
#
# @retval 
# Information about the pending patch/updates for the given vCenter server
# The return type will be Com::Vmware::Vcenter::Lcm::Update::Pending::ListResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is some unknown internal error. The accompanying error message will give more
#     details about the error.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method get ()
# Gets detailed update information.
#
# @param version [REQUIRED] A version identified the update
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.lcm.update.pending).
# . The value must be str.
#
# @retval 
# A detailed information about the particular vCenter patch/update
# The return type will be Com::Vmware::Vcenter::Lcm::Update::Pending::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no pending update assosiated with the  ``version``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is some unknown internal error. The accompanying error message will give more
#     details about the error.
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
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Update::Pending service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType
#
# Level of severity for applying a given patch or update.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType::CRITICAL #
#Vulnerabilities that can be exploited by an unauthenticated attacker from the Internet or
# those that break the guest/host Operating System isolation.
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType::IMPORTANT #
#Vulnerabilities that are not rated critical but whose exploitation results in the complete
# compromise of confidentiality and/or integrity of user data and/or processing resources
# through user assistance or by authenticated attackers.
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType::MODERATE #
#Vulnerabilities where the ability to exploit is mitigated to a significant degree by
# configuration or difficulty of exploitation, but in certain deployment scenarios could
# still lead to the compromise of confidentiality, integrity, or availability of user data
# and/or processing resources.
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType::LOW #
#All other issues that may or maynot have a security impact. Vulnerabilities where
# exploitation is believed to be extremely difficult, or where successful exploitation would
# have minimal impact.

package Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType;

use constant {
    CRITICAL =>  'CRITICAL',
    IMPORTANT =>  'IMPORTANT',
    MODERATE =>  'MODERATE',
    LOW =>  'LOW',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.update.pending.severity_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::Pending::SeverityType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Lcm::Update::Pending::Category
#
# The  ``Com::Vmware::Vcenter::Lcm::Update::Pending::Category``   *enumerated type* 
#     defines the type of payload this release has on top of previous release
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::Category::SECURITY #
#Fixes vulnerabilities, doesn&apos;t change functionality
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::Category::FIX #
#Fixes bugs/vulnerabilities, doesn&apos;t change functionality
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::Category::UPDATE #
#Changes product functionality
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::Category::UPGRADE #
#Introduces new features, significantly changes product functionality

package Com::Vmware::Vcenter::Lcm::Update::Pending::Category;

use constant {
    SECURITY =>  'SECURITY',
    FIX =>  'FIX',
    UPDATE =>  'UPDATE',
    UPGRADE =>  'UPGRADE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::Pending::Category enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.update.pending.category',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::Pending::Category');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType
#
# The  ``Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType``   *enumerated type* 
#     defines update type
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType::PATCH #
#Fixes bugs/vulnerabilities, doesn&apos;t change functionality
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType::UPDATE #
#Changes product functionality
#
# Constant Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType::UPGRADE #
#Introduces new features, significantly changes product functionality

package Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType;

use constant {
    PATCH =>  'PATCH',
    UPDATE =>  'UPDATE',
    UPGRADE =>  'UPGRADE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.update.pending.update_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::Pending::UpdateType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Update::Pending service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Update::Pending service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Update::Pending::Summary
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Update::Pending::Summary``   *class*  contains basic
#     information about the vCenter patch/update/upgrade

package Com::Vmware::Vcenter::Lcm::Update::Pending::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::Pending::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pending_update} = $args{'pending_update'};
   $self->{version} = $args{'version'};
   $self->{release_date} = $args{'release_date'};
   $self->{severity} = $args{'severity'};
   $self->{build} = $args{'build'};
   $self->{update_type} = $args{'update_type'};
   $self->{category} = $args{'category'};
   $self->{reboot_required} = $args{'reboot_required'};
   $self->{execute_URL} = $args{'execute_URL'};
   $self->{release_notes} = $args{'release_notes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::Pending::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.update.pending.summary');
   $self->set_binding_field('key' => 'pending_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'Pending::SeverityType'));
   $self->set_binding_field('key' => 'build', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'update_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'Pending::UpdateType'));
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'Pending::Category'));
   $self->set_binding_field('key' => 'reboot_required', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'execute_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'release_notes', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_pending_update ()
# Gets the value of 'pending_update' property.
#
# @retval pending_update - The current value of the field.
# Identifier of the given vSphere update
#
# ID#
sub get_pending_update {
   my ($self, %args) = @_;
   return $self->{'pending_update'}; 	
}

## @method set_pending_update ()
# Sets the given value for 'pending_update' property.
# 
# @param pending_update  - New value for the field.
# Identifier of the given vSphere update
#
sub set_pending_update {
   my ($self, %args) = @_;
   $self->{'pending_update'} = $args{'pending_update'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the vSphere update or patch
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
# Version of the vSphere update or patch
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_release_date ()
# Gets the value of 'release_date' property.
#
# @retval release_date - The current value of the field.
# Release date of the vSphere update or patch
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
# Release date of the vSphere update or patch
#
sub set_release_date {
   my ($self, %args) = @_;
   $self->{'release_date'} = $args{'release_date'}; 
   return;	
}

## @method get_severity ()
# Gets the value of 'severity' property.
#
# @retval severity - The current value of the field.
# Severity of the issues fixed in the vSphere update or patch
#
# SeverityType#
sub get_severity {
   my ($self, %args) = @_;
   return $self->{'severity'}; 	
}

## @method set_severity ()
# Sets the given value for 'severity' property.
# 
# @param severity  - New value for the field.
# Severity of the issues fixed in the vSphere update or patch
#
sub set_severity {
   my ($self, %args) = @_;
   $self->{'severity'} = $args{'severity'}; 
   return;	
}

## @method get_build ()
# Gets the value of 'build' property.
#
# @retval build - The current value of the field.
# Build number of the vCenter Release
#
# String#
sub get_build {
   my ($self, %args) = @_;
   return $self->{'build'}; 	
}

## @method set_build ()
# Sets the given value for 'build' property.
# 
# @param build  - New value for the field.
# Build number of the vCenter Release
#
sub set_build {
   my ($self, %args) = @_;
   $self->{'build'} = $args{'build'}; 
   return;	
}

## @method get_update_type ()
# Gets the value of 'update_type' property.
#
# @retval update_type - The current value of the field.
# Type of the Release based on the current vCenter version
#
# UpdateType#
sub get_update_type {
   my ($self, %args) = @_;
   return $self->{'update_type'}; 	
}

## @method set_update_type ()
# Sets the given value for 'update_type' property.
# 
# @param update_type  - New value for the field.
# Type of the Release based on the current vCenter version
#
sub set_update_type {
   my ($self, %args) = @_;
   $self->{'update_type'} = $args{'update_type'}; 
   return;	
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# Category of the release based on features bundled on top of previous release
#
# Category#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# Category of the release based on features bundled on top of previous release
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_reboot_required ()
# Gets the value of 'reboot_required' property.
#
# @retval reboot_required - The current value of the field.
# Flag to suggest a reboot after the release is applied
#
# boolean#
sub get_reboot_required {
   my ($self, %args) = @_;
   return $self->{'reboot_required'}; 	
}

## @method set_reboot_required ()
# Sets the given value for 'reboot_required' property.
# 
# @param reboot_required  - New value for the field.
# Flag to suggest a reboot after the release is applied
#
sub set_reboot_required {
   my ($self, %args) = @_;
   $self->{'reboot_required'} = $args{'reboot_required'}; 
   return;	
}

## @method get_execute_URL ()
# Gets the value of 'execute_URL' property.
#
# @retval execute_URL - The current value of the field.
# VAMI or ISO URL for update or upgrade execute phase redirection
#
# URI#
sub get_execute_URL {
   my ($self, %args) = @_;
   return $self->{'execute_URL'}; 	
}

## @method set_execute_URL ()
# Sets the given value for 'execute_URL' property.
# 
# @param execute_URL  - New value for the field.
# VAMI or ISO URL for update or upgrade execute phase redirection
#
sub set_execute_URL {
   my ($self, %args) = @_;
   $self->{'execute_URL'} = $args{'execute_URL'}; 
   return;	
}

## @method get_release_notes ()
# Gets the value of 'release_notes' property.
#
# @retval release_notes - The current value of the field.
# List of URI pointing to patch or update release notes
#
# List#
sub get_release_notes {
   my ($self, %args) = @_;
   return $self->{'release_notes'}; 	
}

## @method set_release_notes ()
# Sets the given value for 'release_notes' property.
# 
# @param release_notes  - New value for the field.
# List of URI pointing to patch or update release notes
#
sub set_release_notes {
   my ($self, %args) = @_;
   $self->{'release_notes'} = $args{'release_notes'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Update::Pending::ListResult
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Update::Pending::ListResult``   *class*  contains
#     information about the pending patch/updates for the given vCenter server.

package Com::Vmware::Vcenter::Lcm::Update::Pending::ListResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::Pending::ListResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{last_check_time} = $args{'last_check_time'};
   $self->{update_count} = $args{'update_count'};
   $self->{upgrade_count} = $args{'upgrade_count'};
   $self->{updates} = $args{'updates'};
   $self->{issues} = $args{'issues'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::Pending::ListResult');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.update.pending.list_result');
   $self->set_binding_field('key' => 'last_check_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'update_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'upgrade_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'updates', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'Pending::Summary')));
   $self->set_binding_field('key' => 'issues', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Notifications')));
   bless $self, $class;
   return $self;
}

## @method get_last_check_time ()
# Gets the value of 'last_check_time' property.
#
# @retval last_check_time - The current value of the field.
# Time when the software depo was last checked.
#
# DateTime#
sub get_last_check_time {
   my ($self, %args) = @_;
   return $self->{'last_check_time'}; 	
}

## @method set_last_check_time ()
# Sets the given value for 'last_check_time' property.
# 
# @param last_check_time  - New value for the field.
# Time when the software depo was last checked.
#
sub set_last_check_time {
   my ($self, %args) = @_;
   $self->{'last_check_time'} = $args{'last_check_time'}; 
   return;	
}

## @method get_update_count ()
# Gets the value of 'update_count' property.
#
# @retval update_count - The current value of the field.
# Number of pending updates
#
# Optional#
sub get_update_count {
   my ($self, %args) = @_;
   return $self->{'update_count'}; 	
}

## @method set_update_count ()
# Sets the given value for 'update_count' property.
# 
# @param update_count  - New value for the field.
# Number of pending updates
#
sub set_update_count {
   my ($self, %args) = @_;
   $self->{'update_count'} = $args{'update_count'}; 
   return;	
}

## @method get_upgrade_count ()
# Gets the value of 'upgrade_count' property.
#
# @retval upgrade_count - The current value of the field.
# Number of pending upgrades
#
# Optional#
sub get_upgrade_count {
   my ($self, %args) = @_;
   return $self->{'upgrade_count'}; 	
}

## @method set_upgrade_count ()
# Sets the given value for 'upgrade_count' property.
# 
# @param upgrade_count  - New value for the field.
# Number of pending upgrades
#
sub set_upgrade_count {
   my ($self, %args) = @_;
   $self->{'upgrade_count'} = $args{'upgrade_count'}; 
   return;	
}

## @method get_updates ()
# Gets the value of 'updates' property.
#
# @retval updates - The current value of the field.
# List of pending update details
#
# List#
sub get_updates {
   my ($self, %args) = @_;
   return $self->{'updates'}; 	
}

## @method set_updates ()
# Sets the given value for 'updates' property.
# 
# @param updates  - New value for the field.
# List of pending update details
#
sub set_updates {
   my ($self, %args) = @_;
   $self->{'updates'} = $args{'updates'}; 
   return;	
}

## @method get_issues ()
# Gets the value of 'issues' property.
#
# @retval issues - The current value of the field.
# Lists of issues encountered during pending updates retrieval.
#
# Optional#
sub get_issues {
   my ($self, %args) = @_;
   return $self->{'issues'}; 	
}

## @method set_issues ()
# Sets the given value for 'issues' property.
# 
# @param issues  - New value for the field.
# Lists of issues encountered during pending updates retrieval.
#
sub set_issues {
   my ($self, %args) = @_;
   $self->{'issues'} = $args{'issues'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Update::Pending::Info
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Update::Pending::Info``   *class*  contains detailed
#     information about the vCenter patch/update.

package Com::Vmware::Vcenter::Lcm::Update::Pending::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::Pending::Info structure
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
   $self->{pending_update} = $args{'pending_update'};
   $self->{version} = $args{'version'};
   $self->{release_date} = $args{'release_date'};
   $self->{severity} = $args{'severity'};
   $self->{build} = $args{'build'};
   $self->{update_type} = $args{'update_type'};
   $self->{category} = $args{'category'};
   $self->{reboot_required} = $args{'reboot_required'};
   $self->{execute_URL} = $args{'execute_URL'};
   $self->{release_notes} = $args{'release_notes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::Pending::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.update.pending.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'pending_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'Pending::SeverityType'));
   $self->set_binding_field('key' => 'build', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'update_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'Pending::UpdateType'));
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'Pending::Category'));
   $self->set_binding_field('key' => 'reboot_required', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'execute_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'release_notes', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the vSphere update
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
# Description of the vSphere update
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_pending_update ()
# Gets the value of 'pending_update' property.
#
# @retval pending_update - The current value of the field.
# Identifier of the given vSphere update
#
# ID#
sub get_pending_update {
   my ($self, %args) = @_;
   return $self->{'pending_update'}; 	
}

## @method set_pending_update ()
# Sets the given value for 'pending_update' property.
# 
# @param pending_update  - New value for the field.
# Identifier of the given vSphere update
#
sub set_pending_update {
   my ($self, %args) = @_;
   $self->{'pending_update'} = $args{'pending_update'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the vSphere update or patch
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
# Version of the vSphere update or patch
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_release_date ()
# Gets the value of 'release_date' property.
#
# @retval release_date - The current value of the field.
# Release date of the vSphere update or patch
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
# Release date of the vSphere update or patch
#
sub set_release_date {
   my ($self, %args) = @_;
   $self->{'release_date'} = $args{'release_date'}; 
   return;	
}

## @method get_severity ()
# Gets the value of 'severity' property.
#
# @retval severity - The current value of the field.
# Severity of the issues fixed in the vSphere update or patch
#
# SeverityType#
sub get_severity {
   my ($self, %args) = @_;
   return $self->{'severity'}; 	
}

## @method set_severity ()
# Sets the given value for 'severity' property.
# 
# @param severity  - New value for the field.
# Severity of the issues fixed in the vSphere update or patch
#
sub set_severity {
   my ($self, %args) = @_;
   $self->{'severity'} = $args{'severity'}; 
   return;	
}

## @method get_build ()
# Gets the value of 'build' property.
#
# @retval build - The current value of the field.
# Build number of the vCenter Release
#
# String#
sub get_build {
   my ($self, %args) = @_;
   return $self->{'build'}; 	
}

## @method set_build ()
# Sets the given value for 'build' property.
# 
# @param build  - New value for the field.
# Build number of the vCenter Release
#
sub set_build {
   my ($self, %args) = @_;
   $self->{'build'} = $args{'build'}; 
   return;	
}

## @method get_update_type ()
# Gets the value of 'update_type' property.
#
# @retval update_type - The current value of the field.
# Type of the Release based on the current vCenter version
#
# UpdateType#
sub get_update_type {
   my ($self, %args) = @_;
   return $self->{'update_type'}; 	
}

## @method set_update_type ()
# Sets the given value for 'update_type' property.
# 
# @param update_type  - New value for the field.
# Type of the Release based on the current vCenter version
#
sub set_update_type {
   my ($self, %args) = @_;
   $self->{'update_type'} = $args{'update_type'}; 
   return;	
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# Category of the release based on features bundled on top of previous release
#
# Category#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# Category of the release based on features bundled on top of previous release
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_reboot_required ()
# Gets the value of 'reboot_required' property.
#
# @retval reboot_required - The current value of the field.
# Flag to suggest a reboot after the release is applied
#
# boolean#
sub get_reboot_required {
   my ($self, %args) = @_;
   return $self->{'reboot_required'}; 	
}

## @method set_reboot_required ()
# Sets the given value for 'reboot_required' property.
# 
# @param reboot_required  - New value for the field.
# Flag to suggest a reboot after the release is applied
#
sub set_reboot_required {
   my ($self, %args) = @_;
   $self->{'reboot_required'} = $args{'reboot_required'}; 
   return;	
}

## @method get_execute_URL ()
# Gets the value of 'execute_URL' property.
#
# @retval execute_URL - The current value of the field.
# VAMI or ISO URL for update or upgrade execute phase redirection
#
# URI#
sub get_execute_URL {
   my ($self, %args) = @_;
   return $self->{'execute_URL'}; 	
}

## @method set_execute_URL ()
# Sets the given value for 'execute_URL' property.
# 
# @param execute_URL  - New value for the field.
# VAMI or ISO URL for update or upgrade execute phase redirection
#
sub set_execute_URL {
   my ($self, %args) = @_;
   $self->{'execute_URL'} = $args{'execute_URL'}; 
   return;	
}

## @method get_release_notes ()
# Gets the value of 'release_notes' property.
#
# @retval release_notes - The current value of the field.
# List of URI pointing to patch or update release notes
#
# List#
sub get_release_notes {
   my ($self, %args) = @_;
   return $self->{'release_notes'}; 	
}

## @method set_release_notes ()
# Sets the given value for 'release_notes' property.
# 
# @param release_notes  - New value for the field.
# List of URI pointing to patch or update release notes
#
sub set_release_notes {
   my ($self, %args) = @_;
   $self->{'release_notes'} = $args{'release_notes'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Update::Pending service
#########################################################################################
