########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Datacenter.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Datacenter
# The  ``Com::Vmware::Vcenter::Datacenter``   *interface*  provides  *methods*  to
#     manage datacenters in the vCenter Server.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the vCenter Datacenter

package Com::Vmware::Vcenter::Datacenter;

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
use Com::Vmware::Vcenter::DatacenterStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.datacenter';


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

## @method create ()
# Create a new datacenter in the vCenter inventory
#
# @param spec [REQUIRED] Specification for the new datacenter to be created.
# . The value must be Com::Vmware::Vcenter::Datacenter::CreateSpec.
#
# @retval 
# The identifier of the newly created datacenter
# The value will be an identifier for the resource type getQualifiedName(Datacenter).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a datacenter with the same name is already present.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the datacenter name is empty or invalid as per the underlying implementation.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the folder is not specified and the system cannot choose a suitable one.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the datacenter folder cannot be found.
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
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Delete an empty datacenter from the vCenter Server
#
# @param datacenter [REQUIRED] Identifier of the datacenter to be deleted.
# The value must be an identifier for the resource type getQualifiedName(Datacenter).
# . The value must be str.
#
# @param force [OPTIONAL] If true, delete the datacenter even if it is not empty.
# If  *null*  a  class Com::Vmware::Vapi::Std::Errors::ResourceInUse   *error*  will be
#     reported if the datacenter is not empty. This is the equivalent of passing the value
#     false.
# . The value must be Boolean or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no datacenter associated with  ``datacenter``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if the datacenter associated with  ``datacenter``  is not empty.
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
sub delete {
   my ($self, %args) = @_;
   my $datacenter = $args {datacenter};
   my $force = $args {force};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method list ()
# Returns information about at most 1000 visible (subject to permission checks) datacenters
# in vCenter matching the  class Com::Vmware::Vcenter::Datacenter::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching datacenters for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Datacenter::FilterSpec  with all  *fields*   *null*  which means
#     all datacenters match the filter.
# . The value must be Com::Vmware::Vcenter::Datacenter::FilterSpec or None.
#
# @retval 
# Commonly used information about the datacenters matching the  class
#     Com::Vmware::Vcenter::Datacenter::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Datacenter::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 1000 datacenters match the  class
#     Com::Vmware::Vcenter::Datacenter::FilterSpec .
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

## @method get ()
# Retrieves information about the datacenter corresponding to  ``datacenter`` .
#
# @param datacenter [REQUIRED] Identifier of the datacenter.
# The value must be an identifier for the resource type getQualifiedName(Datacenter).
# . The value must be str.
#
# @retval 
# Information about the datacenter associated with  ``datacenter`` .
# The return type will be Com::Vmware::Vcenter::Datacenter::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no datacenter associated with  ``datacenter``  in the system.
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
   my $datacenter = $args {datacenter};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Datacenter service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Datacenter service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Datacenter service
#########################################################################################

## @class Com::Vmware::Vcenter::Datacenter::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Datacenter::CreateSpec``   *class*  defines the
#     information used to create a datacenter.

package Com::Vmware::Vcenter::Datacenter::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datacenter::CreateSpec structure
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
   $self->{folder} = $args{'folder'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Datacenter::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.datacenter.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the datacenter to be created.
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
# The name of the datacenter to be created.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Datacenter folder in which the new datacenter should be created.
#
# Optional#
sub get_folder {
   my ($self, %args) = @_;
   return $self->{'folder'}; 	
}

## @method set_folder ()
# Sets the given value for 'folder' property.
# 
# @param folder  - New value for the field.
# Datacenter folder in which the new datacenter should be created.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Datacenter::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Datacenter::FilterSpec``   *class*  contains  *fields* 
#     used to filter the results when listing datacenters (see 
#     :func:`Com::Vmware::Vcenter::Datacenter.list` ). If multiple  *fields*  are specified,
#     only datacenters matching all of the  *fields*  match the filter.

package Com::Vmware::Vcenter::Datacenter::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datacenter::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datacenters} = $args{'datacenters'};
   $self->{names} = $args{'names'};
   $self->{folders} = $args{'folders'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Datacenter::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.datacenter.filter_spec');
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_datacenters ()
# Gets the value of 'datacenters' property.
#
# @retval datacenters - The current value of the field.
# Identifiers of datacenters that can match the filter.
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
# Identifiers of datacenters that can match the filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that datacenters must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Datacenter::Info.name` ).
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
# Names that datacenters must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Datacenter::Info.name` ).
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_folders ()
# Gets the value of 'folders' property.
#
# @retval folders - The current value of the field.
# Folders that must contain the datacenters for the datacenter to match the filter.
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
# Folders that must contain the datacenters for the datacenter to match the filter.
#
sub set_folders {
   my ($self, %args) = @_;
   $self->{'folders'} = $args{'folders'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Datacenter::Summary
#
#
# The  ``Com::Vmware::Vcenter::Datacenter::Summary``   *class*  contains commonly used
#     information about a datacenter in vCenter Server.

package Com::Vmware::Vcenter::Datacenter::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datacenter::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datacenter} = $args{'datacenter'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Datacenter::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.datacenter.summary');
   $self->set_binding_field('key' => 'datacenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_datacenter ()
# Gets the value of 'datacenter' property.
#
# @retval datacenter - The current value of the field.
# Identifier of the datacenter.
#
# ID#
sub get_datacenter {
   my ($self, %args) = @_;
   return $self->{'datacenter'}; 	
}

## @method set_datacenter ()
# Sets the given value for 'datacenter' property.
# 
# @param datacenter  - New value for the field.
# Identifier of the datacenter.
#
sub set_datacenter {
   my ($self, %args) = @_;
   $self->{'datacenter'} = $args{'datacenter'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the datacenter.
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
# Name of the datacenter.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Datacenter::Info
#
#
# The  ``Com::Vmware::Vcenter::Datacenter::Info``   *class*  contains information about
#     a datacenter in vCenter Server.

package Com::Vmware::Vcenter::Datacenter::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Datacenter::Info structure
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
   $self->{datastore_folder} = $args{'datastore_folder'};
   $self->{host_folder} = $args{'host_folder'};
   $self->{network_folder} = $args{'network_folder'};
   $self->{vm_folder} = $args{'vm_folder'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Datacenter::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.datacenter.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'datastore_folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'network_folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vm_folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the datacenter.
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
# The name of the datacenter.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_datastore_folder ()
# Gets the value of 'datastore_folder' property.
#
# @retval datastore_folder - The current value of the field.
# The root datastore folder associated with the datacenter.
#
# ID#
sub get_datastore_folder {
   my ($self, %args) = @_;
   return $self->{'datastore_folder'}; 	
}

## @method set_datastore_folder ()
# Sets the given value for 'datastore_folder' property.
# 
# @param datastore_folder  - New value for the field.
# The root datastore folder associated with the datacenter.
#
sub set_datastore_folder {
   my ($self, %args) = @_;
   $self->{'datastore_folder'} = $args{'datastore_folder'}; 
   return;	
}

## @method get_host_folder ()
# Gets the value of 'host_folder' property.
#
# @retval host_folder - The current value of the field.
# The root host and cluster folder associated with the datacenter.
#
# ID#
sub get_host_folder {
   my ($self, %args) = @_;
   return $self->{'host_folder'}; 	
}

## @method set_host_folder ()
# Sets the given value for 'host_folder' property.
# 
# @param host_folder  - New value for the field.
# The root host and cluster folder associated with the datacenter.
#
sub set_host_folder {
   my ($self, %args) = @_;
   $self->{'host_folder'} = $args{'host_folder'}; 
   return;	
}

## @method get_network_folder ()
# Gets the value of 'network_folder' property.
#
# @retval network_folder - The current value of the field.
# The root network folder associated with the datacenter.
#
# ID#
sub get_network_folder {
   my ($self, %args) = @_;
   return $self->{'network_folder'}; 	
}

## @method set_network_folder ()
# Sets the given value for 'network_folder' property.
# 
# @param network_folder  - New value for the field.
# The root network folder associated with the datacenter.
#
sub set_network_folder {
   my ($self, %args) = @_;
   $self->{'network_folder'} = $args{'network_folder'}; 
   return;	
}

## @method get_vm_folder ()
# Gets the value of 'vm_folder' property.
#
# @retval vm_folder - The current value of the field.
# The root virtual machine folder associated with the datacenter.
#
# ID#
sub get_vm_folder {
   my ($self, %args) = @_;
   return $self->{'vm_folder'}; 	
}

## @method set_vm_folder ()
# Sets the given value for 'vm_folder' property.
# 
# @param vm_folder  - New value for the field.
# The root virtual machine folder associated with the datacenter.
#
sub set_vm_folder {
   my ($self, %args) = @_;
   $self->{'vm_folder'} = $args{'vm_folder'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Datacenter service
#########################################################################################
