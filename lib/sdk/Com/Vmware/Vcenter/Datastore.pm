########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Datastore.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Datastore
# The  *Datastore*   *interface*  provides  *methods*  for manipulating a datastore.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the vCenter datastore

package Com::Vmware::Vcenter::Datastore;

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
use Com::Vmware::Vcenter::DatastoreStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.datastore';


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

## @method get ()
# Retrieves information about the datastore indicated by  ``datastore`` .
#
# @param datastore [REQUIRED] Identifier of the datastore for which information should be retrieved.
# The value must be an identifier for the resource type getQualifiedName(Datastore).
# . The value must be str.
#
# @retval 
# information about the datastore.
# The return type will be Com::Vmware::Vcenter::Datastore::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the datastore indicated by  ``datastore``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
sub get {
   my ($self, %args) = @_;
   my $datastore = $args {datastore};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns information about at most 2500 visible (subject to permission checks) datastores
# in vCenter matching the  class Com::Vmware::Vcenter::Datastore::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching datastores for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Datastore::FilterSpec  with all  *fields*   *null*  which means
#     all datastores match the filter.
# . The value must be Com::Vmware::Vcenter::Datastore::FilterSpec or None.
#
# @retval 
# Commonly used information about the datastores matching the  class
#     Com::Vmware::Vcenter::Datastore::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Datastore::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Datastore::FilterSpec.types`   *field*  contains
#     a value that is not supported by the server.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Datastore::FilterSpec.types`   *field*  contains
#     a value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 2500 datastores match the  class
#     Com::Vmware::Vcenter::Datastore::FilterSpec .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Datastore service
#########################################################################################

## @class Com::Vmware::Vcenter::Datastore::Type
#
# The  ``Com::Vmware::Vcenter::Datastore::Type``   *enumerated type*  defines the
#     supported types of vCenter datastores.
#
#
#
# Constant Com::Vmware::Vcenter::Datastore::Type::VMFS #
#VMware File System (ESX Server only).
#
# Constant Com::Vmware::Vcenter::Datastore::Type::NFS #
#Network file system v3 (linux &amp; esx servers only).
#
# Constant Com::Vmware::Vcenter::Datastore::Type::NF_S41 #
#Network file system v4.1 (linux &amp; esx servers only).
#
# Constant Com::Vmware::Vcenter::Datastore::Type::CIFS #
#Common Internet File System.
#
# Constant Com::Vmware::Vcenter::Datastore::Type::VSAN #
#Virtual SAN (ESX Server only).
#
# Constant Com::Vmware::Vcenter::Datastore::Type::VFFS #
#Flash Read Cache (ESX Server only).
#
# Constant Com::Vmware::Vcenter::Datastore::Type::VVOL #
#vSphere Virtual Volume (ESX Server only).

package Com::Vmware::Vcenter::Datastore::Type;

use constant {
    VMFS =>  'VMFS',
    NFS =>  'NFS',
    NFS41 =>  'NFS41',
    CIFS =>  'CIFS',
    VSAN =>  'VSAN',
    VFFS =>  'VFFS',
    VVOL =>  'VVOL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datastore::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.datastore.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Datastore::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Datastore service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Datastore service
#########################################################################################

## @class Com::Vmware::Vcenter::Datastore::Info
#
#
# The  ``Com::Vmware::Vcenter::Datastore::Info``   *class*  contains information about a
#     datastore.

package Com::Vmware::Vcenter::Datastore::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datastore::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{type} = $args{'type'};
   $self->{accessible} = $args{'accessible'};
   $self->{free_space} = $args{'free_space'};
   $self->{multiple_host_access} = $args{'multiple_host_access'};
   $self->{thin_provisioning_supported} = $args{'thin_provisioning_supported'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Datastore::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.datastore.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Datastore::Type'));
   $self->set_binding_field('key' => 'accessible', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'free_space', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'multiple_host_access', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'thin_provisioning_supported', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the datastore.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the datastore.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type (VMFS, NFS, NFS41, CIFS, VSAN, VFFS, VVOL) of the datastore.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type (VMFS, NFS, NFS41, CIFS, VSAN, VFFS, VVOL) of the datastore.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_accessible ()
# Gets the value of 'accessible' property.
#
# @retval accessible - The current value of the field.
# Whether or not this datastore is accessible.
#
# boolean#
sub get_accessible {
   my ($self, %args) = @_;
   return $self->{'accessible'}; 	
}

## @method set_accessible ()
# Sets the given value for 'accessible' property.
# 
# @param accessible  - New value for the field.
# Whether or not this datastore is accessible.
#
sub set_accessible {
   my ($self, %args) = @_;
   $self->{'accessible'} = $args{'accessible'}; 
   return;	
}

## @method get_free_space ()
# Gets the value of 'free_space' property.
#
# @retval free_space - The current value of the field.
# Available space of this datastore, in bytes. <p>
# 
#  The server periodically updates this value.</p>
#
# Optional#
sub get_free_space {
   my ($self, %args) = @_;
   return $self->{'free_space'}; 	
}

## @method set_free_space ()
# Sets the given value for 'free_space' property.
# 
# @param free_space  - New value for the field.
# Available space of this datastore, in bytes. <p>
# 
#  The server periodically updates this value.</p>
#
sub set_free_space {
   my ($self, %args) = @_;
   $self->{'free_space'} = $args{'free_space'}; 
   return;	
}

## @method get_multiple_host_access ()
# Gets the value of 'multiple_host_access' property.
#
# @retval multiple_host_access - The current value of the field.
# Whether or not ore than one host in the datacenter has been configured with access to
#     the datastore.
#
# boolean#
sub get_multiple_host_access {
   my ($self, %args) = @_;
   return $self->{'multiple_host_access'}; 	
}

## @method set_multiple_host_access ()
# Sets the given value for 'multiple_host_access' property.
# 
# @param multiple_host_access  - New value for the field.
# Whether or not ore than one host in the datacenter has been configured with access to
#     the datastore.
#
sub set_multiple_host_access {
   my ($self, %args) = @_;
   $self->{'multiple_host_access'} = $args{'multiple_host_access'}; 
   return;	
}

## @method get_thin_provisioning_supported ()
# Gets the value of 'thin_provisioning_supported' property.
#
# @retval thin_provisioning_supported - The current value of the field.
# Whether or not the datastore supports thin provisioning on a per file basis. When thin
#     provisioning is used, backing storage is lazily allocated.
#
# boolean#
sub get_thin_provisioning_supported {
   my ($self, %args) = @_;
   return $self->{'thin_provisioning_supported'}; 	
}

## @method set_thin_provisioning_supported ()
# Sets the given value for 'thin_provisioning_supported' property.
# 
# @param thin_provisioning_supported  - New value for the field.
# Whether or not the datastore supports thin provisioning on a per file basis. When thin
#     provisioning is used, backing storage is lazily allocated.
#
sub set_thin_provisioning_supported {
   my ($self, %args) = @_;
   $self->{'thin_provisioning_supported'} = $args{'thin_provisioning_supported'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Datastore::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Datastore::FilterSpec``   *class*  contains  *fields* 
#     used to filter the results when listing datastores (see 
#     :func:`Com::Vmware::Vcenter::Datastore.list` ). If multiple  *fields*  are specified,
#     only datastores matching all of the  *fields*  match the filter.

package Com::Vmware::Vcenter::Datastore::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datastore::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastores} = $args{'datastores'};
   $self->{names} = $args{'names'};
   $self->{types} = $args{'types'};
   $self->{folders} = $args{'folders'};
   $self->{datacenters} = $args{'datacenters'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Datastore::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.datastore.filter_spec');
   $self->set_binding_field('key' => 'datastores', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Datastore::Type')))));
   $self->set_binding_field('key' => 'folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_datastores ()
# Gets the value of 'datastores' property.
#
# @retval datastores - The current value of the field.
# Identifiers of datastores that can match the filter.
#
# Optional#
sub get_datastores {
   my ($self, %args) = @_;
   return $self->{'datastores'}; 	
}

## @method set_datastores ()
# Sets the given value for 'datastores' property.
# 
# @param datastores  - New value for the field.
# Identifiers of datastores that can match the filter.
#
sub set_datastores {
   my ($self, %args) = @_;
   $self->{'datastores'} = $args{'datastores'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that datastores must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Datastore::Info.name` ).
#
# Optional#
sub get_names {
   my ($self, %args) = @_;
   return $self->{'names'}; 	
}

## @method set_names ()
# Sets the given value for 'names' property.
# 
# @param names  - New value for the field.
# Names that datastores must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Datastore::Info.name` ).
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_types ()
# Gets the value of 'types' property.
#
# @retval types - The current value of the field.
# Types that datastores must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Datastore::Summary.type` ).
#
# Optional#
sub get_types {
   my ($self, %args) = @_;
   return $self->{'types'}; 	
}

## @method set_types ()
# Sets the given value for 'types' property.
# 
# @param types  - New value for the field.
# Types that datastores must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Datastore::Summary.type` ).
#
sub set_types {
   my ($self, %args) = @_;
   $self->{'types'} = $args{'types'}; 
   return;	
}

## @method get_folders ()
# Gets the value of 'folders' property.
#
# @retval folders - The current value of the field.
# Folders that must contain the datastore for the datastore to match the filter.
#
# Optional#
sub get_folders {
   my ($self, %args) = @_;
   return $self->{'folders'}; 	
}

## @method set_folders ()
# Sets the given value for 'folders' property.
# 
# @param folders  - New value for the field.
# Folders that must contain the datastore for the datastore to match the filter.
#
sub set_folders {
   my ($self, %args) = @_;
   $self->{'folders'} = $args{'folders'}; 
   return;	
}

## @method get_datacenters ()
# Gets the value of 'datacenters' property.
#
# @retval datacenters - The current value of the field.
# Datacenters that must contain the datastore for the datastore to match the filter.
#
# Optional#
sub get_datacenters {
   my ($self, %args) = @_;
   return $self->{'datacenters'}; 	
}

## @method set_datacenters ()
# Sets the given value for 'datacenters' property.
# 
# @param datacenters  - New value for the field.
# Datacenters that must contain the datastore for the datastore to match the filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Datastore::Summary
#
#
# The  ``Com::Vmware::Vcenter::Datastore::Summary``   *class*  contains commonly used
#     information about a datastore.

package Com::Vmware::Vcenter::Datastore::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datastore::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{name} = $args{'name'};
   $self->{type} = $args{'type'};
   $self->{free_space} = $args{'free_space'};
   $self->{capacity} = $args{'capacity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Datastore::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.datastore.summary');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Datastore::Type'));
   $self->set_binding_field('key' => 'free_space', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier of the datastore.
#
# ID#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier of the datastore.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the datastore.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the datastore.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type (VMFS, NFS, NFS41, CIFS, VSAN, VFFS, VVOL) of the datatore.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type (VMFS, NFS, NFS41, CIFS, VSAN, VFFS, VVOL) of the datatore.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_free_space ()
# Gets the value of 'free_space' property.
#
# @retval free_space - The current value of the field.
# Available space of this datastore, in bytes. <p>
# 
#  The server periodically updates this value.</p>
#
# Optional#
sub get_free_space {
   my ($self, %args) = @_;
   return $self->{'free_space'}; 	
}

## @method set_free_space ()
# Sets the given value for 'free_space' property.
# 
# @param free_space  - New value for the field.
# Available space of this datastore, in bytes. <p>
# 
#  The server periodically updates this value.</p>
#
sub set_free_space {
   my ($self, %args) = @_;
   $self->{'free_space'} = $args{'free_space'}; 
   return;	
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Capacity of this datastore, in bytes. <p>
# 
#  The server periodically updates this value.</p>
#
# Optional#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Capacity of this datastore, in bytes. <p>
# 
#  The server periodically updates this value.</p>
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Datastore service
#########################################################################################
