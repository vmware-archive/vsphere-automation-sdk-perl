########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file MetadataIdentifier.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#


## @class Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier``   *interface* 
#     provides string constants that can be used as identifiers for the metadata elements.
#     <p>
# 
# Most of the types in  :mod:`com.vmware.vapi.metadata.metamodel`  package has a
#     metadata field whose type is  ``Map<String, ElementMap>`` .  class
#     Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier  contains the identifiers
#     used in the keys of the above Map type.</p>
#
#
# Constant String::CANONICAL_NAME #
#Identifier representing the CanonicalName metadata.
#
# Constant String::COMPONENT #
#Identifier representing the Component metadata.
#
# Constant String::CREATE #
#Identifier representing the Create metadata.
#
# Constant String::CRUD #
#Identifier representing the Crud metadata.
#
# Constant String::HAS_FIELDS_OF #
#Identifier representing the HasFieldsOf metadata.
#
# Constant String::INCLUDABLE #
#Identifier representing the Includable metadata.
#
# Constant String::INCLUDE #
#Identifier representing the Include metadata.
#
# Constant String::IS_ONE_OF #
#Identifier representing the IsOneOf metadata.
#
# Constant String::MODEL #
#Identifier representing the Model metadata.
#
# Constant String::READ #
#Identifier representing the Read metadata.
#
# Constant String::RESOURCE #
#Identifier representing the Resource metadata.
#
# Constant String::UNION_CASE #
#Identifier representing the UnionCase metadata.
#
# Constant String::UNION_TAG #
#Identifier representing the UnionTag metadata.
#
# Constant String::UPDATE #
#Identifier representing the Update metadata.

package Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier;

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
use Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifierStub;

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

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier service
#########################################################################################
