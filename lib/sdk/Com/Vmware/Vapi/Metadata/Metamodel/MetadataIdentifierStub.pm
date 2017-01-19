########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file MetadataIdentifierStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#


package Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifierStub;

## @class Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier
#
#The {@name MetadataIdentifier} {@term service} provides
#string constants that can be used as identifiers for the metadata
#elements.
#<p>
#Most of the types in {@link com.vmware.vapi.metadata.metamodel} package
#has a metadata field whose type is {@code Map<String, ElementMap>}.
#{@link MetadataIdentifier} contains the identifiers used in the keys of the
#above Map type.
#

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::BlobType;
use Com::Vmware::Vapi::Bindings::Type::BooleanType;
use Com::Vmware::Vapi::Bindings::Type::DateTimeType;
use Com::Vmware::Vapi::Bindings::Type::DoubleType;
use Com::Vmware::Vapi::Bindings::Type::EnumType;
use Com::Vmware::Vapi::Bindings::Type::ErrorType;
use Com::Vmware::Vapi::Bindings::Type::ListType;
use Com::Vmware::Vapi::Bindings::Type::LongType;
use Com::Vmware::Vapi::Bindings::Type::MapType;
use Com::Vmware::Vapi::Bindings::Type::OpaqueType;
use Com::Vmware::Vapi::Bindings::Type::OptionalType;
use Com::Vmware::Vapi::Bindings::Type::ReferenceType;
use Com::Vmware::Vapi::Bindings::Type::SecretType;
use Com::Vmware::Vapi::Bindings::Type::SetType;
use Com::Vmware::Vapi::Bindings::Type::StringType;
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Vapi::Bindings::Type::DynamicStructType;
use Com::Vmware::Vapi::Bindings::Type::URIType;
use Com::Vmware::Vapi::Bindings::Type::VoidType;
use Com::Vmware::Vapi::Data::UnionValidator;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::ApiInterfaceStub);

## @method new
# Constructor to initialize the object
#
# @param ApiProvider - ApiProvider for vAPI stubs
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   my $api_provider = $args {api_provider};
   $class = ref($class) || $class;
      #
   # All the methods (operations) info in a hash
   #
   my $operations = {
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vapi.metadata.metamodel.metadata_identifier',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
