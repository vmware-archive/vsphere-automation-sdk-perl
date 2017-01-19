########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file Visitor.pm
# The file implements the visit method for visiting each node of the object.
#
# @copy 2013, VMware Inc.
#

#
# @class Visitor
# Visits each node of the object and dispatch the call to the appropriate method based
# on the type of the input argument
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.
package Com::Vmware::Vapi::Protocol::Common::Json::Visitor;

#
# Core Perl modules
#
use strict;
use warnings;
use List::Util qw/first/;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

# Array of vAPI Data definition and value classes
our @array =
  qw[Com::Vmware::Vapi::Data::Value::StringValue Com::Vmware::Vapi::Data::Value::StructValue Com::Vmware::Vapi::Data::Value::ListValue Com::Vmware::Vapi::Data::Value::LongValue Com::Vmware::Vapi::Data::Value::BooleanValue Com::Vmware::Vapi::Data::Value::DoubleValue Com::Vmware::Vapi::Data::Value::OptionalValue Com::Vmware::Vapi::Data::Value::VoidValue Com::Vmware::Vapi::Data::Definition::StringDefinition Com::Vmware::Vapi::Protocol::Common::Json::JsonApiRequest Com::Vmware::Vapi::Protocol::Common::Json::JsonInvokeRequestParams Com::Vmware::Vapi::Core::ExecutionContext Com::Vmware::Vapi::Core::MethodIdentifier Com::Vmware::Vapi::Core::InterfaceIdentifier];

#
# @method new
# Constructor
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   bless( $self, $class );
   return ($self);
}

#
# @method visit
# Dispatch the call to the appropriate method based
# on the type of the input argument
#
# @param value The object to be used for dispatch
#
sub visit {
   my ( $self, %args ) = @_;
   my @requestObjectType = split( /::/, ref( $args{vapi_data_object} ) );
   my $methodName = "visit_" . lc($requestObjectType[-1]) . "_serializer";
   $self->$methodName( request_object => $args{vapi_data_object} );
   my $outValue = $self->{out_value};
   if ( ref($outValue) eq 'HASH' ) {
      while ( ( my $key, my $value ) = each(%$outValue) ) {
         if ( first { $_ eq ref($value), } @array ) {
            my $visitor =
              new Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor(
               request_object => $value );
            my $serializeData = $value->accept( visitor => $visitor );
            $outValue->{$key} = $serializeData;
         }
         elsif ( ref($value) eq 'ARRAY' ) {
            my $serializedValue = [];
            foreach my $val (@$value) {
               if ( first { $_ eq ref($val), } @array ) {
                  my $visitor =
                    new
                    Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor(
                     request_object => $val );
                  $val = $val->accept( visitor => $visitor );
               }
               push( @{$serializedValue}, $val );
            }
            $outValue->{$key} = $serializedValue;
            return $outValue;
         }
         elsif ( ref($value) eq 'HASH' ) {
            while ( ( my $hashKey, my $hashValue ) = each(%$value) ) {
               if ( first { $_ eq ref($hashValue), } @array ) {
                  my $visitor =
                    new
                    Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor(
                     request_object => $hashValue );
                  my $serializeData = $hashValue->accept( visitor => $visitor );
                  $outValue->{$key}->{$hashKey} = $serializeData;
               }
            }
         }
      }
   }
   return $self->{out_value};
}

1;
