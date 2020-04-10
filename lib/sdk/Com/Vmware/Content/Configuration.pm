########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Configuration.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Configuration
# The  ``Com::Vmware::Content::Configuration``   *interface*  provides  *methods*  to
#     configure the global settings of the Content Library Service. <p>
# 
# The configuration settings are used by the Content Library Service to control the
#     behavior of various operations.</p>
#

package Com::Vmware::Content::Configuration;

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
use Com::Vmware::Content::ConfigurationStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.content.configuration';


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

## @method update ()
# Updates the configuration. The update is incremental. Any  *field*  in the  class
# Com::Vmware::Content::ConfigurationModel   *class*  that is  *null*  will not be modified.
# Note that this update  *method*  doesn&apos;t guarantee an atomic change of all the
# properties. In the case of a system crash or failure, some of the properties could be left
# unchanged while others may be updated.
#
# Note:
# Privileges required for this operation are ContentLibrary.UpdateConfiguration.
#
# @param model [REQUIRED] The  class Com::Vmware::Content::ConfigurationModel  specifying the settings to
#     update.
# . The value must be Com::Vmware::Content::ConfigurationModel.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if one of the configuration properties is not within the proper range.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``ContentLibrary.UpdateConfiguration`` . </li>
# </ul>
#
sub update {
   my ($self, %args) = @_;
   my $model = $args {model};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method get ()
# Retrieves the current configuration values.
#
# Note:
# Privileges required for this operation are ContentLibrary.GetConfiguration.
#
# @retval 
# The  class Com::Vmware::Content::ConfigurationModel  instance representing the
#     configuration of the Content Library Service.
# The return type will be Com::Vmware::Content::ConfigurationModel
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``ContentLibrary.GetConfiguration`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Configuration service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Configuration service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Configuration service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Content::Configuration service
#########################################################################################
