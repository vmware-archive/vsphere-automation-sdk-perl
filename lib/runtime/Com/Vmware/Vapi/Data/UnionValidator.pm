########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file Validator.pm
# The file implements interface for UnionValidator.
#

package Com::Vmware::Vapi::Data::UnionValidator;

## @class UnionValidator
# Union Validator class that validates a struct value for union consistency
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.

#
# Core Perl modules
#
use strict;
use warnings;
use Exception::Class;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
    qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Exception::Class;
use Com::Vmware::Vapi::Data::Type;
use Com::Vmware::Vapi::Data::Value::StringValue;
use Com::Vmware::Vapi::Data::Value::ListValue;
use Com::Vmware::Vapi::Data::Value::StructValue;
use Com::Vmware::Vapi::Data::Value::LongValue;
use Com::Vmware::Vapi::Data::Value::BooleanValue;
use Com::Vmware::Vapi::Data::Value::DoubleValue;
use Com::Vmware::Vapi::Data::Value::BlobValue;
use Com::Vmware::Vapi::Data::Value::DateTimeValue;
use Com::Vmware::Vapi::Data::Value::OpaqueValue;
use Com::Vmware::Vapi::Data::Value::VoidValue;
use Com::Vmware::Vapi::Data::Value::OptionalValue;
use Com::Vmware::Vapi::Data::Value::SecretValue;
use Com::Vmware::Vapi::Data::Value::StructureRefValue;
use Com::Vmware::Vapi::Data::Value::URIValue;
use Com::Vmware::Vapi::Data::Value::ErrorValue;
use base qw(Com::Vmware::Vapi::Data::Validator);
use Com::Vmware::Vapi::l10n::Runtime;

# @method new
# Constructor to initialize the UnionValidator object
#
# @param discriminant_name - Name of the structure field that represents the union discriminant
# @param CaseMap Perl dict with string value of the discriminant as key and list of structre fields associated with it as value
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{'discriminant_name'} = $args{'discriminant_name'};
   $self->{'case_map'} = $args{'case_map'};
   bless( $self, $class );
   return ($self);
}

# @method validate
# This method validates a data value
# @param data_value :class:`vmware.vapi.data.value.DataValue`
# @param data_value The struct value that needs to be validated
#
# @param type data_type :class:`vmware.vapi.binding.type.BindingType`
# @param param data_type The Struct binding type
#
# @return rtype: :class:`list` of :class:`vmware.vapi.message.Message` or ``None``
# @return return List of error messages if validation fails or None
#
# @par Side Effects:
# None
#
sub validate {
   my ($self, %args) = @_;
   my $dataValue = $args{'data_value'};
   my $dataType = $args{'data_type'};

   if (!defined($dataValue) || !$dataValue->isa('Com::Vmware::Vapi::Data::Value::StructValue')) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Data.UnionValidator.InvalidParameter',
         args => ['data_value']
      );
      throw InvalidParameter( $msg->str() );
   }
   log_framework(MSG => $self);
   if ( $dataValue->has_field( 'field' => $self->{'discriminant_name'} ) eq 0 ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Data.UnionValidator.InvalidParameter',
         args => ["$self->{'discriminant_name'}"]
      );
      throw InvalidParameter( $msg->str() );
   }

   my $disciminant =
     $dataValue->get_field( 'field' => $self->{'discriminant_name'} );

   my $caseMap = $self->{'case_map'}->{ $disciminant->get_value() };

   foreach my $key ( @{$caseMap} ) {
      my $field = $dataValue->get_field( 'field' => $key );
      if ( !defined $field ) {
         my $structName = $dataValue->get_name();
         my $message_factory =
           Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
         my $msg = $message_factory->get_message(
            id   => 'Com.Vmware.Vapi.Data.UnionValidator.InvalidParameter',
            args => [$key]
         );
         throw InvalidParameter( $msg->str() );
      }
   }
   return;
}

1;
