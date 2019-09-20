########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file RecommendationStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Lcm::RecommendationStub;

## @class Com::Vmware::Vcenter::Lcm::Recommendation
#
#The service that provide recommendation.
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
   # properties for scan_migrate_deployment_size operation
   #
   my $scan_migrate_deployment_size_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::MigrateDeploymentSizeRequest'),
      }
   );
   my $scan_migrate_deployment_size_error_dict = {};

   my $scan_migrate_deployment_size_input_validator_list = [
   ];
   my $scan_migrate_deployment_size_output_validator_list = [];

   #
   # properties for scan_datastore operation
   #
   my $scan_datastore_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DatastoreRequest'),
      }
   );
   my $scan_datastore_error_dict = {};

   my $scan_datastore_input_validator_list = [
   ];
   my $scan_datastore_output_validator_list = [];

   #
   # properties for scan_upgrade_deployment_size operation
   #
   my $scan_upgrade_deployment_size_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::UpgradeDeploymentSizeRequest'),
      }
   );
   my $scan_upgrade_deployment_size_error_dict = {};

   my $scan_upgrade_deployment_size_input_validator_list = [
   ];
   my $scan_upgrade_deployment_size_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'scan_migrate_deployment_size' => {
                'input_type'=> $scan_migrate_deployment_size_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())}))),
                'errors'=> $scan_migrate_deployment_size_error_dict,
                'input_validator_list'=> $scan_migrate_deployment_size_input_validator_list,
                'output_validator_list'=> $scan_migrate_deployment_size_output_validator_list,
            },
      'scan_datastore' => {
                'input_type'=> $scan_datastore_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DatastoreInfo')}))),
                'errors'=> $scan_datastore_error_dict,
                'input_validator_list'=> $scan_datastore_input_validator_list,
                'output_validator_list'=> $scan_datastore_output_validator_list,
            },
      'scan_upgrade_deployment_size' => {
                'input_type'=> $scan_upgrade_deployment_size_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())}))),
                'errors'=> $scan_upgrade_deployment_size_error_dict,
                'input_validator_list'=> $scan_upgrade_deployment_size_input_validator_list,
                'output_validator_list'=> $scan_upgrade_deployment_size_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.lcm.recommendation',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
