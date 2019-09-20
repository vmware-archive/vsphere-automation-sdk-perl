########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Log.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Log
# The service that provides logs associated with a task of a given task ID.
#

package Com::Vmware::Vcenter::Lcm::Log;

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
use Com::Vmware::Vcenter::Lcm::LogStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

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
# Retrieves the zipped files that contains operation log, serialized task flow, record of
# all configuration, and a current status of the operation.
#
# @param task_id [REQUIRED] The  class Vmodl::Lang::ID  of the operation. must exist in the server. If for any
#     reason the server reboots during an operation, all  class Vmodl::Lang::ID s previously
#     stored is lost.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.task).
# . The value must be str.
#
# @retval 
# A zipped file that contains the files mentioned above.
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the given ID does not exist in the server. There might be a cause of task ID does
#     not exist including, error in taskID, or log files been purged by system or manually.
#

sub get {
   my ($self, %args) = @_;
   my $task_id = $args {task_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Log service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Log service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Log service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Log service
#########################################################################################
