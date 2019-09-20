########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TokenExchangeStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Tokenservice::TokenExchangeStub;

## @class Com::Vmware::Vcenter::Tokenservice::TokenExchange
#
#The {@name TokenExchange} {@term interface} provides possibility to exchange
#between different tokens types.
#Implementation of "OAuth 2.0 Token Exchange" standard
#(https://tools.ietf.org/html/draft-ietf-oauth-token-exchange-12).
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
   # properties for exchange operation
   #
   my $exchange_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Tokenservice', 'type_name' => 'TokenExchange::ExchangeSpec'),
      }
   );
   my $exchange_error_dict = {
      'com.vmware.vapi.std.errors.invalid_request' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidRequest'),
      'com.vmware.vcenter.tokenservice.invalid_request' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Tokenservice', 'type_name' => 'InvalidRequest'),
      'com.vmware.vcenter.tokenservice.invalid_grant' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Tokenservice', 'type_name' => 'InvalidGrant'),
      'com.vmware.vcenter.tokenservice.invalid_scope' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Tokenservice', 'type_name' => 'InvalidScope'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $exchange_input_validator_list = [
   ];
   my $exchange_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'exchange' => {
                'input_type'=> $exchange_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Tokenservice', 'type_name' => 'TokenExchange::Info'),
                'errors'=> $exchange_error_dict,
                'input_validator_list'=> $exchange_input_validator_list,
                'output_validator_list'=> $exchange_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.tokenservice.token_exchange',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
