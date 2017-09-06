########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Snmp.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp``   *interface*  provides 
#     *methods*  SNMP agent operations.
#

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp;

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
use Com::Vmware::Appliance::Techpreview::Monitoring::SnmpStub;

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

## @method reset ()
# Restore settings to factory defaults.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub reset {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'reset', method_args =>  {});
}


## @method enable ()
# Start a disabled SNMP agent.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub enable {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'enable', method_args =>  {});
}


## @method hash ()
# Generate localized keys for secure SNMPv3 communications.
#
# @param config [REQUIRED] SNMP hash configuration.
# . The value must be Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig.
#
# @retval 
# SNMP hash result
# The return type will be
# Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub hash {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'hash',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'hash',
                         method_args => \%args);
}


## @method limits ()
# Get SNMP limits information.
#
# @retval 
# SNMP limits structure
# The return type will be Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub limits {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'limits', method_args =>  {});
}


## @method get ()
# Return an SNMP agent configuration.
#
# @retval 
# SNMP config structure
# The return type will be
# Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method disable ()
# Stop an enabled SNMP agent.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub disable {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'disable', method_args =>  {});
}


## @method set ()
# Set SNMP configuration.
#
# @param config [REQUIRED] SNMP configuration.
# . The value must be Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method test ()
# Send a warmStart notification to all configured traps and inform destinations (see RFC
# 3418).
#
# @retval 
# SNMP test result
# The return type will be
# Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub test {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'test', method_args =>  {});
}


## @method stats ()
# Generate diagnostics report for snmp agent.
#
# @retval 
# SNMP stats
# The return type will be Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub stats {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'stats', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto``   *enumerated
#     type*  Defines SNMP authentication protocols
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto::NONE #
#NONE
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto::SH_A1 #
#SHA1
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto::M_D5 #
#MD5

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto;

use constant {
    none =>  'none',
    SHA1 =>  'SHA1',
    MD5 =>  'MD5',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_auth_proto',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto``   *enumerated
#     type*  Defines SNMP privacy protocols
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto::AE_S128 #
#AES128
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto::NONE #
#NONE

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto;

use constant {
    AES128 =>  'AES128',
    none =>  'none',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_priv_proto',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel``   *enumerated
#     type*  Defines SNMP decurity levels
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel::NONE #
#none
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel::AUTH #
#auth
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel::PRIV #
#priv

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel;

use constant {
    none =>  'none',
    auth =>  'auth',
    priv =>  'priv',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_sec_level',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication``  
#     *enumerated type*  Defines SNMP v3 notification types
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication::INFORM #
#inform
#
# Constant Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication::TRAP #
#trap

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication;

use constant {
    inform =>  'inform',
    trap =>  'trap',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNM_pv3_notfication',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits``   *class* 
#     Structure that provides various limits of the SNMP agent.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{max_communities} = $args{'max_communities'};
   $self->{max_trap_destinations_v1} = $args{'max_trap_destinations_v1'};
   $self->{max_destinations_v3} = $args{'max_destinations_v3'};
   $self->{max_notification_filters} = $args{'max_notification_filters'};
   $self->{max_community_length} = $args{'max_community_length'};
   $self->{max_buffer_size} = $args{'max_buffer_size'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_limits');
   $self->set_binding_field('key' => 'max_communities', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'max_trap_destinations_v1', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'max_destinations_v3', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'max_notification_filters', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'max_community_length', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'max_buffer_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_max_communities ()
# Gets the value of 'max_communities' property.
#
# @retval max_communities - The current value of the field.
# Set up maximum communities limit
#
# long#
sub get_max_communities {
   my ($self, %args) = @_;
   return $self->{'max_communities'}; 	
}

## @method set_max_communities ()
# Sets the given value for 'max_communities' property.
# 
# @param max_communities  - New value for the field.
# Set up maximum communities limit
#
sub set_max_communities {
   my ($self, %args) = @_;
   $self->{'max_communities'} = $args{'max_communities'}; 
   return;	
}

## @method get_max_trap_destinations_v1 ()
# Gets the value of 'max_trap_destinations_v1' property.
#
# @retval max_trap_destinations_v1 - The current value of the field.
# Set up max trap destinations limit
#
# long#
sub get_max_trap_destinations_v1 {
   my ($self, %args) = @_;
   return $self->{'max_trap_destinations_v1'}; 	
}

## @method set_max_trap_destinations_v1 ()
# Sets the given value for 'max_trap_destinations_v1' property.
# 
# @param max_trap_destinations_v1  - New value for the field.
# Set up max trap destinations limit
#
sub set_max_trap_destinations_v1 {
   my ($self, %args) = @_;
   $self->{'max_trap_destinations_v1'} = $args{'max_trap_destinations_v1'}; 
   return;	
}

## @method get_max_destinations_v3 ()
# Gets the value of 'max_destinations_v3' property.
#
# @retval max_destinations_v3 - The current value of the field.
# Set up max destinations limit
#
# long#
sub get_max_destinations_v3 {
   my ($self, %args) = @_;
   return $self->{'max_destinations_v3'}; 	
}

## @method set_max_destinations_v3 ()
# Sets the given value for 'max_destinations_v3' property.
# 
# @param max_destinations_v3  - New value for the field.
# Set up max destinations limit
#
sub set_max_destinations_v3 {
   my ($self, %args) = @_;
   $self->{'max_destinations_v3'} = $args{'max_destinations_v3'}; 
   return;	
}

## @method get_max_notification_filters ()
# Gets the value of 'max_notification_filters' property.
#
# @retval max_notification_filters - The current value of the field.
# Set up max notification Filters
#
# long#
sub get_max_notification_filters {
   my ($self, %args) = @_;
   return $self->{'max_notification_filters'}; 	
}

## @method set_max_notification_filters ()
# Sets the given value for 'max_notification_filters' property.
# 
# @param max_notification_filters  - New value for the field.
# Set up max notification Filters
#
sub set_max_notification_filters {
   my ($self, %args) = @_;
   $self->{'max_notification_filters'} = $args{'max_notification_filters'}; 
   return;	
}

## @method get_max_community_length ()
# Gets the value of 'max_community_length' property.
#
# @retval max_community_length - The current value of the field.
# Set up max community length
#
# long#
sub get_max_community_length {
   my ($self, %args) = @_;
   return $self->{'max_community_length'}; 	
}

## @method set_max_community_length ()
# Sets the given value for 'max_community_length' property.
# 
# @param max_community_length  - New value for the field.
# Set up max community length
#
sub set_max_community_length {
   my ($self, %args) = @_;
   $self->{'max_community_length'} = $args{'max_community_length'}; 
   return;	
}

## @method get_max_buffer_size ()
# Gets the value of 'max_buffer_size' property.
#
# @retval max_buffer_size - The current value of the field.
# Set up max buffer size
#
# long#
sub get_max_buffer_size {
   my ($self, %args) = @_;
   return $self->{'max_buffer_size'}; 	
}

## @method set_max_buffer_size ()
# Sets the given value for 'max_buffer_size' property.
# 
# @param max_buffer_size  - New value for the field.
# Set up max buffer size
#
sub set_max_buffer_size {
   my ($self, %args) = @_;
   $self->{'max_buffer_size'} = $args{'max_buffer_size'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults``   *class* 
#     Structure to provide operators diagnostics test results.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{success} = $args{'success'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_test_results');
   $self->set_binding_field('key' => 'success', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_success ()
# Gets the value of 'success' property.
#
# @retval success - The current value of the field.
# Set success to true/false
#
# boolean#
sub get_success {
   my ($self, %args) = @_;
   return $self->{'success'}; 	
}

## @method set_success ()
# Sets the given value for 'success' property.
# 
# @param success  - New value for the field.
# Set success to true/false
#
sub set_success {
   my ($self, %args) = @_;
   $self->{'success'} = $args{'success'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# message
#
# String#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# message
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats``   *class* 
#     Structure to provide operators diagnostics on snmp agent itself.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{sysuptime} = $args{'sysuptime'};
   $self->{worstrtimelast} = $args{'worstrtimelast'};
   $self->{avgresponsetime} = $args{'avgresponsetime'};
   $self->{worstresponsetime} = $args{'worstresponsetime'};
   $self->{inpkts} = $args{'inpkts'};
   $self->{outpkts} = $args{'outpkts'};
   $self->{usmstatsnotintimewindows} = $args{'usmstatsnotintimewindows'};
   $self->{usmstatsunknownusernames} = $args{'usmstatsunknownusernames'};
   $self->{usmstatsunknownengineids} = $args{'usmstatsunknownengineids'};
   $self->{usmstatswrongdigests} = $args{'usmstatswrongdigests'};
   $self->{usmstatsdecryptionerrors} = $args{'usmstatsdecryptionerrors'};
   $self->{inbadversions} = $args{'inbadversions'};
   $self->{inbadcommunitynames} = $args{'inbadcommunitynames'};
   $self->{inbadcommunityuses} = $args{'inbadcommunityuses'};
   $self->{inasnparseerrs} = $args{'inasnparseerrs'};
   $self->{intoobigs} = $args{'intoobigs'};
   $self->{innosuchnames} = $args{'innosuchnames'};
   $self->{inbadvalues} = $args{'inbadvalues'};
   $self->{ingenerrs} = $args{'ingenerrs'};
   $self->{outtoobigs} = $args{'outtoobigs'};
   $self->{outnosuchnames} = $args{'outnosuchnames'};
   $self->{outbadvalues} = $args{'outbadvalues'};
   $self->{outgenerrs} = $args{'outgenerrs'};
   $self->{outtraps} = $args{'outtraps'};
   $self->{silentdrops} = $args{'silentdrops'};
   $self->{avgvarbinds} = $args{'avgvarbinds'};
   $self->{maxvarbinds} = $args{'maxvarbinds'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_stats');
   $self->set_binding_field('key' => 'sysuptime', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'worstrtimelast', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'avgresponsetime', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'worstresponsetime', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'inpkts', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'outpkts', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'usmstatsnotintimewindows', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'usmstatsunknownusernames', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'usmstatsunknownengineids', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'usmstatswrongdigests', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'usmstatsdecryptionerrors', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'inbadversions', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'inbadcommunitynames', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'inbadcommunityuses', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'inasnparseerrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'intoobigs', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'innosuchnames', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'inbadvalues', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'ingenerrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'outtoobigs', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'outnosuchnames', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'outbadvalues', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'outgenerrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'outtraps', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'silentdrops', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'avgvarbinds', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'maxvarbinds', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_sysuptime ()
# Gets the value of 'sysuptime' property.
#
# @retval sysuptime - The current value of the field.
# System uptime
#
# String#
sub get_sysuptime {
   my ($self, %args) = @_;
   return $self->{'sysuptime'}; 	
}

## @method set_sysuptime ()
# Sets the given value for 'sysuptime' property.
# 
# @param sysuptime  - New value for the field.
# System uptime
#
sub set_sysuptime {
   my ($self, %args) = @_;
   $self->{'sysuptime'} = $args{'sysuptime'}; 
   return;	
}

## @method get_worstrtimelast ()
# Gets the value of 'worstrtimelast' property.
#
# @retval worstrtimelast - The current value of the field.
# Last updated time
#
# String#
sub get_worstrtimelast {
   my ($self, %args) = @_;
   return $self->{'worstrtimelast'}; 	
}

## @method set_worstrtimelast ()
# Sets the given value for 'worstrtimelast' property.
# 
# @param worstrtimelast  - New value for the field.
# Last updated time
#
sub set_worstrtimelast {
   my ($self, %args) = @_;
   $self->{'worstrtimelast'} = $args{'worstrtimelast'}; 
   return;	
}

## @method get_avgresponsetime ()
# Gets the value of 'avgresponsetime' property.
#
# @retval avgresponsetime - The current value of the field.
# Average response time
#
# String#
sub get_avgresponsetime {
   my ($self, %args) = @_;
   return $self->{'avgresponsetime'}; 	
}

## @method set_avgresponsetime ()
# Sets the given value for 'avgresponsetime' property.
# 
# @param avgresponsetime  - New value for the field.
# Average response time
#
sub set_avgresponsetime {
   my ($self, %args) = @_;
   $self->{'avgresponsetime'} = $args{'avgresponsetime'}; 
   return;	
}

## @method get_worstresponsetime ()
# Gets the value of 'worstresponsetime' property.
#
# @retval worstresponsetime - The current value of the field.
# Response time
#
# String#
sub get_worstresponsetime {
   my ($self, %args) = @_;
   return $self->{'worstresponsetime'}; 	
}

## @method set_worstresponsetime ()
# Sets the given value for 'worstresponsetime' property.
# 
# @param worstresponsetime  - New value for the field.
# Response time
#
sub set_worstresponsetime {
   my ($self, %args) = @_;
   $self->{'worstresponsetime'} = $args{'worstresponsetime'}; 
   return;	
}

## @method get_inpkts ()
# Gets the value of 'inpkts' property.
#
# @retval inpkts - The current value of the field.
# No of input packets
#
# long#
sub get_inpkts {
   my ($self, %args) = @_;
   return $self->{'inpkts'}; 	
}

## @method set_inpkts ()
# Sets the given value for 'inpkts' property.
# 
# @param inpkts  - New value for the field.
# No of input packets
#
sub set_inpkts {
   my ($self, %args) = @_;
   $self->{'inpkts'} = $args{'inpkts'}; 
   return;	
}

## @method get_outpkts ()
# Gets the value of 'outpkts' property.
#
# @retval outpkts - The current value of the field.
# No of output packets
#
# long#
sub get_outpkts {
   my ($self, %args) = @_;
   return $self->{'outpkts'}; 	
}

## @method set_outpkts ()
# Sets the given value for 'outpkts' property.
# 
# @param outpkts  - New value for the field.
# No of output packets
#
sub set_outpkts {
   my ($self, %args) = @_;
   $self->{'outpkts'} = $args{'outpkts'}; 
   return;	
}

## @method get_usmstatsnotintimewindows ()
# Gets the value of 'usmstatsnotintimewindows' property.
#
# @retval usmstatsnotintimewindows - The current value of the field.
# No of stats not in time window
#
# long#
sub get_usmstatsnotintimewindows {
   my ($self, %args) = @_;
   return $self->{'usmstatsnotintimewindows'}; 	
}

## @method set_usmstatsnotintimewindows ()
# Sets the given value for 'usmstatsnotintimewindows' property.
# 
# @param usmstatsnotintimewindows  - New value for the field.
# No of stats not in time window
#
sub set_usmstatsnotintimewindows {
   my ($self, %args) = @_;
   $self->{'usmstatsnotintimewindows'} = $args{'usmstatsnotintimewindows'}; 
   return;	
}

## @method get_usmstatsunknownusernames ()
# Gets the value of 'usmstatsunknownusernames' property.
#
# @retval usmstatsunknownusernames - The current value of the field.
# No of usm stats unknown
#
# long#
sub get_usmstatsunknownusernames {
   my ($self, %args) = @_;
   return $self->{'usmstatsunknownusernames'}; 	
}

## @method set_usmstatsunknownusernames ()
# Sets the given value for 'usmstatsunknownusernames' property.
# 
# @param usmstatsunknownusernames  - New value for the field.
# No of usm stats unknown
#
sub set_usmstatsunknownusernames {
   my ($self, %args) = @_;
   $self->{'usmstatsunknownusernames'} = $args{'usmstatsunknownusernames'}; 
   return;	
}

## @method get_usmstatsunknownengineids ()
# Gets the value of 'usmstatsunknownengineids' property.
#
# @retval usmstatsunknownengineids - The current value of the field.
# No of usm stats unknown engine ids
#
# long#
sub get_usmstatsunknownengineids {
   my ($self, %args) = @_;
   return $self->{'usmstatsunknownengineids'}; 	
}

## @method set_usmstatsunknownengineids ()
# Sets the given value for 'usmstatsunknownengineids' property.
# 
# @param usmstatsunknownengineids  - New value for the field.
# No of usm stats unknown engine ids
#
sub set_usmstatsunknownengineids {
   my ($self, %args) = @_;
   $self->{'usmstatsunknownengineids'} = $args{'usmstatsunknownengineids'}; 
   return;	
}

## @method get_usmstatswrongdigests ()
# Gets the value of 'usmstatswrongdigests' property.
#
# @retval usmstatswrongdigests - The current value of the field.
# No of wrogn digests
#
# long#
sub get_usmstatswrongdigests {
   my ($self, %args) = @_;
   return $self->{'usmstatswrongdigests'}; 	
}

## @method set_usmstatswrongdigests ()
# Sets the given value for 'usmstatswrongdigests' property.
# 
# @param usmstatswrongdigests  - New value for the field.
# No of wrogn digests
#
sub set_usmstatswrongdigests {
   my ($self, %args) = @_;
   $self->{'usmstatswrongdigests'} = $args{'usmstatswrongdigests'}; 
   return;	
}

## @method get_usmstatsdecryptionerrors ()
# Gets the value of 'usmstatsdecryptionerrors' property.
#
# @retval usmstatsdecryptionerrors - The current value of the field.
# No. of decryption errors
#
# long#
sub get_usmstatsdecryptionerrors {
   my ($self, %args) = @_;
   return $self->{'usmstatsdecryptionerrors'}; 	
}

## @method set_usmstatsdecryptionerrors ()
# Sets the given value for 'usmstatsdecryptionerrors' property.
# 
# @param usmstatsdecryptionerrors  - New value for the field.
# No. of decryption errors
#
sub set_usmstatsdecryptionerrors {
   my ($self, %args) = @_;
   $self->{'usmstatsdecryptionerrors'} = $args{'usmstatsdecryptionerrors'}; 
   return;	
}

## @method get_inbadversions ()
# Gets the value of 'inbadversions' property.
#
# @retval inbadversions - The current value of the field.
# No of bad versions
#
# long#
sub get_inbadversions {
   my ($self, %args) = @_;
   return $self->{'inbadversions'}; 	
}

## @method set_inbadversions ()
# Sets the given value for 'inbadversions' property.
# 
# @param inbadversions  - New value for the field.
# No of bad versions
#
sub set_inbadversions {
   my ($self, %args) = @_;
   $self->{'inbadversions'} = $args{'inbadversions'}; 
   return;	
}

## @method get_inbadcommunitynames ()
# Gets the value of 'inbadcommunitynames' property.
#
# @retval inbadcommunitynames - The current value of the field.
# No of bad community names
#
# long#
sub get_inbadcommunitynames {
   my ($self, %args) = @_;
   return $self->{'inbadcommunitynames'}; 	
}

## @method set_inbadcommunitynames ()
# Sets the given value for 'inbadcommunitynames' property.
# 
# @param inbadcommunitynames  - New value for the field.
# No of bad community names
#
sub set_inbadcommunitynames {
   my ($self, %args) = @_;
   $self->{'inbadcommunitynames'} = $args{'inbadcommunitynames'}; 
   return;	
}

## @method get_inbadcommunityuses ()
# Gets the value of 'inbadcommunityuses' property.
#
# @retval inbadcommunityuses - The current value of the field.
# No of bad community uses
#
# long#
sub get_inbadcommunityuses {
   my ($self, %args) = @_;
   return $self->{'inbadcommunityuses'}; 	
}

## @method set_inbadcommunityuses ()
# Sets the given value for 'inbadcommunityuses' property.
# 
# @param inbadcommunityuses  - New value for the field.
# No of bad community uses
#
sub set_inbadcommunityuses {
   my ($self, %args) = @_;
   $self->{'inbadcommunityuses'} = $args{'inbadcommunityuses'}; 
   return;	
}

## @method get_inasnparseerrs ()
# Gets the value of 'inasnparseerrs' property.
#
# @retval inasnparseerrs - The current value of the field.
# No of parse errors
#
# long#
sub get_inasnparseerrs {
   my ($self, %args) = @_;
   return $self->{'inasnparseerrs'}; 	
}

## @method set_inasnparseerrs ()
# Sets the given value for 'inasnparseerrs' property.
# 
# @param inasnparseerrs  - New value for the field.
# No of parse errors
#
sub set_inasnparseerrs {
   my ($self, %args) = @_;
   $self->{'inasnparseerrs'} = $args{'inasnparseerrs'}; 
   return;	
}

## @method get_intoobigs ()
# Gets the value of 'intoobigs' property.
#
# @retval intoobigs - The current value of the field.
# No of too bigs
#
# long#
sub get_intoobigs {
   my ($self, %args) = @_;
   return $self->{'intoobigs'}; 	
}

## @method set_intoobigs ()
# Sets the given value for 'intoobigs' property.
# 
# @param intoobigs  - New value for the field.
# No of too bigs
#
sub set_intoobigs {
   my ($self, %args) = @_;
   $self->{'intoobigs'} = $args{'intoobigs'}; 
   return;	
}

## @method get_innosuchnames ()
# Gets the value of 'innosuchnames' property.
#
# @retval innosuchnames - The current value of the field.
# No of no such names
#
# long#
sub get_innosuchnames {
   my ($self, %args) = @_;
   return $self->{'innosuchnames'}; 	
}

## @method set_innosuchnames ()
# Sets the given value for 'innosuchnames' property.
# 
# @param innosuchnames  - New value for the field.
# No of no such names
#
sub set_innosuchnames {
   my ($self, %args) = @_;
   $self->{'innosuchnames'} = $args{'innosuchnames'}; 
   return;	
}

## @method get_inbadvalues ()
# Gets the value of 'inbadvalues' property.
#
# @retval inbadvalues - The current value of the field.
# No of bad values
#
# long#
sub get_inbadvalues {
   my ($self, %args) = @_;
   return $self->{'inbadvalues'}; 	
}

## @method set_inbadvalues ()
# Sets the given value for 'inbadvalues' property.
# 
# @param inbadvalues  - New value for the field.
# No of bad values
#
sub set_inbadvalues {
   my ($self, %args) = @_;
   $self->{'inbadvalues'} = $args{'inbadvalues'}; 
   return;	
}

## @method get_ingenerrs ()
# Gets the value of 'ingenerrs' property.
#
# @retval ingenerrs - The current value of the field.
# No of gen errors
#
# long#
sub get_ingenerrs {
   my ($self, %args) = @_;
   return $self->{'ingenerrs'}; 	
}

## @method set_ingenerrs ()
# Sets the given value for 'ingenerrs' property.
# 
# @param ingenerrs  - New value for the field.
# No of gen errors
#
sub set_ingenerrs {
   my ($self, %args) = @_;
   $self->{'ingenerrs'} = $args{'ingenerrs'}; 
   return;	
}

## @method get_outtoobigs ()
# Gets the value of 'outtoobigs' property.
#
# @retval outtoobigs - The current value of the field.
# No out output too bigs
#
# long#
sub get_outtoobigs {
   my ($self, %args) = @_;
   return $self->{'outtoobigs'}; 	
}

## @method set_outtoobigs ()
# Sets the given value for 'outtoobigs' property.
# 
# @param outtoobigs  - New value for the field.
# No out output too bigs
#
sub set_outtoobigs {
   my ($self, %args) = @_;
   $self->{'outtoobigs'} = $args{'outtoobigs'}; 
   return;	
}

## @method get_outnosuchnames ()
# Gets the value of 'outnosuchnames' property.
#
# @retval outnosuchnames - The current value of the field.
# No of no such names
#
# long#
sub get_outnosuchnames {
   my ($self, %args) = @_;
   return $self->{'outnosuchnames'}; 	
}

## @method set_outnosuchnames ()
# Sets the given value for 'outnosuchnames' property.
# 
# @param outnosuchnames  - New value for the field.
# No of no such names
#
sub set_outnosuchnames {
   my ($self, %args) = @_;
   $self->{'outnosuchnames'} = $args{'outnosuchnames'}; 
   return;	
}

## @method get_outbadvalues ()
# Gets the value of 'outbadvalues' property.
#
# @retval outbadvalues - The current value of the field.
# No of bad values
#
# long#
sub get_outbadvalues {
   my ($self, %args) = @_;
   return $self->{'outbadvalues'}; 	
}

## @method set_outbadvalues ()
# Sets the given value for 'outbadvalues' property.
# 
# @param outbadvalues  - New value for the field.
# No of bad values
#
sub set_outbadvalues {
   my ($self, %args) = @_;
   $self->{'outbadvalues'} = $args{'outbadvalues'}; 
   return;	
}

## @method get_outgenerrs ()
# Gets the value of 'outgenerrs' property.
#
# @retval outgenerrs - The current value of the field.
# No of gen errors
#
# long#
sub get_outgenerrs {
   my ($self, %args) = @_;
   return $self->{'outgenerrs'}; 	
}

## @method set_outgenerrs ()
# Sets the given value for 'outgenerrs' property.
# 
# @param outgenerrs  - New value for the field.
# No of gen errors
#
sub set_outgenerrs {
   my ($self, %args) = @_;
   $self->{'outgenerrs'} = $args{'outgenerrs'}; 
   return;	
}

## @method get_outtraps ()
# Gets the value of 'outtraps' property.
#
# @retval outtraps - The current value of the field.
# No of output traps
#
# long#
sub get_outtraps {
   my ($self, %args) = @_;
   return $self->{'outtraps'}; 	
}

## @method set_outtraps ()
# Sets the given value for 'outtraps' property.
# 
# @param outtraps  - New value for the field.
# No of output traps
#
sub set_outtraps {
   my ($self, %args) = @_;
   $self->{'outtraps'} = $args{'outtraps'}; 
   return;	
}

## @method get_silentdrops ()
# Gets the value of 'silentdrops' property.
#
# @retval silentdrops - The current value of the field.
# No of silent drops
#
# long#
sub get_silentdrops {
   my ($self, %args) = @_;
   return $self->{'silentdrops'}; 	
}

## @method set_silentdrops ()
# Sets the given value for 'silentdrops' property.
# 
# @param silentdrops  - New value for the field.
# No of silent drops
#
sub set_silentdrops {
   my ($self, %args) = @_;
   $self->{'silentdrops'} = $args{'silentdrops'}; 
   return;	
}

## @method get_avgvarbinds ()
# Gets the value of 'avgvarbinds' property.
#
# @retval avgvarbinds - The current value of the field.
# No of ave:rage var binds
#
# long#
sub get_avgvarbinds {
   my ($self, %args) = @_;
   return $self->{'avgvarbinds'}; 	
}

## @method set_avgvarbinds ()
# Sets the given value for 'avgvarbinds' property.
# 
# @param avgvarbinds  - New value for the field.
# No of ave:rage var binds
#
sub set_avgvarbinds {
   my ($self, %args) = @_;
   $self->{'avgvarbinds'} = $args{'avgvarbinds'}; 
   return;	
}

## @method get_maxvarbinds ()
# Gets the value of 'maxvarbinds' property.
#
# @retval maxvarbinds - The current value of the field.
# No of max var binds
#
# long#
sub get_maxvarbinds {
   my ($self, %args) = @_;
   return $self->{'maxvarbinds'}; 	
}

## @method set_maxvarbinds ()
# Sets the given value for 'maxvarbinds' property.
# 
# @param maxvarbinds  - New value for the field.
# No of max var binds
#
sub set_maxvarbinds {
   my ($self, %args) = @_;
   $self->{'maxvarbinds'} = $args{'maxvarbinds'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig``   *class* 
#     Structure that defines the SNMP configuration, provided as input to set(), and never
#     the result of get(). See SNMPConfigReadOnly. This structure is used to configure SNMP
#     v1, v2c, and v3.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{authentication} = $args{'authentication'};
   $self->{communities} = $args{'communities'};
   $self->{engineid} = $args{'engineid'};
   $self->{loglevel} = $args{'loglevel'};
   $self->{notraps} = $args{'notraps'};
   $self->{port} = $args{'port'};
   $self->{privacy} = $args{'privacy'};
   $self->{remoteusers} = $args{'remoteusers'};
   $self->{syscontact} = $args{'syscontact'};
   $self->{syslocation} = $args{'syslocation'};
   $self->{targets} = $args{'targets'};
   $self->{users} = $args{'users'};
   $self->{v3targets} = $args{'v3targets'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_config');
   $self->set_binding_field('key' => 'authentication', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPAuthProto'));
   $self->set_binding_field('key' => 'communities', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'engineid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'loglevel', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'notraps', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'privacy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPPrivProto'));
   $self->set_binding_field('key' => 'remoteusers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'syscontact', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'syslocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'targets', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'users', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'v3targets', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_authentication ()
# Gets the value of 'authentication' property.
#
# @retval authentication - The current value of the field.
# Set the default authentication protocol. Values can be none, MD5, or SHA1.
#
# SNMPAuthProto#
sub get_authentication {
   my ($self, %args) = @_;
   return $self->{'authentication'}; 	
}

## @method set_authentication ()
# Sets the given value for 'authentication' property.
# 
# @param authentication  - New value for the field.
# Set the default authentication protocol. Values can be none, MD5, or SHA1.
#
sub set_authentication {
   my ($self, %args) = @_;
   $self->{'authentication'} = $args{'authentication'}; 
   return;	
}

## @method get_communities ()
# Gets the value of 'communities' property.
#
# @retval communities - The current value of the field.
# Set up to ten communities, each of no more than 64 characters long. The format is:
#     community1[,community2,...]. This setting overwrites any previous settings.
#
# List#
sub get_communities {
   my ($self, %args) = @_;
   return $self->{'communities'}; 	
}

## @method set_communities ()
# Sets the given value for 'communities' property.
# 
# @param communities  - New value for the field.
# Set up to ten communities, each of no more than 64 characters long. The format is:
#     community1[,community2,...]. This setting overwrites any previous settings.
#
sub set_communities {
   my ($self, %args) = @_;
   $self->{'communities'} = $args{'communities'}; 
   return;	
}

## @method get_engineid ()
# Gets the value of 'engineid' property.
#
# @retval engineid - The current value of the field.
# Set SNMPv3 engine ID. The engine ID must contain 5 to 32 hexadecimal characters.
#     &quot;0x&quot; and colon (:) are removed from the ID.
#
# String#
sub get_engineid {
   my ($self, %args) = @_;
   return $self->{'engineid'}; 	
}

## @method set_engineid ()
# Sets the given value for 'engineid' property.
# 
# @param engineid  - New value for the field.
# Set SNMPv3 engine ID. The engine ID must contain 5 to 32 hexadecimal characters.
#     &quot;0x&quot; and colon (:) are removed from the ID.
#
sub set_engineid {
   my ($self, %args) = @_;
   $self->{'engineid'} = $args{'engineid'}; 
   return;	
}

## @method get_loglevel ()
# Gets the value of 'loglevel' property.
#
# @retval loglevel - The current value of the field.
# System Agent syslog logging level: debug|info|warning|error.
#
# String#
sub get_loglevel {
   my ($self, %args) = @_;
   return $self->{'loglevel'}; 	
}

## @method set_loglevel ()
# Sets the given value for 'loglevel' property.
# 
# @param loglevel  - New value for the field.
# System Agent syslog logging level: debug|info|warning|error.
#
sub set_loglevel {
   my ($self, %args) = @_;
   $self->{'loglevel'} = $args{'loglevel'}; 
   return;	
}

## @method get_notraps ()
# Gets the value of 'notraps' property.
#
# @retval notraps - The current value of the field.
# Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the
#     agent. Use &apos;reset&apos; to clear the setting.
#
# List#
sub get_notraps {
   my ($self, %args) = @_;
   return $self->{'notraps'}; 	
}

## @method set_notraps ()
# Sets the given value for 'notraps' property.
# 
# @param notraps  - New value for the field.
# Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the
#     agent. Use &apos;reset&apos; to clear the setting.
#
sub set_notraps {
   my ($self, %args) = @_;
   $self->{'notraps'} = $args{'notraps'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Set up a UDP port which the SNMP agent uses to listen on for polling requests. The
#     default UDP port is 161.
#
# long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# Set up a UDP port which the SNMP agent uses to listen on for polling requests. The
#     default UDP port is 161.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_privacy ()
# Gets the value of 'privacy' property.
#
# @retval privacy - The current value of the field.
# Set the default privacy protocol. Values: none or AES128.
#
# SNMPPrivProto#
sub get_privacy {
   my ($self, %args) = @_;
   return $self->{'privacy'}; 	
}

## @method set_privacy ()
# Sets the given value for 'privacy' property.
# 
# @param privacy  - New value for the field.
# Set the default privacy protocol. Values: none or AES128.
#
sub set_privacy {
   my ($self, %args) = @_;
   $self->{'privacy'} = $args{'privacy'}; 
   return;	
}

## @method get_remoteusers ()
# Gets the value of 'remoteusers' property.
#
# @retval remoteusers - The current value of the field.
# Set up to five inform user IDs. The format is:
#     user/auth-proto/-|auth-hash/priv-proto/-|priv-hash/engine-id[,...]. Here, user must be
#     maximum 32 characters long; auth-proto is none, MD5 or SHA1; priv-proto is none or
#     AES; &apos;-&apos; indicates no hash; engine-id is a hexadecimal string
#     &apos;0x0-9a-f&apos; and must be up to 32 characters long.
#
# List#
sub get_remoteusers {
   my ($self, %args) = @_;
   return $self->{'remoteusers'}; 	
}

## @method set_remoteusers ()
# Sets the given value for 'remoteusers' property.
# 
# @param remoteusers  - New value for the field.
# Set up to five inform user IDs. The format is:
#     user/auth-proto/-|auth-hash/priv-proto/-|priv-hash/engine-id[,...]. Here, user must be
#     maximum 32 characters long; auth-proto is none, MD5 or SHA1; priv-proto is none or
#     AES; &apos;-&apos; indicates no hash; engine-id is a hexadecimal string
#     &apos;0x0-9a-f&apos; and must be up to 32 characters long.
#
sub set_remoteusers {
   my ($self, %args) = @_;
   $self->{'remoteusers'} = $args{'remoteusers'}; 
   return;	
}

## @method get_syscontact ()
# Gets the value of 'syscontact' property.
#
# @retval syscontact - The current value of the field.
# System contact string as presented in sysContact.0. Up to 255 characters long.
#
# String#
sub get_syscontact {
   my ($self, %args) = @_;
   return $self->{'syscontact'}; 	
}

## @method set_syscontact ()
# Sets the given value for 'syscontact' property.
# 
# @param syscontact  - New value for the field.
# System contact string as presented in sysContact.0. Up to 255 characters long.
#
sub set_syscontact {
   my ($self, %args) = @_;
   $self->{'syscontact'} = $args{'syscontact'}; 
   return;	
}

## @method get_syslocation ()
# Gets the value of 'syslocation' property.
#
# @retval syslocation - The current value of the field.
# System location string as presented in sysLocation.0. Up to 255 characters long.
#
# String#
sub get_syslocation {
   my ($self, %args) = @_;
   return $self->{'syslocation'}; 	
}

## @method set_syslocation ()
# Sets the given value for 'syslocation' property.
# 
# @param syslocation  - New value for the field.
# System location string as presented in sysLocation.0. Up to 255 characters long.
#
sub set_syslocation {
   my ($self, %args) = @_;
   $self->{'syslocation'} = $args{'syslocation'}; 
   return;	
}

## @method get_targets ()
# Gets the value of 'targets' property.
#
# @retval targets - The current value of the field.
# Set up to three targets to which to send SNMPv1 traps. The format is:
#     ip-or-hostname[@port]/community[,...]. The default port is UDP 162. This setting
#     overwrites any previous settings.
#
# List#
sub get_targets {
   my ($self, %args) = @_;
   return $self->{'targets'}; 	
}

## @method set_targets ()
# Sets the given value for 'targets' property.
# 
# @param targets  - New value for the field.
# Set up to three targets to which to send SNMPv1 traps. The format is:
#     ip-or-hostname[@port]/community[,...]. The default port is UDP 162. This setting
#     overwrites any previous settings.
#
sub set_targets {
   my ($self, %args) = @_;
   $self->{'targets'} = $args{'targets'}; 
   return;	
}

## @method get_users ()
# Gets the value of 'users' property.
#
# @retval users - The current value of the field.
# Set up to five local users. The format is: user/-|auth-hash/-|priv-hash/model[,...].
#     Here user is maximum 32 characters long; &apos;-&apos; indicates no hash; model is one
#     of none, auth or priv.
#
# List#
sub get_users {
   my ($self, %args) = @_;
   return $self->{'users'}; 	
}

## @method set_users ()
# Sets the given value for 'users' property.
# 
# @param users  - New value for the field.
# Set up to five local users. The format is: user/-|auth-hash/-|priv-hash/model[,...].
#     Here user is maximum 32 characters long; &apos;-&apos; indicates no hash; model is one
#     of none, auth or priv.
#
sub set_users {
   my ($self, %args) = @_;
   $self->{'users'} = $args{'users'}; 
   return;	
}

## @method get_v3targets ()
# Gets the value of 'v3targets' property.
#
# @retval v3targets - The current value of the field.
# Set up to three SNMPv3 notification targets. Format is:
#     ip-or-hostname[@port]/remote-user/security-level/trap|inform[,...].
#
# List#
sub get_v3targets {
   my ($self, %args) = @_;
   return $self->{'v3targets'}; 	
}

## @method set_v3targets ()
# Sets the given value for 'v3targets' property.
# 
# @param v3targets  - New value for the field.
# Set up to three SNMPv3 notification targets. Format is:
#     ip-or-hostname[@port]/remote-user/security-level/trap|inform[,...].
#
sub set_v3targets {
   my ($self, %args) = @_;
   $self->{'v3targets'} = $args{'v3targets'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser``   *class* 
#     Structure that defines information associated with an SNMP user. authKey and privKey
#     are localized keys defined in http://tools.ietf.org/html/rfc3826#section-1.2.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{username} = $args{'username'};
   $self->{sec_level} = $args{'sec_level'};
   $self->{auth_key} = $args{'auth_key'};
   $self->{priv_key} = $args{'priv_key'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_user');
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sec_level', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPSecLevel'));
   $self->set_binding_field('key' => 'auth_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'priv_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# SNMP Username
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# SNMP Username
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_sec_level ()
# Gets the value of 'sec_level' property.
#
# @retval sec_level - The current value of the field.
# SNMP security level
#
# SNMPSecLevel#
sub get_sec_level {
   my ($self, %args) = @_;
   return $self->{'sec_level'}; 	
}

## @method set_sec_level ()
# Sets the given value for 'sec_level' property.
# 
# @param sec_level  - New value for the field.
# SNMP security level
#
sub set_sec_level {
   my ($self, %args) = @_;
   $self->{'sec_level'} = $args{'sec_level'}; 
   return;	
}

## @method get_auth_key ()
# Gets the value of 'auth_key' property.
#
# @retval auth_key - The current value of the field.
# SNMP authorization key
#
# String#
sub get_auth_key {
   my ($self, %args) = @_;
   return $self->{'auth_key'}; 	
}

## @method set_auth_key ()
# Sets the given value for 'auth_key' property.
# 
# @param auth_key  - New value for the field.
# SNMP authorization key
#
sub set_auth_key {
   my ($self, %args) = @_;
   $self->{'auth_key'} = $args{'auth_key'}; 
   return;	
}

## @method get_priv_key ()
# Gets the value of 'priv_key' property.
#
# @retval priv_key - The current value of the field.
# SNMP privacy key
#
# String#
sub get_priv_key {
   my ($self, %args) = @_;
   return $self->{'priv_key'}; 	
}

## @method set_priv_key ()
# Sets the given value for 'priv_key' property.
# 
# @param priv_key  - New value for the field.
# SNMP privacy key
#
sub set_priv_key {
   my ($self, %args) = @_;
   $self->{'priv_key'} = $args{'priv_key'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target``   *class* 
#     Structure that defines an SNMP v3 inform or trap target.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{sec_level} = $args{'sec_level'};
   $self->{ip} = $args{'ip'};
   $self->{port} = $args{'port'};
   $self->{user} = $args{'user'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNM_pv3_target');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPv3Notfication'));
   $self->set_binding_field('key' => 'sec_level', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPSecLevel'));
   $self->set_binding_field('key' => 'ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'user', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# SNMP target type
#
# SNMPv3Notfication#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# SNMP target type
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_sec_level ()
# Gets the value of 'sec_level' property.
#
# @retval sec_level - The current value of the field.
# SNMP security level
#
# SNMPSecLevel#
sub get_sec_level {
   my ($self, %args) = @_;
   return $self->{'sec_level'}; 	
}

## @method set_sec_level ()
# Sets the given value for 'sec_level' property.
# 
# @param sec_level  - New value for the field.
# SNMP security level
#
sub set_sec_level {
   my ($self, %args) = @_;
   $self->{'sec_level'} = $args{'sec_level'}; 
   return;	
}

## @method get_ip ()
# Gets the value of 'ip' property.
#
# @retval ip - The current value of the field.
# SNMP target ip
#
# String#
sub get_ip {
   my ($self, %args) = @_;
   return $self->{'ip'}; 	
}

## @method set_ip ()
# Sets the given value for 'ip' property.
# 
# @param ip  - New value for the field.
# SNMP target ip
#
sub set_ip {
   my ($self, %args) = @_;
   $self->{'ip'} = $args{'ip'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# SNMP target port
#
# long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# SNMP target port
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_user ()
# Gets the value of 'user' property.
#
# @retval user - The current value of the field.
# SNMP User
#
# String#
sub get_user {
   my ($self, %args) = @_;
   return $self->{'user'}; 	
}

## @method set_user ()
# Sets the given value for 'user' property.
# 
# @param user  - New value for the field.
# SNMP User
#
sub set_user {
   my ($self, %args) = @_;
   $self->{'user'} = $args{'user'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget``   *class* 
#     Structure that defines an SNMP v1/v2c trap target.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip} = $args{'ip'};
   $self->{port} = $args{'port'};
   $self->{community} = $args{'community'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNM_pv1_trap_target');
   $self->set_binding_field('key' => 'ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'community', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_ip ()
# Gets the value of 'ip' property.
#
# @retval ip - The current value of the field.
# SNMP target ip
#
# String#
sub get_ip {
   my ($self, %args) = @_;
   return $self->{'ip'}; 	
}

## @method set_ip ()
# Sets the given value for 'ip' property.
# 
# @param ip  - New value for the field.
# SNMP target ip
#
sub set_ip {
   my ($self, %args) = @_;
   $self->{'ip'} = $args{'ip'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# SNMP target port
#
# long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# SNMP target port
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_community ()
# Gets the value of 'community' property.
#
# @retval community - The current value of the field.
# SNMP target community
#
# String#
sub get_community {
   my ($self, %args) = @_;
   return $self->{'community'}; 	
}

## @method set_community ()
# Sets the given value for 'community' property.
# 
# @param community  - New value for the field.
# SNMP target community
#
sub set_community {
   my ($self, %args) = @_;
   $self->{'community'} = $args{'community'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser``   *class* 
#     Structure that defines a user at particular remote SNMPv3 entity needed when using
#     informs. auth_key and priv_key contained localized keys as defined in
#     http://tools.ietf.org/html/rfc3826#section-1.2.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{username} = $args{'username'};
   $self->{sec_level} = $args{'sec_level'};
   $self->{authentication} = $args{'authentication'};
   $self->{auth_key} = $args{'auth_key'};
   $self->{privacy} = $args{'privacy'};
   $self->{priv_key} = $args{'priv_key'};
   $self->{engineid} = $args{'engineid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_remote_user');
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sec_level', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPSecLevel'));
   $self->set_binding_field('key' => 'authentication', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPAuthProto'));
   $self->set_binding_field('key' => 'auth_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'privacy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPPrivProto'));
   $self->set_binding_field('key' => 'priv_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'engineid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# SNMP Username
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# SNMP Username
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_sec_level ()
# Gets the value of 'sec_level' property.
#
# @retval sec_level - The current value of the field.
# SNMP security level
#
# SNMPSecLevel#
sub get_sec_level {
   my ($self, %args) = @_;
   return $self->{'sec_level'}; 	
}

## @method set_sec_level ()
# Sets the given value for 'sec_level' property.
# 
# @param sec_level  - New value for the field.
# SNMP security level
#
sub set_sec_level {
   my ($self, %args) = @_;
   $self->{'sec_level'} = $args{'sec_level'}; 
   return;	
}

## @method get_authentication ()
# Gets the value of 'authentication' property.
#
# @retval authentication - The current value of the field.
# SNMP authorization protocol
#
# SNMPAuthProto#
sub get_authentication {
   my ($self, %args) = @_;
   return $self->{'authentication'}; 	
}

## @method set_authentication ()
# Sets the given value for 'authentication' property.
# 
# @param authentication  - New value for the field.
# SNMP authorization protocol
#
sub set_authentication {
   my ($self, %args) = @_;
   $self->{'authentication'} = $args{'authentication'}; 
   return;	
}

## @method get_auth_key ()
# Gets the value of 'auth_key' property.
#
# @retval auth_key - The current value of the field.
# SNMP authorization key
#
# String#
sub get_auth_key {
   my ($self, %args) = @_;
   return $self->{'auth_key'}; 	
}

## @method set_auth_key ()
# Sets the given value for 'auth_key' property.
# 
# @param auth_key  - New value for the field.
# SNMP authorization key
#
sub set_auth_key {
   my ($self, %args) = @_;
   $self->{'auth_key'} = $args{'auth_key'}; 
   return;	
}

## @method get_privacy ()
# Gets the value of 'privacy' property.
#
# @retval privacy - The current value of the field.
# SNMP privacy protocol
#
# SNMPPrivProto#
sub get_privacy {
   my ($self, %args) = @_;
   return $self->{'privacy'}; 	
}

## @method set_privacy ()
# Sets the given value for 'privacy' property.
# 
# @param privacy  - New value for the field.
# SNMP privacy protocol
#
sub set_privacy {
   my ($self, %args) = @_;
   $self->{'privacy'} = $args{'privacy'}; 
   return;	
}

## @method get_priv_key ()
# Gets the value of 'priv_key' property.
#
# @retval priv_key - The current value of the field.
# SNMP privacy key
#
# String#
sub get_priv_key {
   my ($self, %args) = @_;
   return $self->{'priv_key'}; 	
}

## @method set_priv_key ()
# Sets the given value for 'priv_key' property.
# 
# @param priv_key  - New value for the field.
# SNMP privacy key
#
sub set_priv_key {
   my ($self, %args) = @_;
   $self->{'priv_key'} = $args{'priv_key'}; 
   return;	
}

## @method get_engineid ()
# Gets the value of 'engineid' property.
#
# @retval engineid - The current value of the field.
# SNMP v3 engine id
#
# String#
sub get_engineid {
   my ($self, %args) = @_;
   return $self->{'engineid'}; 	
}

## @method set_engineid ()
# Sets the given value for 'engineid' property.
# 
# @param engineid  - New value for the field.
# SNMP v3 engine id
#
sub set_engineid {
   my ($self, %args) = @_;
   $self->{'engineid'} = $args{'engineid'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly``  
#     *class*  Structure that defines the SNMP configuration, the result of get(), and never
#     provided as input to set(). This structure differs from SNMPConfig because it contains
#     localized keys (as defined in http://tools.ietf.org/html/rfc3826#section-1.2), instead
#     of raw secret strings. This structure can be used to configure SNMP v1, v2c, and v3.
#     Keep this structure in sync with vmw_snmp.py:_default_config(). Note that if a field
#     if left empty, it is considered unset and will be ignored. Existing array elements
#     below can be unset by sending an element with the string &apos;reset&apos;.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{authentication} = $args{'authentication'};
   $self->{communities} = $args{'communities'};
   $self->{enable} = $args{'enable'};
   $self->{engineid} = $args{'engineid'};
   $self->{loglevel} = $args{'loglevel'};
   $self->{notraps} = $args{'notraps'};
   $self->{port} = $args{'port'};
   $self->{privacy} = $args{'privacy'};
   $self->{syscontact} = $args{'syscontact'};
   $self->{syslocation} = $args{'syslocation'};
   $self->{targets} = $args{'targets'};
   $self->{users} = $args{'users'};
   $self->{remoteusers} = $args{'remoteusers'};
   $self->{v3targets} = $args{'v3targets'};
   $self->{pid} = $args{'pid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_config_read_only');
   $self->set_binding_field('key' => 'authentication', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPAuthProto'));
   $self->set_binding_field('key' => 'communities', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'enable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'engineid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'loglevel', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'notraps', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'privacy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPPrivProto'));
   $self->set_binding_field('key' => 'syscontact', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'syslocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'targets', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPv1TrapTarget')));
   $self->set_binding_field('key' => 'users', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPUser')));
   $self->set_binding_field('key' => 'remoteusers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPRemoteUser')));
   $self->set_binding_field('key' => 'v3targets', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPv3Target')));
   $self->set_binding_field('key' => 'pid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_authentication ()
# Gets the value of 'authentication' property.
#
# @retval authentication - The current value of the field.
# Set the default authentication protocol. Values can be none, MD5, or SHA1.
#
# SNMPAuthProto#
sub get_authentication {
   my ($self, %args) = @_;
   return $self->{'authentication'}; 	
}

## @method set_authentication ()
# Sets the given value for 'authentication' property.
# 
# @param authentication  - New value for the field.
# Set the default authentication protocol. Values can be none, MD5, or SHA1.
#
sub set_authentication {
   my ($self, %args) = @_;
   $self->{'authentication'} = $args{'authentication'}; 
   return;	
}

## @method get_communities ()
# Gets the value of 'communities' property.
#
# @retval communities - The current value of the field.
# Set up to ten communities, each of no more than 64 characters long. The format is:
#     community1[,community2,...]. This setting overwrites any previous settings.
#
# List#
sub get_communities {
   my ($self, %args) = @_;
   return $self->{'communities'}; 	
}

## @method set_communities ()
# Sets the given value for 'communities' property.
# 
# @param communities  - New value for the field.
# Set up to ten communities, each of no more than 64 characters long. The format is:
#     community1[,community2,...]. This setting overwrites any previous settings.
#
sub set_communities {
   my ($self, %args) = @_;
   $self->{'communities'} = $args{'communities'}; 
   return;	
}

## @method get_enable ()
# Gets the value of 'enable' property.
#
# @retval enable - The current value of the field.
# Set enable to true/false
#
# boolean#
sub get_enable {
   my ($self, %args) = @_;
   return $self->{'enable'}; 	
}

## @method set_enable ()
# Sets the given value for 'enable' property.
# 
# @param enable  - New value for the field.
# Set enable to true/false
#
sub set_enable {
   my ($self, %args) = @_;
   $self->{'enable'} = $args{'enable'}; 
   return;	
}

## @method get_engineid ()
# Gets the value of 'engineid' property.
#
# @retval engineid - The current value of the field.
# Set SNMPv3 engine ID.
#
# String#
sub get_engineid {
   my ($self, %args) = @_;
   return $self->{'engineid'}; 	
}

## @method set_engineid ()
# Sets the given value for 'engineid' property.
# 
# @param engineid  - New value for the field.
# Set SNMPv3 engine ID.
#
sub set_engineid {
   my ($self, %args) = @_;
   $self->{'engineid'} = $args{'engineid'}; 
   return;	
}

## @method get_loglevel ()
# Gets the value of 'loglevel' property.
#
# @retval loglevel - The current value of the field.
# System Agent syslog logging level: debug|info|warning|error.
#
# String#
sub get_loglevel {
   my ($self, %args) = @_;
   return $self->{'loglevel'}; 	
}

## @method set_loglevel ()
# Sets the given value for 'loglevel' property.
# 
# @param loglevel  - New value for the field.
# System Agent syslog logging level: debug|info|warning|error.
#
sub set_loglevel {
   my ($self, %args) = @_;
   $self->{'loglevel'} = $args{'loglevel'}; 
   return;	
}

## @method get_notraps ()
# Gets the value of 'notraps' property.
#
# @retval notraps - The current value of the field.
# Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the
#     agent. Use &apos;reset&apos; to clear the setting.
#
# List#
sub get_notraps {
   my ($self, %args) = @_;
   return $self->{'notraps'}; 	
}

## @method set_notraps ()
# Sets the given value for 'notraps' property.
# 
# @param notraps  - New value for the field.
# Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the
#     agent. Use &apos;reset&apos; to clear the setting.
#
sub set_notraps {
   my ($self, %args) = @_;
   $self->{'notraps'} = $args{'notraps'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Set up a UDP port which the SNMP agent uses to listen on for polling requests. The
#     default UDP port is 161.
#
# long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# Set up a UDP port which the SNMP agent uses to listen on for polling requests. The
#     default UDP port is 161.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_privacy ()
# Gets the value of 'privacy' property.
#
# @retval privacy - The current value of the field.
# Set the default privacy protocol.
#
# SNMPPrivProto#
sub get_privacy {
   my ($self, %args) = @_;
   return $self->{'privacy'}; 	
}

## @method set_privacy ()
# Sets the given value for 'privacy' property.
# 
# @param privacy  - New value for the field.
# Set the default privacy protocol.
#
sub set_privacy {
   my ($self, %args) = @_;
   $self->{'privacy'} = $args{'privacy'}; 
   return;	
}

## @method get_syscontact ()
# Gets the value of 'syscontact' property.
#
# @retval syscontact - The current value of the field.
# System contact string as presented in sysContact.0. Up to 255 characters long.
#
# String#
sub get_syscontact {
   my ($self, %args) = @_;
   return $self->{'syscontact'}; 	
}

## @method set_syscontact ()
# Sets the given value for 'syscontact' property.
# 
# @param syscontact  - New value for the field.
# System contact string as presented in sysContact.0. Up to 255 characters long.
#
sub set_syscontact {
   my ($self, %args) = @_;
   $self->{'syscontact'} = $args{'syscontact'}; 
   return;	
}

## @method get_syslocation ()
# Gets the value of 'syslocation' property.
#
# @retval syslocation - The current value of the field.
# System location string as presented in sysLocation.0. Up to 255 characters long.
#
# String#
sub get_syslocation {
   my ($self, %args) = @_;
   return $self->{'syslocation'}; 	
}

## @method set_syslocation ()
# Sets the given value for 'syslocation' property.
# 
# @param syslocation  - New value for the field.
# System location string as presented in sysLocation.0. Up to 255 characters long.
#
sub set_syslocation {
   my ($self, %args) = @_;
   $self->{'syslocation'} = $args{'syslocation'}; 
   return;	
}

## @method get_targets ()
# Gets the value of 'targets' property.
#
# @retval targets - The current value of the field.
# Set up to three targets to which to send SNMPv1 traps.
#
# List#
sub get_targets {
   my ($self, %args) = @_;
   return $self->{'targets'}; 	
}

## @method set_targets ()
# Sets the given value for 'targets' property.
# 
# @param targets  - New value for the field.
# Set up to three targets to which to send SNMPv1 traps.
#
sub set_targets {
   my ($self, %args) = @_;
   $self->{'targets'} = $args{'targets'}; 
   return;	
}

## @method get_users ()
# Gets the value of 'users' property.
#
# @retval users - The current value of the field.
# Set up to five local users.
#
# List#
sub get_users {
   my ($self, %args) = @_;
   return $self->{'users'}; 	
}

## @method set_users ()
# Sets the given value for 'users' property.
# 
# @param users  - New value for the field.
# Set up to five local users.
#
sub set_users {
   my ($self, %args) = @_;
   $self->{'users'} = $args{'users'}; 
   return;	
}

## @method get_remoteusers ()
# Gets the value of 'remoteusers' property.
#
# @retval remoteusers - The current value of the field.
# Set up remote users.
#
# List#
sub get_remoteusers {
   my ($self, %args) = @_;
   return $self->{'remoteusers'}; 	
}

## @method set_remoteusers ()
# Sets the given value for 'remoteusers' property.
# 
# @param remoteusers  - New value for the field.
# Set up remote users.
#
sub set_remoteusers {
   my ($self, %args) = @_;
   $self->{'remoteusers'} = $args{'remoteusers'}; 
   return;	
}

## @method get_v3targets ()
# Gets the value of 'v3targets' property.
#
# @retval v3targets - The current value of the field.
# Set up to three SNMPv3 notification targets. Format is:
#     ip-or-hostname[@port]/remote-user/security-level/trap|inform[,...].
#
# List#
sub get_v3targets {
   my ($self, %args) = @_;
   return $self->{'v3targets'}; 	
}

## @method set_v3targets ()
# Sets the given value for 'v3targets' property.
# 
# @param v3targets  - New value for the field.
# Set up to three SNMPv3 notification targets. Format is:
#     ip-or-hostname[@port]/remote-user/security-level/trap|inform[,...].
#
sub set_v3targets {
   my ($self, %args) = @_;
   $self->{'v3targets'} = $args{'v3targets'}; 
   return;	
}

## @method get_pid ()
# Gets the value of 'pid' property.
#
# @retval pid - The current value of the field.
# Set up pid
#
# String#
sub get_pid {
   my ($self, %args) = @_;
   return $self->{'pid'}; 	
}

## @method set_pid ()
# Sets the given value for 'pid' property.
# 
# @param pid  - New value for the field.
# Set up pid
#
sub set_pid {
   my ($self, %args) = @_;
   $self->{'pid'} = $args{'pid'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig``   *class* 
#     Structure to provide up to two secrets to combine with the SNMPv3 engine ID and
#     authentication or privacy protocol to form a localized hash. auth_hash is always
#     required, priv_hash can be empty. By default arguments are paths on the local
#     filesystem, raw_secret takes path to be the actual raw secret. First implementation
#     was in ESXi: esxcli system snmp hash --help

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auth_hash} = $args{'auth_hash'};
   $self->{priv_hash} = $args{'priv_hash'};
   $self->{raw_secret} = $args{'raw_secret'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_hash_config');
   $self->set_binding_field('key' => 'auth_hash', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'priv_hash', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'raw_secret', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_auth_hash ()
# Gets the value of 'auth_hash' property.
#
# @retval auth_hash - The current value of the field.
# Provide filename to secret for authentication hash, use in set --users (required
#     secret)
#
# String#
sub get_auth_hash {
   my ($self, %args) = @_;
   return $self->{'auth_hash'}; 	
}

## @method set_auth_hash ()
# Sets the given value for 'auth_hash' property.
# 
# @param auth_hash  - New value for the field.
# Provide filename to secret for authentication hash, use in set --users (required
#     secret)
#
sub set_auth_hash {
   my ($self, %args) = @_;
   $self->{'auth_hash'} = $args{'auth_hash'}; 
   return;	
}

## @method get_priv_hash ()
# Gets the value of 'priv_hash' property.
#
# @retval priv_hash - The current value of the field.
# Provide filename to secret for privacy hash, use in set --users (secret)
#
# String#
sub get_priv_hash {
   my ($self, %args) = @_;
   return $self->{'priv_hash'}; 	
}

## @method set_priv_hash ()
# Sets the given value for 'priv_hash' property.
# 
# @param priv_hash  - New value for the field.
# Provide filename to secret for privacy hash, use in set --users (secret)
#
sub set_priv_hash {
   my ($self, %args) = @_;
   $self->{'priv_hash'} = $args{'priv_hash'}; 
   return;	
}

## @method get_raw_secret ()
# Gets the value of 'raw_secret' property.
#
# @retval raw_secret - The current value of the field.
# Make --auth_path and --priv_path flags read raw secret from command line instead of
#     file.
#
# boolean#
sub get_raw_secret {
   my ($self, %args) = @_;
   return $self->{'raw_secret'}; 	
}

## @method set_raw_secret ()
# Sets the given value for 'raw_secret' property.
# 
# @param raw_secret  - New value for the field.
# Make --auth_path and --priv_path flags read raw secret from command line instead of
#     file.
#
sub set_raw_secret {
   my ($self, %args) = @_;
   $self->{'raw_secret'} = $args{'raw_secret'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults
#
#
# ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults``   *class* 
#     Structure to provide operators diagnostics test results.

package Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auth_key} = $args{'auth_key'};
   $self->{priv_key} = $args{'priv_key'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_hash_results');
   $self->set_binding_field('key' => 'auth_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'priv_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_auth_key ()
# Gets the value of 'auth_key' property.
#
# @retval auth_key - The current value of the field.
# SNMP authentication key
#
# String#
sub get_auth_key {
   my ($self, %args) = @_;
   return $self->{'auth_key'}; 	
}

## @method set_auth_key ()
# Sets the given value for 'auth_key' property.
# 
# @param auth_key  - New value for the field.
# SNMP authentication key
#
sub set_auth_key {
   my ($self, %args) = @_;
   $self->{'auth_key'} = $args{'auth_key'}; 
   return;	
}

## @method get_priv_key ()
# Gets the value of 'priv_key' property.
#
# @retval priv_key - The current value of the field.
# SNMP privacy key
#
# String#
sub get_priv_key {
   my ($self, %args) = @_;
   return $self->{'priv_key'}; 	
}

## @method set_priv_key ()
# Sets the given value for 'priv_key' property.
# 
# @param priv_key  - New value for the field.
# SNMP privacy key
#
sub set_priv_key {
   my ($self, %args) = @_;
   $self->{'priv_key'} = $args{'priv_key'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Monitoring::Snmp service
#########################################################################################
