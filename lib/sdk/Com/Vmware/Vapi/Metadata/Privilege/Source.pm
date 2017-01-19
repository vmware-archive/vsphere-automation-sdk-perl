########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Source.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Metadata;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Privilege::Source
# The  ``Com::Vmware::Vapi::Metadata::Privilege::Source``   *interface*  provides 
#     *methods*  to manage the sources of privilege metadata information. <p>
# 
# The interface definition language infrastructure provides tools to generate various
#     kinds of metadata in JSON format from the interface definition files and additional
#     properties files. One of the generated files contains privilege information. The
#     generated file can be registered as a source of metadata. </p>
# 
# <p>
# 
# The privilege file contains all the data present in the interface definition files.
#     Each privilege file contains data about one component element. When a privilege file
#     is added as a source, each source contributes only one component element&apos;s
#     metadata. </p>
# 
# <p>
# 
# Privilege metadata can also be discovered from a remote server that supports the
#     privilege metadata  *interfaces*  (see  :mod:`com.vmware.vapi.metadata.privilege` ).
#     Since multiple components can be registered with a single metadata server, when a
#     remote server is registered as a source, that source can contribute more than one
#     component.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for metadata source.

package Com::Vmware::Vapi::Metadata::Privilege::Source;

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
use Com::Vmware::Vapi::Metadata::Privilege::SourceStub;

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

## @method create ()
# Creates a new metadata source. Once the server validates the registration information of
# the metadata source, the privilege metadata is retrieved from the source. This populates
# elements in all the  *interfaces*  defined in  :mod:`com.vmware.vapi.metadata.privilege`  
# *package* .
#
# @param source_id [REQUIRED] metadata source identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.metadata.privilege.source).
# . The value must be str.
#
# @param spec [REQUIRED] create specification.
# . The value must be Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the metadata source identifier is already registered with the infrastructure.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the type of the source specified in null is invalid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the file specified in null is not a valid JSON file or if the format of the
#     privilege metadata in the JSON file is invalid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the URI specified in null is unreachable or if there is a transport protocol or
#     message protocol mismatch between the client and the server or if the remote server do
#     not have  *interfaces*  present in  :mod:`com.vmware.vapi.metadata.privilege`  
#     *package* .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the file specified in null does not exist.
#

sub create {
   my ($self, %args) = @_;
   my $source_id = $args {source_id};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method delete ()
# Deletes an existing privilege metadata source from the infrastructure.
#
# @param source_id [REQUIRED] Identifier of the metadata source.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.metadata.privilege.source).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the metadata source associated with  ``source_id``  is not found.
#

sub delete {
   my ($self, %args) = @_;
   my $source_id = $args {source_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method get ()
# Retrieves information about the metadata source corresponding to  ``source_id`` .
#
# @param source_id [REQUIRED] Identifier of the metadata source.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.metadata.privilege.source).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Privilege::Source::Info  instance that
#     corresponds to  ``source_id`` 
# The return type will be Com::Vmware::Vapi::Metadata::Privilege::Source::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the metadata source associated with  ``source_id``  is not found.
#

sub get {
   my ($self, %args) = @_;
   my $source_id = $args {source_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Returns the identifiers of the metadata sources currently registered with the
# infrastructure.
#
# @retval 
# The list of identifiers for metadata sources currently registered.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.metadata.privilege.source).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method reload ()
# Reloads the privilege metadata from all the metadata sources or of a particular metadata
# source if  ``source_id``  is specified.
#
# @param source_id [OPTIONAL] Identifier of the metadata source.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.metadata.privilege.source).
# If unspecified, all the metadata sources are reloaded.
# . The value must be str or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the metadata source associated with  ``source_id``  is not found.
#

sub reload {
   my ($self, %args) = @_;
   my $source_id = $args {source_id};

   $self->validate_args (method_name => 'reload',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'reload',
                         method_args => \%args);
}


## @method fingerprint ()
# Returns the aggregate fingerprint of metadata from all the metadata sources or from a
# particular metadata source if  ``source_id``  is specified.
#
# @param source_id [OPTIONAL] Identifier of the metadata source.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.metadata.privilege.source).
# If unspecified, the fingerprint of all the metadata sources is returned.
# . The value must be str or None.
#
# @retval 
# Aggregate fingerprint of all the metadata sources or of a particular metadata source.
# The return type will be String
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the metadata source associated with  ``source_id``  is not found.
#

sub fingerprint {
   my ($self, %args) = @_;
   my $source_id = $args {source_id};

   $self->validate_args (method_name => 'fingerprint',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'fingerprint',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Privilege::Source service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Privilege::Source service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Privilege::Source service
#########################################################################################

## @class Com::Vmware::Vapi::Metadata::Privilege::Source::Info
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::Source::Info``   *class*  contains the
#     metadata source information.

package Com::Vmware::Vapi::Metadata::Privilege::Source::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::Source::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'FILE' => ['filepath'],
               'REMOTE' => ['address'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{type} = $args{'type'};
   $self->{filepath} = $args{'filepath'};
   $self->{address} = $args{'address'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::Source::Info');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.source.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata', 'type_name' => 'SourceType'));
   $self->set_binding_field('key' => 'filepath', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# English language human readable description of the source.
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
# English language human readable description of the source.
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
# Type of the metadata source.
#
# SourceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the metadata source.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_filepath ()
# Gets the value of 'filepath' property.
#
# @retval filepath - The current value of the field.
# Absolute file path of the privilege metadata file that has the privilege information
#     about one component element. The  ``filePath``  is the path to the file in the
#     server&apos;s filesystem.
#
# optional#
sub get_filepath {
   my ($self, %args) = @_;
   return $self->{'filepath'}; 	
}

## @method set_filepath ()
# Sets the given value for 'filepath' property.
# 
# @param filepath  - New value for the field.
# Absolute file path of the privilege metadata file that has the privilege information
#     about one component element. The  ``filePath``  is the path to the file in the
#     server&apos;s filesystem.
#
sub set_filepath {
   my ($self, %args) = @_;
   $self->{'filepath'} = $args{'filepath'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# Connection information for the remote server. This must be in the format
#     http(s)://IP:port/namespace. <p>
# 
# The remote server must support the  *interfaces*  in the 
#     :mod:`com.vmware.vapi.metadata.privilege`   *package* . It must expose privilege
#     information of one or more components.</p>
#
# optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# Connection information for the remote server. This must be in the format
#     http(s)://IP:port/namespace. <p>
# 
# The remote server must support the  *interfaces*  in the 
#     :mod:`com.vmware.vapi.metadata.privilege`   *package* . It must expose privilege
#     information of one or more components.</p>
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec``   *class* 
#     contains the registration information of a privilege source.

package Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'FILE' => ['filepath'],
               'REMOTE' => ['address'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{type} = $args{'type'};
   $self->{filepath} = $args{'filepath'};
   $self->{address} = $args{'address'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::Source::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.source.create_spec');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata', 'type_name' => 'SourceType'));
   $self->set_binding_field('key' => 'filepath', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# English language human readable description of the source.
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
# English language human readable description of the source.
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
# Type of the metadata source.
#
# SourceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the metadata source.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_filepath ()
# Gets the value of 'filepath' property.
#
# @retval filepath - The current value of the field.
# Absolute file path of the metamodel metadata file that has the metamodel information
#     about one component element.
#
# optional#
sub get_filepath {
   my ($self, %args) = @_;
   return $self->{'filepath'}; 	
}

## @method set_filepath ()
# Sets the given value for 'filepath' property.
# 
# @param filepath  - New value for the field.
# Absolute file path of the metamodel metadata file that has the metamodel information
#     about one component element.
#
sub set_filepath {
   my ($self, %args) = @_;
   $self->{'filepath'} = $args{'filepath'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# Connection information of the remote server. This should be of the format
#     http(s)://IP:port/namespace. <p>
# 
# The remote server should contain the  *interfaces*  in 
#     :mod:`com.vmware.vapi.metadata.metamodel`   *package* . It could expose metamodel
#     information of one or more components.</p>
#
# optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# Connection information of the remote server. This should be of the format
#     http(s)://IP:port/namespace. <p>
# 
# The remote server should contain the  *interfaces*  in 
#     :mod:`com.vmware.vapi.metadata.metamodel`   *package* . It could expose metamodel
#     information of one or more components.</p>
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Privilege::Source service
#########################################################################################
