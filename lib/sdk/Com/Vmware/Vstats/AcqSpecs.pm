########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file AcqSpecs.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::AcqSpecs
# The  ``Com::Vmware::Vstats::AcqSpecs``   *interface*  provides  *methods*  to perform
#     acquisition specification related operations. An acquisition specification defines the
#     statistical data that should be collected at desired sampling rates from the
#     underlying providers. It designates the resources and their counters which should be
#     sampled, and a desired sampling rate. <b>Warning:</b> This  *interface*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for acquisition specifications. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vstats::AcqSpecs;

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
use Com::Vmware::Vstats::AcqSpecsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.acq_specs';


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

## @method create ()
# Create a new acquisition specification record. <b>Warning:</b> This  *method*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param acq_spec [REQUIRED] Specification for the acquisition of stats data.
# . The value must be Com::Vmware::Vstats::AcqSpecs::CreateSpec.
#
# @retval 
# Identifier of the newly created acquisition specification.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.AcqSpec).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``acq_spec``  contain any errors.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub create {
   my ($self, %args) = @_;
   my $acq_spec = $args {acq_spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Delete an acquisition specification. <b>Warning:</b> This  *method*  is available as
# Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param id [REQUIRED] Acquisition specification ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.AcqSpec).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``id``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if acquisition specification could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub delete {
   my ($self, %args) = @_;
   my $id = $args {id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method list ()
# Returns information about all acquisition specifications. <b>Warning:</b> This  *method* 
# is available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param filter [OPTIONAL] Criteria for selecting records to return.
# When  *set*  filtering will be applied to the result.
# . The value must be Com::Vmware::Vstats::AcqSpecs::FilterSpec or None.
#
# @retval 
# List of acquisition specification records.
# The return type will be Com::Vmware::Vstats::AcqSpecs::ListResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get ()
# Returns information about a specific acquisition specification. <b>Warning:</b> This 
# *method*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# @param id [REQUIRED] Acquisition specification ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.AcqSpec).
# . The value must be str.
#
# @retval 
# Information about the desired acquisition specification.
# The return type will be Com::Vmware::Vstats::AcqSpecs::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``id``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# acquisition specification could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub get {
   my ($self, %args) = @_;
   my $id = $args {id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method update ()
# Update an existing acquisition specification. <b>Warning:</b> This  *method*  is available
# as Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param id [REQUIRED] Acquisition specification ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.AcqSpec).
# . The value must be str.
#
# @param acq_spec [REQUIRED] Updated acquisition specification.
# . The value must be Com::Vmware::Vstats::AcqSpecs::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# acquisition specification could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub update {
   my ($self, %args) = @_;
   my $id = $args {id};
   my $acq_spec = $args {acq_spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::AcqSpecs service
#########################################################################################

## @class Com::Vmware::Vstats::AcqSpecs::Status
#
# Describes the status of an Acquisition Specification. <b>Warning:</b> This 
#     *enumeration*  is available as Technology Preview. These are early access APIs
#     provided to test, automate and provide feedback on the feature. Since this can change
#     based on feedback, VMware does not guarantee backwards compatibility and recommends
#     against using them in production environments. Some Technology Preview APIs might only
#     be applicable to specific environments.
#
#
#
# Constant Com::Vmware::Vstats::AcqSpecs::Status::ENABLED #
#The acquisition specification is enabled when the stats data collection is going on.
# <b>Warning:</b> This  *constant*  is available as Technology Preview. These are early
# access APIs provided to test, automate and provide feedback on the feature. Since this can
# change based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# Constant Com::Vmware::Vstats::AcqSpecs::Status::DISABLED #
#The acquisition specification is disabled when the stats data collection is paused. This
# can happen when the counters are enabled or disabled dynamically on providers.
# <b>Warning:</b> This  *constant*  is available as Technology Preview. These are early
# access APIs provided to test, automate and provide feedback on the feature. Since this can
# change based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# Constant Com::Vmware::Vstats::AcqSpecs::Status::EXPIRED #
#The acquisition specification is expired when the expiration time is exceeded. There is no
# data collection in that case. <b>Warning:</b> This  *constant*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::AcqSpecs::Status;

use constant {
    ENABLED =>  'ENABLED',
    DISABLED =>  'DISABLED',
    EXPIRED =>  'EXPIRED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::AcqSpecs::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vstats.acq_specs.status',
                           'binding_class' => 'Com::Vmware::Vstats::AcqSpecs::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::AcqSpecs service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::AcqSpecs service
#########################################################################################

## @class Com::Vmware::Vstats::AcqSpecs::CounterSpec
#
#
# The  ``Com::Vmware::Vstats::AcqSpecs::CounterSpec``   *class*  designates a counter or
#     counter set in an acquisition specification. <b>Warning:</b> This  *class*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Vstats::AcqSpecs::CounterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::AcqSpecs::CounterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cid_mid} = $args{'cid_mid'};
   $self->{set_id} = $args{'set_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::AcqSpecs::CounterSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.acq_specs.counter_spec');
   $self->set_binding_field('key' => 'cid_mid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'CidMid')));
   $self->set_binding_field('key' => 'set_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_cid_mid ()
# Gets the value of 'cid_mid' property.
#
# @retval cid_mid - The current value of the field.
# Counter and optional meatadata identifier. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_cid_mid {
   my ($self, %args) = @_;
   return $self->{'cid_mid'}; 	
}

## @method set_cid_mid ()
# Sets the given value for 'cid_mid' property.
# 
# @param cid_mid  - New value for the field.
# Counter and optional meatadata identifier. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_cid_mid {
   my ($self, %args) = @_;
   $self->{'cid_mid'} = $args{'cid_mid'}; 
   return;	
}

## @method get_set_id ()
# Gets the value of 'set_id' property.
#
# @retval set_id - The current value of the field.
# Counter set identifier. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_set_id {
   my ($self, %args) = @_;
   return $self->{'set_id'}; 	
}

## @method set_set_id ()
# Sets the given value for 'set_id' property.
# 
# @param set_id  - New value for the field.
# Counter set identifier. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_set_id {
   my ($self, %args) = @_;
   $self->{'set_id'} = $args{'set_id'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::AcqSpecs::CreateSpec
#
#
# The  ``Com::Vmware::Vstats::AcqSpecs::CreateSpec``   *class*  contains information for
#     a new data acquisition specification. <b>Warning:</b> This  *class*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::AcqSpecs::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::AcqSpecs::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{counters} = $args{'counters'};
   $self->{resources} = $args{'resources'};
   $self->{interval} = $args{'interval'};
   $self->{expiration} = $args{'expiration'};
   $self->{memo_} = $args{'memo_'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::AcqSpecs::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.acq_specs.create_spec');
   $self->set_binding_field('key' => 'counters', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'AcqSpecs::CounterSpec'));
   $self->set_binding_field('key' => 'resources', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'RsrcId')));
   $self->set_binding_field('key' => 'interval', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memo_', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_counters ()
# Gets the value of 'counters' property.
#
# @retval counters - The current value of the field.
# Designates the counter(s) to be sampled. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# CounterSpec#
sub get_counters {
   my ($self, %args) = @_;
   return $self->{'counters'}; 	
}

## @method set_counters ()
# Sets the given value for 'counters' property.
# 
# @param counters  - New value for the field.
# Designates the counter(s) to be sampled. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_counters {
   my ($self, %args) = @_;
   $self->{'counters'} = $args{'counters'}; 
   return;	
}

## @method get_resources ()
# Gets the value of 'resources' property.
#
# @retval resources - The current value of the field.
# A set of resource identifiers representing a single resource to be monitored.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# List#
sub get_resources {
   my ($self, %args) = @_;
   return $self->{'resources'}; 	
}

## @method set_resources ()
# Sets the given value for 'resources' property.
# 
# @param resources  - New value for the field.
# A set of resource identifiers representing a single resource to be monitored.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_resources {
   my ($self, %args) = @_;
   $self->{'resources'} = $args{'resources'}; 
   return;	
}

## @method get_interval ()
# Gets the value of 'interval' property.
#
# @retval interval - The current value of the field.
# Desired sampling rate in seconds. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_interval {
   my ($self, %args) = @_;
   return $self->{'interval'}; 	
}

## @method set_interval ()
# Sets the given value for 'interval' property.
# 
# @param interval  - New value for the field.
# Desired sampling rate in seconds. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_interval {
   my ($self, %args) = @_;
   $self->{'interval'} = $args{'interval'}; 
   return;	
}

## @method get_expiration ()
# Gets the value of 'expiration' property.
#
# @retval expiration - The current value of the field.
# Expiration time for this acquisition specification in Unix UTC number of seconds
#     (since epoch). <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_expiration {
   my ($self, %args) = @_;
   return $self->{'expiration'}; 	
}

## @method set_expiration ()
# Sets the given value for 'expiration' property.
# 
# @param expiration  - New value for the field.
# Expiration time for this acquisition specification in Unix UTC number of seconds
#     (since epoch). <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_expiration {
   my ($self, %args) = @_;
   $self->{'expiration'} = $args{'expiration'}; 
   return;	
}

## @method get_memo_ ()
# Gets the value of 'memo_' property.
#
# @retval memo_ - The current value of the field.
# Consumer provided text about this acquisition specification. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_memo_ {
   my ($self, %args) = @_;
   return $self->{'memo_'}; 	
}

## @method set_memo_ ()
# Sets the given value for 'memo_' property.
# 
# @param memo_  - New value for the field.
# Consumer provided text about this acquisition specification. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_memo_ {
   my ($self, %args) = @_;
   $self->{'memo_'} = $args{'memo_'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::AcqSpecs::Info
#
#
# The  ``Com::Vmware::Vstats::AcqSpecs::Info``   *class*  is the information about an
#     acquisition specification. It specifies the statistical data that should be collected
#     at desired sampling rates. It designates the resources and their counters which should
#     be sampled, and a desired sampling rate. <b>Warning:</b> This  *class*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::AcqSpecs::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::AcqSpecs::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{counters} = $args{'counters'};
   $self->{resources} = $args{'resources'};
   $self->{interval} = $args{'interval'};
   $self->{expiration} = $args{'expiration'};
   $self->{memo_} = $args{'memo_'};
   $self->{status} = $args{'status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::AcqSpecs::Info');
   $self->set_binding_name('name' => 'com.vmware.vstats.acq_specs.info');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'counters', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'AcqSpecs::CounterSpec'));
   $self->set_binding_field('key' => 'resources', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'RsrcId')));
   $self->set_binding_field('key' => 'interval', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memo_', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'AcqSpecs::Status'));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Acquisition specification identifier. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Acquisition specification identifier. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_counters ()
# Gets the value of 'counters' property.
#
# @retval counters - The current value of the field.
# Designates the counter(s) to be sampled. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# CounterSpec#
sub get_counters {
   my ($self, %args) = @_;
   return $self->{'counters'}; 	
}

## @method set_counters ()
# Sets the given value for 'counters' property.
# 
# @param counters  - New value for the field.
# Designates the counter(s) to be sampled. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_counters {
   my ($self, %args) = @_;
   $self->{'counters'} = $args{'counters'}; 
   return;	
}

## @method get_resources ()
# Gets the value of 'resources' property.
#
# @retval resources - The current value of the field.
# A set of resource identifiers representing a single resource to be monitored.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# List#
sub get_resources {
   my ($self, %args) = @_;
   return $self->{'resources'}; 	
}

## @method set_resources ()
# Sets the given value for 'resources' property.
# 
# @param resources  - New value for the field.
# A set of resource identifiers representing a single resource to be monitored.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_resources {
   my ($self, %args) = @_;
   $self->{'resources'} = $args{'resources'}; 
   return;	
}

## @method get_interval ()
# Gets the value of 'interval' property.
#
# @retval interval - The current value of the field.
# Desired sampling rate in seconds. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_interval {
   my ($self, %args) = @_;
   return $self->{'interval'}; 	
}

## @method set_interval ()
# Sets the given value for 'interval' property.
# 
# @param interval  - New value for the field.
# Desired sampling rate in seconds. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_interval {
   my ($self, %args) = @_;
   $self->{'interval'} = $args{'interval'}; 
   return;	
}

## @method get_expiration ()
# Gets the value of 'expiration' property.
#
# @retval expiration - The current value of the field.
# Expiration time for this acquisition specification represented as Unix UTC number of
#     seconds (since epoch). <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_expiration {
   my ($self, %args) = @_;
   return $self->{'expiration'}; 	
}

## @method set_expiration ()
# Sets the given value for 'expiration' property.
# 
# @param expiration  - New value for the field.
# Expiration time for this acquisition specification represented as Unix UTC number of
#     seconds (since epoch). <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_expiration {
   my ($self, %args) = @_;
   $self->{'expiration'} = $args{'expiration'}; 
   return;	
}

## @method get_memo_ ()
# Gets the value of 'memo_' property.
#
# @retval memo_ - The current value of the field.
# Consumer provided text about this Acquisition Specification. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# String#
sub get_memo_ {
   my ($self, %args) = @_;
   return $self->{'memo_'}; 	
}

## @method set_memo_ ()
# Sets the given value for 'memo_' property.
# 
# @param memo_  - New value for the field.
# Consumer provided text about this Acquisition Specification. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_memo_ {
   my ($self, %args) = @_;
   $self->{'memo_'} = $args{'memo_'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Acquisition Specification status. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Acquisition Specification status. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::AcqSpecs::ListResult
#
#
# The  ``Com::Vmware::Vstats::AcqSpecs::ListResult``   *class*  contains  *fields*  used
#     to return the acquisition specifications. <b>Warning:</b> This  *class*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::AcqSpecs::ListResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::AcqSpecs::ListResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{acq_specs} = $args{'acq_specs'};
   $self->{next} = $args{'next'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::AcqSpecs::ListResult');
   $self->set_binding_name('name' => 'com.vmware.vstats.acq_specs.list_result');
   $self->set_binding_field('key' => 'acq_specs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'AcqSpecs::Info')));
   $self->set_binding_field('key' => 'next', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_acq_specs ()
# Gets the value of 'acq_specs' property.
#
# @retval acq_specs - The current value of the field.
# List of acquisition specifications received. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# List#
sub get_acq_specs {
   my ($self, %args) = @_;
   return $self->{'acq_specs'}; 	
}

## @method set_acq_specs ()
# Sets the given value for 'acq_specs' property.
# 
# @param acq_specs  - New value for the field.
# List of acquisition specifications received. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_acq_specs {
   my ($self, %args) = @_;
   $self->{'acq_specs'} = $args{'acq_specs'}; 
   return;	
}

## @method get_next ()
# Gets the value of 'next' property.
#
# @retval next - The current value of the field.
# The  ``next``   *field*  is a token used to retrieve paged data for larger result
#     sets. This is opaque token generated by the server. It is to be sent in the 
#     :attr:`Com::Vmware::Vstats::AcqSpecs::FilterSpec.page`   *field*  to issue a
#     subsequent call to the list  *method*  for retrieving results that did not fit the
#     current page. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_next {
   my ($self, %args) = @_;
   return $self->{'next'}; 	
}

## @method set_next ()
# Sets the given value for 'next' property.
# 
# @param next  - New value for the field.
# The  ``next``   *field*  is a token used to retrieve paged data for larger result
#     sets. This is opaque token generated by the server. It is to be sent in the 
#     :attr:`Com::Vmware::Vstats::AcqSpecs::FilterSpec.page`   *field*  to issue a
#     subsequent call to the list  *method*  for retrieving results that did not fit the
#     current page. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_next {
   my ($self, %args) = @_;
   $self->{'next'} = $args{'next'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::AcqSpecs::FilterSpec
#
#
# The  ``Com::Vmware::Vstats::AcqSpecs::FilterSpec``   *class*  contains  *fields*  used
#     to filter the results when listing acquisition specifications. <b>Warning:</b> This 
#     *class*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.

package Com::Vmware::Vstats::AcqSpecs::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::AcqSpecs::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{page} = $args{'page'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::AcqSpecs::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.acq_specs.filter_spec');
   $self->set_binding_field('key' => 'page', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_page ()
# Gets the value of 'page' property.
#
# @retval page - The current value of the field.
# Used to retrieve paged data for larger result sets. The value of this token is
#     generated by server and returned as  ``next``   *field*  in the result of  ``list``  
#     *methods* . <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_page {
   my ($self, %args) = @_;
   return $self->{'page'}; 	
}

## @method set_page ()
# Sets the given value for 'page' property.
# 
# @param page  - New value for the field.
# Used to retrieve paged data for larger result sets. The value of this token is
#     generated by server and returned as  ``next``   *field*  in the result of  ``list``  
#     *methods* . <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_page {
   my ($self, %args) = @_;
   $self->{'page'} = $args{'page'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::AcqSpecs::UpdateSpec
#
#
# The  ``Com::Vmware::Vstats::AcqSpecs::UpdateSpec``   *class*  contains  *fields*  that
#     can be updated in an acquisition specification. <b>Warning:</b> This  *class*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Vstats::AcqSpecs::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::AcqSpecs::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{counters} = $args{'counters'};
   $self->{resources} = $args{'resources'};
   $self->{interval} = $args{'interval'};
   $self->{expiration} = $args{'expiration'};
   $self->{memo_} = $args{'memo_'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::AcqSpecs::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.acq_specs.update_spec');
   $self->set_binding_field('key' => 'counters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'AcqSpecs::CounterSpec')));
   $self->set_binding_field('key' => 'resources', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'RsrcId'))));
   $self->set_binding_field('key' => 'interval', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memo_', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_counters ()
# Gets the value of 'counters' property.
#
# @retval counters - The current value of the field.
# Designates the counter(s) to be sampled. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_counters {
   my ($self, %args) = @_;
   return $self->{'counters'}; 	
}

## @method set_counters ()
# Sets the given value for 'counters' property.
# 
# @param counters  - New value for the field.
# Designates the counter(s) to be sampled. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_counters {
   my ($self, %args) = @_;
   $self->{'counters'} = $args{'counters'}; 
   return;	
}

## @method get_resources ()
# Gets the value of 'resources' property.
#
# @retval resources - The current value of the field.
# A set of resource identifiers representing a single resource to be monitored.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Optional#
sub get_resources {
   my ($self, %args) = @_;
   return $self->{'resources'}; 	
}

## @method set_resources ()
# Sets the given value for 'resources' property.
# 
# @param resources  - New value for the field.
# A set of resource identifiers representing a single resource to be monitored.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_resources {
   my ($self, %args) = @_;
   $self->{'resources'} = $args{'resources'}; 
   return;	
}

## @method get_interval ()
# Gets the value of 'interval' property.
#
# @retval interval - The current value of the field.
# Desired sampling rate in seconds. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_interval {
   my ($self, %args) = @_;
   return $self->{'interval'}; 	
}

## @method set_interval ()
# Sets the given value for 'interval' property.
# 
# @param interval  - New value for the field.
# Desired sampling rate in seconds. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_interval {
   my ($self, %args) = @_;
   $self->{'interval'} = $args{'interval'}; 
   return;	
}

## @method get_expiration ()
# Gets the value of 'expiration' property.
#
# @retval expiration - The current value of the field.
# Expiration time for this acquisition specification in Unix UTC number of seconds
#     (since epoch). When this  *field*  is 0, the default expiration duration is 100
#     minutes. <b>Warning:</b> This  *field*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_expiration {
   my ($self, %args) = @_;
   return $self->{'expiration'}; 	
}

## @method set_expiration ()
# Sets the given value for 'expiration' property.
# 
# @param expiration  - New value for the field.
# Expiration time for this acquisition specification in Unix UTC number of seconds
#     (since epoch). When this  *field*  is 0, the default expiration duration is 100
#     minutes. <b>Warning:</b> This  *field*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_expiration {
   my ($self, %args) = @_;
   $self->{'expiration'} = $args{'expiration'}; 
   return;	
}

## @method get_memo_ ()
# Gets the value of 'memo_' property.
#
# @retval memo_ - The current value of the field.
# Consumer provided text about this Acquisition Specification. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_memo_ {
   my ($self, %args) = @_;
   return $self->{'memo_'}; 	
}

## @method set_memo_ ()
# Sets the given value for 'memo_' property.
# 
# @param memo_  - New value for the field.
# Consumer provided text about this Acquisition Specification. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_memo_ {
   my ($self, %args) = @_;
   $self->{'memo_'} = $args{'memo_'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::AcqSpecs service
#########################################################################################
