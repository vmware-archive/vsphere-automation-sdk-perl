########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ValidationStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Lcm::ValidationStub;

## @class Com::Vmware::Vcenter::Lcm::Validation
#
#The service that provides validation of a section of full deployment
#specification.
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
   # properties for check_appliance_name operation
   #
   my $check_appliance_name_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ApplianceNameRequest'),
      }
   );
   my $check_appliance_name_error_dict = {};

   my $check_appliance_name_input_validator_list = [
   ];
   my $check_appliance_name_output_validator_list = [];

   #
   # properties for check_os_password operation
   #
   my $check_os_password_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::OsPasswordRequest'),
      }
   );
   my $check_os_password_error_dict = {};

   my $check_os_password_input_validator_list = [
   ];
   my $check_os_password_output_validator_list = [];

   #
   # properties for check_network operation
   #
   my $check_network_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::NetworkRequest'),
      }
   );
   my $check_network_error_dict = {};

   my $check_network_input_validator_list = [
   ];
   my $check_network_output_validator_list = [];

   #
   # properties for check_host_config operation
   #
   my $check_host_config_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::HostConfigRequest'),
      }
   );
   my $check_host_config_error_dict = {};

   my $check_host_config_input_validator_list = [
   ];
   my $check_host_config_output_validator_list = [];

   #
   # properties for check_destination_location operation
   #
   my $check_destination_location_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::DestinationLocationRequest'),
      }
   );
   my $check_destination_location_error_dict = {};

   my $check_destination_location_input_validator_list = [
   ];
   my $check_destination_location_output_validator_list = [];

   #
   # properties for check_temporary_network operation
   #
   my $check_temporary_network_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::TemporaryNetworkRequest'),
      }
   );
   my $check_temporary_network_error_dict = {};

   my $check_temporary_network_input_validator_list = [
   ];
   my $check_temporary_network_output_validator_list = [];

   #
   # properties for check_source_vum operation
   #
   my $check_source_vum_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::SourceVumRequest'),
      }
   );
   my $check_source_vum_error_dict = {};

   my $check_source_vum_input_validator_list = [
   ];
   my $check_source_vum_output_validator_list = [];

   #
   # properties for check_upgrade_source_appliance operation
   #
   my $check_upgrade_source_appliance_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::UpgradeSourceApplianceRequest'),
      }
   );
   my $check_upgrade_source_appliance_error_dict = {};

   my $check_upgrade_source_appliance_input_validator_list = [
   ];
   my $check_upgrade_source_appliance_output_validator_list = [];

   #
   # properties for check_migrate_source_appliance operation
   #
   my $check_migrate_source_appliance_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::MigrateSourceApplianceRequest'),
      }
   );
   my $check_migrate_source_appliance_error_dict = {};

   my $check_migrate_source_appliance_input_validator_list = [
   ];
   my $check_migrate_source_appliance_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'check_appliance_name' => {
                'input_type'=> $check_appliance_name_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_appliance_name_error_dict,
                'input_validator_list'=> $check_appliance_name_input_validator_list,
                'output_validator_list'=> $check_appliance_name_output_validator_list,
            },
      'check_os_password' => {
                'input_type'=> $check_os_password_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_os_password_error_dict,
                'input_validator_list'=> $check_os_password_input_validator_list,
                'output_validator_list'=> $check_os_password_output_validator_list,
            },
      'check_network' => {
                'input_type'=> $check_network_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_network_error_dict,
                'input_validator_list'=> $check_network_input_validator_list,
                'output_validator_list'=> $check_network_output_validator_list,
            },
      'check_host_config' => {
                'input_type'=> $check_host_config_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_host_config_error_dict,
                'input_validator_list'=> $check_host_config_input_validator_list,
                'output_validator_list'=> $check_host_config_output_validator_list,
            },
      'check_destination_location' => {
                'input_type'=> $check_destination_location_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_destination_location_error_dict,
                'input_validator_list'=> $check_destination_location_input_validator_list,
                'output_validator_list'=> $check_destination_location_output_validator_list,
            },
      'check_temporary_network' => {
                'input_type'=> $check_temporary_network_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_temporary_network_error_dict,
                'input_validator_list'=> $check_temporary_network_input_validator_list,
                'output_validator_list'=> $check_temporary_network_output_validator_list,
            },
      'check_source_vum' => {
                'input_type'=> $check_source_vum_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_source_vum_error_dict,
                'input_validator_list'=> $check_source_vum_input_validator_list,
                'output_validator_list'=> $check_source_vum_output_validator_list,
            },
      'check_upgrade_source_appliance' => {
                'input_type'=> $check_upgrade_source_appliance_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_upgrade_source_appliance_error_dict,
                'input_validator_list'=> $check_upgrade_source_appliance_input_validator_list,
                'output_validator_list'=> $check_upgrade_source_appliance_output_validator_list,
            },
      'check_migrate_source_appliance' => {
                'input_type'=> $check_migrate_source_appliance_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::BooleanType(),
                'errors'=> $check_migrate_source_appliance_error_dict,
                'input_validator_list'=> $check_migrate_source_appliance_input_validator_list,
                'output_validator_list'=> $check_migrate_source_appliance_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.lcm.validation',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
