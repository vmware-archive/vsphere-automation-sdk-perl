########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ShutdownStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Appliance::Techpreview::ShutdownStub;

## @class Com::Vmware::Appliance::Techpreview::Shutdown
#
#{@name Shutdown} {@term service} provides {@term operations}
#Performs reboot/shutdow operations on appliance.
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
   # properties for cancel operation
   #
   my $cancel_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $cancel_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $cancel_input_validator_list = [
   ];
   my $cancel_output_validator_list = [];

   #
   # properties for poweroff operation
   #
   my $poweroff_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'config' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Shutdown::ShutdownConfig'),
      }
   );
   my $poweroff_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $poweroff_input_validator_list = [
   ];
   my $poweroff_output_validator_list = [];

   #
   # properties for reboot operation
   #
   my $reboot_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'config' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Shutdown::ShutdownConfig'),
      }
   );
   my $reboot_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $reboot_input_validator_list = [
   ];
   my $reboot_output_validator_list = [];

   #
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'cancel' => {
                'input_type'=> $cancel_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $cancel_error_dict,
                'input_validator_list'=> $cancel_input_validator_list,
                'output_validator_list'=> $cancel_output_validator_list,
            },
      'poweroff' => {
                'input_type'=> $poweroff_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $poweroff_error_dict,
                'input_validator_list'=> $poweroff_input_validator_list,
                'output_validator_list'=> $poweroff_output_validator_list,
            },
      'reboot' => {
                'input_type'=> $reboot_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $reboot_error_dict,
                'input_validator_list'=> $reboot_input_validator_list,
                'output_validator_list'=> $reboot_output_validator_list,
            },
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Shutdown::ShutdownGetConfig'),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.appliance.techpreview.shutdown',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
