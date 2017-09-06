########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Update.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::System::Update
# ``Com::Vmware::Appliance::Techpreview::System::Update``   *interface*  provides 
#     *methods*  Performs update repository configuration.
#

package Com::Vmware::Appliance::Techpreview::System::Update;

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
use Com::Vmware::Appliance::Techpreview::System::UpdateStub;

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

## @method set ()
# Set update repository configuration.
#
# @param config [REQUIRED] update related configuration
# . The value must be Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet.
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


## @method get ()
# Get update repository configuration.
#
# @retval 
# update related configuration
# The return type will be
# Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::System::Update service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification
#
# ``Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification``  
#     *enumerated type*  Defines state for automatic update notification
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification::DISABLED #
#Automatic update notification is disabled. Disable periodically query the configured url
# for updates.
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification::ENABLED #
#Automatic update notification is enabled. Enable periodically query the configured url for
# updates.

package Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification;

use constant {
    disabled =>  'disabled',
    enabled =>  'enabled',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.system.update.auto_update_notification',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::System::Update::AutoUpdateNotification');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay
#
# ``Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay``   *enumerated type*
#      Defines days to query for updates
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::MONDAY #
#query for updates on Monday
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::TUESDAY #
#query for updates on Tuesday
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::FRIDAY #
#query for updates on Friday
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::WEDNESDAY #
#query for updates on Wednesday
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::THURSDAY #
#query for updates on Thursday
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::SATURDAY #
#query for updates on Saturday
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::SUNDAY #
#query for updates on Sunday
#
# Constant Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay::EVERYDAY #
#query for updates everyday

package Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay;

use constant {
    Monday =>  'Monday',
    Tuesday =>  'Tuesday',
    Friday =>  'Friday',
    Wednesday =>  'Wednesday',
    Thursday =>  'Thursday',
    Saturday =>  'Saturday',
    Sunday =>  'Sunday',
    Everyday =>  'Everyday',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.system.update.update_day',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::System::Update::UpdateDay');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::System::Update service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::System::Update service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet
#
#
# ``Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet``   *class* 
#     Structure to set url update repository.

package Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{current_URL} = $args{'current_URL'};
   $self->{check_updates} = $args{'check_updates'};
   $self->{time} = $args{'time'};
   $self->{day} = $args{'day'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructSet');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.system.update.update_struct_set');
   $self->set_binding_field('key' => 'current_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'check_updates', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::System', 'type_name' => 'Update::AutoUpdateNotification'));
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'day', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::System', 'type_name' => 'Update::UpdateDay'));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_current_URL ()
# Gets the value of 'current_URL' property.
#
# @retval current_URL - The current value of the field.
# Current appliance update repository URL. Enter &quot;default&quot; to reset the url to
#     the default url.
#
# String#
sub get_current_URL {
   my ($self, %args) = @_;
   return $self->{'current_URL'}; 	
}

## @method set_current_URL ()
# Sets the given value for 'current_URL' property.
# 
# @param current_URL  - New value for the field.
# Current appliance update repository URL. Enter &quot;default&quot; to reset the url to
#     the default url.
#
sub set_current_URL {
   my ($self, %args) = @_;
   $self->{'current_URL'} = $args{'current_URL'}; 
   return;	
}

## @method get_check_updates ()
# Gets the value of 'check_updates' property.
#
# @retval check_updates - The current value of the field.
# Check for update at the pre-configured repository URL.
#
# AutoUpdateNotification#
sub get_check_updates {
   my ($self, %args) = @_;
   return $self->{'check_updates'}; 	
}

## @method set_check_updates ()
# Sets the given value for 'check_updates' property.
# 
# @param check_updates  - New value for the field.
# Check for update at the pre-configured repository URL.
#
sub set_check_updates {
   my ($self, %args) = @_;
   $self->{'check_updates'} = $args{'check_updates'}; 
   return;	
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
#
# String#
sub get_time {
   my ($self, %args) = @_;
   return $self->{'time'}; 	
}

## @method set_time ()
# Sets the given value for 'time' property.
# 
# @param time  - New value for the field.
# time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
#
sub set_time {
   my ($self, %args) = @_;
   $self->{'time'} = $args{'time'}; 
   return;	
}

## @method get_day ()
# Gets the value of 'day' property.
#
# @retval day - The current value of the field.
# day to query for updates
#
# UpdateDay#
sub get_day {
   my ($self, %args) = @_;
   return $self->{'day'}; 	
}

## @method set_day ()
# Sets the given value for 'day' property.
# 
# @param day  - New value for the field.
# day to query for updates
#
sub set_day {
   my ($self, %args) = @_;
   $self->{'day'} = $args{'day'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# username for the url update repository
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
# username for the url update repository
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# password for the url update repository
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# password for the url update repository
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet
#
#
# ``Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet``   *class* 
#     Structure to get url update repository.

package Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{current_URL} = $args{'current_URL'};
   $self->{default_URL} = $args{'default_URL'};
   $self->{check_updates} = $args{'check_updates'};
   $self->{time} = $args{'time'};
   $self->{day} = $args{'day'};
   $self->{latest_update_install_time} = $args{'latest_update_install_time'};
   $self->{latest_update_query_time} = $args{'latest_update_query_time'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::System::Update::UpdateStructGet');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.system.update.update_struct_get');
   $self->set_binding_field('key' => 'current_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'default_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'check_updates', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::System', 'type_name' => 'Update::AutoUpdateNotification'));
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'day', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::System', 'type_name' => 'Update::UpdateDay'));
   $self->set_binding_field('key' => 'latest_update_install_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'latest_update_query_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_current_URL ()
# Gets the value of 'current_URL' property.
#
# @retval current_URL - The current value of the field.
# Current appliance update repository URL.
#
# String#
sub get_current_URL {
   my ($self, %args) = @_;
   return $self->{'current_URL'}; 	
}

## @method set_current_URL ()
# Sets the given value for 'current_URL' property.
# 
# @param current_URL  - New value for the field.
# Current appliance update repository URL.
#
sub set_current_URL {
   my ($self, %args) = @_;
   $self->{'current_URL'} = $args{'current_URL'}; 
   return;	
}

## @method get_default_URL ()
# Gets the value of 'default_URL' property.
#
# @retval default_URL - The current value of the field.
# Default appliance update repository URL.
#
# String#
sub get_default_URL {
   my ($self, %args) = @_;
   return $self->{'default_URL'}; 	
}

## @method set_default_URL ()
# Sets the given value for 'default_URL' property.
# 
# @param default_URL  - New value for the field.
# Default appliance update repository URL.
#
sub set_default_URL {
   my ($self, %args) = @_;
   $self->{'default_URL'} = $args{'default_URL'}; 
   return;	
}

## @method get_check_updates ()
# Gets the value of 'check_updates' property.
#
# @retval check_updates - The current value of the field.
# Check for update at the pre-configured repository URL.
#
# AutoUpdateNotification#
sub get_check_updates {
   my ($self, %args) = @_;
   return $self->{'check_updates'}; 	
}

## @method set_check_updates ()
# Sets the given value for 'check_updates' property.
# 
# @param check_updates  - New value for the field.
# Check for update at the pre-configured repository URL.
#
sub set_check_updates {
   my ($self, %args) = @_;
   $self->{'check_updates'} = $args{'check_updates'}; 
   return;	
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
#
# String#
sub get_time {
   my ($self, %args) = @_;
   return $self->{'time'}; 	
}

## @method set_time ()
# Sets the given value for 'time' property.
# 
# @param time  - New value for the field.
# time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
#
sub set_time {
   my ($self, %args) = @_;
   $self->{'time'} = $args{'time'}; 
   return;	
}

## @method get_day ()
# Gets the value of 'day' property.
#
# @retval day - The current value of the field.
# day to query for updates
#
# UpdateDay#
sub get_day {
   my ($self, %args) = @_;
   return $self->{'day'}; 	
}

## @method set_day ()
# Sets the given value for 'day' property.
# 
# @param day  - New value for the field.
# day to query for updates
#
sub set_day {
   my ($self, %args) = @_;
   $self->{'day'} = $args{'day'}; 
   return;	
}

## @method get_latest_update_install_time ()
# Gets the value of 'latest_update_install_time' property.
#
# @retval latest_update_install_time - The current value of the field.
# timestamp of latest update installation
#
# String#
sub get_latest_update_install_time {
   my ($self, %args) = @_;
   return $self->{'latest_update_install_time'}; 	
}

## @method set_latest_update_install_time ()
# Sets the given value for 'latest_update_install_time' property.
# 
# @param latest_update_install_time  - New value for the field.
# timestamp of latest update installation
#
sub set_latest_update_install_time {
   my ($self, %args) = @_;
   $self->{'latest_update_install_time'} = $args{'latest_update_install_time'}; 
   return;	
}

## @method get_latest_update_query_time ()
# Gets the value of 'latest_update_query_time' property.
#
# @retval latest_update_query_time - The current value of the field.
# timestamp of latest query to update repository
#
# String#
sub get_latest_update_query_time {
   my ($self, %args) = @_;
   return $self->{'latest_update_query_time'}; 	
}

## @method set_latest_update_query_time ()
# Sets the given value for 'latest_update_query_time' property.
# 
# @param latest_update_query_time  - New value for the field.
# timestamp of latest query to update repository
#
sub set_latest_update_query_time {
   my ($self, %args) = @_;
   $self->{'latest_update_query_time'} = $args{'latest_update_query_time'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# username for the url update repository
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
# username for the url update repository
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# password for the url update repository
#
# String#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# password for the url update repository
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::System::Update service
#########################################################################################
