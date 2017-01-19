########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ImageStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Iso::ImageStub;

## @class Com::Vmware::Vcenter::Iso::Image
#
#Provides an interface to mount and unmount an ISO image on a virtual machine.
#<p>
#This is an API that will let its client mount or unmount an ISO image on a
#virtual machine as a CD-ROM.
#</p>
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
   # properties for mount operation
   #
   my $mount_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'library_item' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'vm' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $mount_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),
      'com.vmware.vapi.std.errors.resource_inaccessible' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceInaccessible'),

      };

   my $mount_input_validator_list = [
   ];
   my $mount_output_validator_list = [];

   #
   # properties for unmount operation
   #
   my $unmount_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'vm' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'cdrom' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $unmount_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),

      };

   my $unmount_input_validator_list = [
   ];
   my $unmount_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'mount' => {
                'input_type'=> $mount_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $mount_error_dict,
                'input_validator_list'=> $mount_input_validator_list,
                'output_validator_list'=> $mount_output_validator_list,
            },
      'unmount' => {
                'input_type'=> $unmount_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $unmount_error_dict,
                'input_validator_list'=> $unmount_input_validator_list,
                'output_validator_list'=> $unmount_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.iso.image',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
