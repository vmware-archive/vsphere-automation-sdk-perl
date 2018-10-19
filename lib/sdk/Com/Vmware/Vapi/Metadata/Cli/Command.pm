########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Command.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Cli::Command
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command``   *interface*  provides  *methods* 
#     to get information about command line interface (CLI) commands.
#

package Com::Vmware::Vapi::Metadata::Cli::Command;

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
use Com::Vmware::Vapi::Metadata::Cli::CommandStub;

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

## @method list ()
# Returns the identifiers of all commands, or commands in a specific namespace.
#
# @param path [OPTIONAL] The dot-separated path of the namespace for which command identifiers should be
#     returned.
# If  *null*  identifiers of all commands registered with the infrastructure will be
#     returned.
# . The value must be String or None.
#
# @retval 
# Identifiers of the requested commands.
# The return type will be Array of Com::Vmware::Vapi::Metadata::Cli::Command::Identity
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a namespace corresponding to  ``path``  doesn&apos;t exist.
#

sub list {
   my ($self, %args) = @_;
   my $path = $args {path};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method get ()
# Retrieves information about a command including information about how to execute that
# command.
#
# @param identity [REQUIRED] Identifier of the command for which to retreive information.
# . The value must be Com::Vmware::Vapi::Metadata::Cli::Command::Identity.
#
# @retval 
# Information about the command including information about how to execute that command.
# The return type will be Com::Vmware::Vapi::Metadata::Cli::Command::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a command corresponding to  ``identity``  doesn&apos;t exist.
#

sub get {
   my ($self, %args) = @_;
   my $identity = $args {identity};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method fingerprint ()
# Returns the aggregate fingerprint of all the command metadata from all the metadata
# sources. <p>
# 
# The fingerprint provides clients an efficient way to check if the metadata for commands
# has been modified on the server.</p>
#
# @retval 
# Fingerprint of all the command metadata present on the server.
# The return type will be String
#

sub fingerprint {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'fingerprint', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Cli::Command service
#########################################################################################

## @class Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType``   *enumerated type* 
#     defines supported CLI output formatter types. See 
#     :attr:`Com::Vmware::Vapi::Metadata::Cli::Command::Info.formatter` .
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType::SIMPLE #
#Displays command output as it is.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType::TABLE #
#Displays command output in table format.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType::JSON #
#Displays command output in JSON format.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType::XML #
#Displays command output in XML format.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType::CSV #
#Displays command output in CSV format.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType::HTML #
#Displays command output in HTML format.

package Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType;

use constant {
    SIMPLE =>  'SIMPLE',
    TABLE =>  'TABLE',
    JSON =>  'JSON',
    XML =>  'XML',
    CSV =>  'CSV',
    HTML =>  'HTML',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.cli.command.formatter_type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Command::FormatterType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vapi::Metadata::Cli::Command::GenericType
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command::GenericType``   *enumerated type* 
#     defines generic types supported by  ``Com::Vmware::Vapi::Metadata::Cli::Command``  
#     *interface* . See 
#     :attr:`Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo.generic` .
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::GenericType::NONE #
#Default case.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::GenericType::OPTIONAL #
#Input parameter is an optional.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::GenericType::LIST #
#Input parameter is a list.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::GenericType::OPTIONAL_LIST #
#Input parameter is an optional of type list. This  *constant*  was added in vSphere API
# 6.5.
#
# Constant Com::Vmware::Vapi::Metadata::Cli::Command::GenericType::LIST_OPTIONAL #
#Input parameter is a list of optionals. This  *constant*  was added in vSphere API 6.5.

package Com::Vmware::Vapi::Metadata::Cli::Command::GenericType;

use constant {
    NONE =>  'NONE',
    OPTIONAL =>  'OPTIONAL',
    LIST =>  'LIST',
    OPTIONAL_LIST =>  'OPTIONAL_LIST',
    LIST_OPTIONAL =>  'LIST_OPTIONAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Command::GenericType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.cli.command.generic_type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Command::GenericType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Cli::Command service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Cli::Command service
#########################################################################################

## @class Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo``   *class* 
#     describes the name used by the CLI to display a single  *field*  of a  *class* 
#     element in the interface definition language.

package Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{field_name} = $args{'field_name'};
   $self->{display_name} = $args{'display_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Command::OutputFieldInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.command.output_field_info');
   $self->set_binding_field('key' => 'field_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_field_name ()
# Gets the value of 'field_name' property.
#
# @retval field_name - The current value of the field.
# Name of the  *field* .
#
# String#
sub get_field_name {
   my ($self, %args) = @_;
   return $self->{'field_name'}; 	
}

## @method set_field_name ()
# Sets the given value for 'field_name' property.
# 
# @param field_name  - New value for the field.
# Name of the  *field* .
#
sub set_field_name {
   my ($self, %args) = @_;
   $self->{'field_name'} = $args{'field_name'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Name used by the CLI to display the  *field* .
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
# Name used by the CLI to display the  *field* .
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo``   *class*  describes
#     the names used by the CLI to display the  *fields*  of a  *class*  element in the
#     interface definition language as well as the order in which the  *fields*  will be
#     displayed.

package Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{structure_id} = $args{'structure_id'};
   $self->{output_fields} = $args{'output_fields'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Command::OutputInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.command.output_info');
   $self->set_binding_field('key' => 'structure_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'output_fields', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Command::OutputFieldInfo')));
   bless $self, $class;
   return $self;
}

## @method get_structure_id ()
# Gets the value of 'structure_id' property.
#
# @retval structure_id - The current value of the field.
# Name of the  *class* .
#
# ID#
sub get_structure_id {
   my ($self, %args) = @_;
   return $self->{'structure_id'}; 	
}

## @method set_structure_id ()
# Sets the given value for 'structure_id' property.
# 
# @param structure_id  - New value for the field.
# Name of the  *class* .
#
sub set_structure_id {
   my ($self, %args) = @_;
   $self->{'structure_id'} = $args{'structure_id'}; 
   return;	
}

## @method get_output_fields ()
# Gets the value of 'output_fields' property.
#
# @retval output_fields - The current value of the field.
# The order in which the  *fields*  of the  *class*  will be displayed by the CLI as
#     well as the names used to display the  *fields* .
#
# List#
sub get_output_fields {
   my ($self, %args) = @_;
   return $self->{'output_fields'}; 	
}

## @method set_output_fields ()
# Sets the given value for 'output_fields' property.
# 
# @param output_fields  - New value for the field.
# The order in which the  *fields*  of the  *class*  will be displayed by the CLI as
#     well as the names used to display the  *fields* .
#
sub set_output_fields {
   my ($self, %args) = @_;
   $self->{'output_fields'} = $args{'output_fields'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo``   *class*  describes
#     information about a specific input option of a command.

package Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{long_option} = $args{'long_option'};
   $self->{short_option} = $args{'short_option'};
   $self->{field_name} = $args{'field_name'};
   $self->{description} = $args{'description'};
   $self->{type} = $args{'type'};
   $self->{generic} = $args{'generic'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Command::OptionInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.command.option_info');
   $self->set_binding_field('key' => 'long_option', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'short_option', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'field_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'generic', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Command::GenericType'));
   bless $self, $class;
   return $self;
}

## @method get_long_option ()
# Gets the value of 'long_option' property.
#
# @retval long_option - The current value of the field.
# The long option name of the parameter as used by the user.
#
# String#
sub get_long_option {
   my ($self, %args) = @_;
   return $self->{'long_option'}; 	
}

## @method set_long_option ()
# Sets the given value for 'long_option' property.
# 
# @param long_option  - New value for the field.
# The long option name of the parameter as used by the user.
#
sub set_long_option {
   my ($self, %args) = @_;
   $self->{'long_option'} = $args{'long_option'}; 
   return;	
}

## @method get_short_option ()
# Gets the value of 'short_option' property.
#
# @retval short_option - The current value of the field.
# The single character value option name.
#
# Optional#
sub get_short_option {
   my ($self, %args) = @_;
   return $self->{'short_option'}; 	
}

## @method set_short_option ()
# Sets the given value for 'short_option' property.
# 
# @param short_option  - New value for the field.
# The single character value option name.
#
sub set_short_option {
   my ($self, %args) = @_;
   $self->{'short_option'} = $args{'short_option'}; 
   return;	
}

## @method get_field_name ()
# Gets the value of 'field_name' property.
#
# @retval field_name - The current value of the field.
# The fully qualified name of the option referred to by the operation element in 
#     :attr:`Com::Vmware::Vapi::Metadata::Cli::Command::Info.operation_id` .
#
# String#
sub get_field_name {
   my ($self, %args) = @_;
   return $self->{'field_name'}; 	
}

## @method set_field_name ()
# Sets the given value for 'field_name' property.
# 
# @param field_name  - New value for the field.
# The fully qualified name of the option referred to by the operation element in 
#     :attr:`Com::Vmware::Vapi::Metadata::Cli::Command::Info.operation_id` .
#
sub set_field_name {
   my ($self, %args) = @_;
   $self->{'field_name'} = $args{'field_name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# The description of the option to be displayed to the user when they request usage
#     information for a CLI command.
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
# The description of the option to be displayed to the user when they request usage
#     information for a CLI command.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of option. This is used to display information about what kind of data is
#     expected (string, number, boolean, etc.) for the option when they request usage
#     information for a CLI command. For  *enumerated type*  this stores the fully qualified
#      *enumerated type*  id.
#
# String#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of option. This is used to display information about what kind of data is
#     expected (string, number, boolean, etc.) for the option when they request usage
#     information for a CLI command. For  *enumerated type*  this stores the fully qualified
#      *enumerated type*  id.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_generic ()
# Gets the value of 'generic' property.
#
# @retval generic - The current value of the field.
# This is used to tell the user whether the option is required or optional, or whether
#     they can specify the option multiple times.
#
# GenericType#
sub get_generic {
   my ($self, %args) = @_;
   return $self->{'generic'}; 	
}

## @method set_generic ()
# Sets the given value for 'generic' property.
# 
# @param generic  - New value for the field.
# This is used to tell the user whether the option is required or optional, or whether
#     they can specify the option multiple times.
#
sub set_generic {
   my ($self, %args) = @_;
   $self->{'generic'} = $args{'generic'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Cli::Command::Identity
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command::Identity``   *class*  uniquely
#     identifies a command in the CLI commands tree.

package Com::Vmware::Vapi::Metadata::Cli::Command::Identity;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Command::Identity structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{path} = $args{'path'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Command::Identity');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.command.identity');
   $self->set_binding_field('key' => 'path', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_path ()
# Gets the value of 'path' property.
#
# @retval path - The current value of the field.
# The dot-separated path of the namespace containing the command in the CLI command
#     tree.
#
# String#
sub get_path {
   my ($self, %args) = @_;
   return $self->{'path'}; 	
}

## @method set_path ()
# Sets the given value for 'path' property.
# 
# @param path  - New value for the field.
# The dot-separated path of the namespace containing the command in the CLI command
#     tree.
#
sub set_path {
   my ($self, %args) = @_;
   $self->{'path'} = $args{'path'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the command.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the command.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Cli::Command::Info
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Command::Info``   *class*  contains
#     information about a command. It includes the identity of the command, a description,
#     information about the  *interface*  and  *method*  that implement the command, and
#     CLI-specific information for the command.

package Com::Vmware::Vapi::Metadata::Cli::Command::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Command::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{identity} = $args{'identity'};
   $self->{description} = $args{'description'};
   $self->{service_id} = $args{'service_id'};
   $self->{operation_id} = $args{'operation_id'};
   $self->{options} = $args{'options'};
   $self->{formatter} = $args{'formatter'};
   $self->{output_field_list} = $args{'output_field_list'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Command::Info');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.command.info');
   $self->set_binding_field('key' => 'identity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Command::Identity'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'service_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'operation_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'options', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Command::OptionInfo')));
   $self->set_binding_field('key' => 'formatter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Command::FormatterType')));
   $self->set_binding_field('key' => 'output_field_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Command::OutputInfo')));
   bless $self, $class;
   return $self;
}

## @method get_identity ()
# Gets the value of 'identity' property.
#
# @retval identity - The current value of the field.
# Basic command identity.
#
# Identity#
sub get_identity {
   my ($self, %args) = @_;
   return $self->{'identity'}; 	
}

## @method set_identity ()
# Sets the given value for 'identity' property.
# 
# @param identity  - New value for the field.
# Basic command identity.
#
sub set_identity {
   my ($self, %args) = @_;
   $self->{'identity'} = $args{'identity'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# The text description displayed to the user in help output.
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
# The text description displayed to the user in help output.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_service_id ()
# Gets the value of 'service_id' property.
#
# @retval service_id - The current value of the field.
# The service identifier that contains the operations for this CLI command.
#
# ID#
sub get_service_id {
   my ($self, %args) = @_;
   return $self->{'service_id'}; 	
}

## @method set_service_id ()
# Sets the given value for 'service_id' property.
# 
# @param service_id  - New value for the field.
# The service identifier that contains the operations for this CLI command.
#
sub set_service_id {
   my ($self, %args) = @_;
   $self->{'service_id'} = $args{'service_id'}; 
   return;	
}

## @method get_operation_id ()
# Gets the value of 'operation_id' property.
#
# @retval operation_id - The current value of the field.
# The operation identifier corresponding to this CLI command.
#
# ID#
sub get_operation_id {
   my ($self, %args) = @_;
   return $self->{'operation_id'}; 	
}

## @method set_operation_id ()
# Sets the given value for 'operation_id' property.
# 
# @param operation_id  - New value for the field.
# The operation identifier corresponding to this CLI command.
#
sub set_operation_id {
   my ($self, %args) = @_;
   $self->{'operation_id'} = $args{'operation_id'}; 
   return;	
}

## @method get_options ()
# Gets the value of 'options' property.
#
# @retval options - The current value of the field.
# The input for this command.
#
# List#
sub get_options {
   my ($self, %args) = @_;
   return $self->{'options'}; 	
}

## @method set_options ()
# Sets the given value for 'options' property.
# 
# @param options  - New value for the field.
# The input for this command.
#
sub set_options {
   my ($self, %args) = @_;
   $self->{'options'} = $args{'options'}; 
   return;	
}

## @method get_formatter ()
# Gets the value of 'formatter' property.
#
# @retval formatter - The current value of the field.
# The formatter to use when displaying the output of this command.
#
# Optional#
sub get_formatter {
   my ($self, %args) = @_;
   return $self->{'formatter'}; 	
}

## @method set_formatter ()
# Sets the given value for 'formatter' property.
# 
# @param formatter  - New value for the field.
# The formatter to use when displaying the output of this command.
#
sub set_formatter {
   my ($self, %args) = @_;
   $self->{'formatter'} = $args{'formatter'}; 
   return;	
}

## @method get_output_field_list ()
# Gets the value of 'output_field_list' property.
#
# @retval output_field_list - The current value of the field.
# List of output structure name and output field info.
#
# List#
sub get_output_field_list {
   my ($self, %args) = @_;
   return $self->{'output_field_list'}; 	
}

## @method set_output_field_list ()
# Sets the given value for 'output_field_list' property.
# 
# @param output_field_list  - New value for the field.
# List of output structure name and output field info.
#
sub set_output_field_list {
   my ($self, %args) = @_;
   $self->{'output_field_list'} = $args{'output_field_list'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Cli::Command service
#########################################################################################
