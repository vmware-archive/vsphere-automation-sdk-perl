########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SystemName.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Backup::SystemName
# The  ``Com::Vmware::Appliance::Recovery::Backup::SystemName``   *interface*  provides 
#     *methods*  to enumerate system names of appliance backups. This  *interface*  was
#     added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Recovery::Backup::SystemName;

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
use Com::Vmware::Appliance::Recovery::Backup::SystemNameStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.recovery.backup.system_name';


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
# Returns a list of system names for which backup archives exist under  ``loc_spec`` . This 
# *method*  was added in vSphere API 6.7.
#
# @param loc_spec [REQUIRED] LocationSpec Structure
# . The value must be Com::Vmware::Appliance::Recovery::Backup::LocationSpec.
#
# @retval 
# list of system names
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.system_name).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``loc_spec``  doesn&apos;t refer to an existing location on the backup server.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub list {
   my ($self, %args) = @_;
   my $loc_spec = $args {loc_spec};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Backup::SystemName service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Backup::SystemName service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Backup::SystemName service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Backup::SystemName service
#########################################################################################
