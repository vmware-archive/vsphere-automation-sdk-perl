########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Host.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Host
# The  ``Com::Vmware::Vcenter::Host``   *interface*  provides  *methods*  to manage
#     hosts in the vCenter Server.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the vCenter Host.

package Com::Vmware::Vcenter::Host;

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
use Com::Vmware::Vcenter::HostStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

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
# Add a new standalone host in the vCenter inventory. The newly connected host will be in
# connected state. The vCenter Server will verify the SSL certificate before adding the host
# to its inventory. In the case where the SSL certificate cannot be verified because the
# Certificate Authority is not recognized or the certificate is self signed, the vCenter
# Server will fall back to thumbprint verification mode as defined by  class
# Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification .
#
# @param spec [REQUIRED] Specification for the new host to be created.
# . The value must be Com::Vmware::Vcenter::Host::CreateSpec.
#
# @retval 
# The newly created identifier of the host in vCenter.
# The value will be an identifier for the resource type getQualifiedName(HostSystem).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the host with the same name is already present.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if installation of VirtualCenter agent on a host fails.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the host name is invalid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the host folder is invalid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the SSL thumbprint specified is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# if the host folder id does not support vSphere compute resource as its children type.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no folder associated with the  ``folder``   *field*  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if the host is already being managed by another vCenter Server
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if there are not enough licenses to add the host.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user name or password for the administration account on the host are invalid.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the software version on the host is not supported.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
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
# Remove a standalone host from the vCenter Server.
#
# @param host [REQUIRED] Identifier of the host to be deleted.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no host associated with  ``host``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if the host associated with  ``host``  is in a vCenter cluster
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
   my $host = $args {host};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method list ()
# Returns information about at most 2500 visible (subject to permission checks) hosts in
# vCenter matching the  class Com::Vmware::Vcenter::Host::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching hosts for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Host::FilterSpec  with all  *fields*   *null*  which means all
#     hosts match the filter.
# . The value must be Com::Vmware::Vcenter::Host::FilterSpec or None.
#
# @retval 
# Commonly used information about the hosts matching the  class
#     Com::Vmware::Vcenter::Host::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Host::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Host::FilterSpec.connection_states`   *field* 
#     contains a value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 2500 hosts match the  class Com::Vmware::Vcenter::Host::FilterSpec .
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


## @method connect ()
# Connect to the host corresponding to  ``host``  previously added to the vCenter server.
#
# @param host [REQUIRED] Identifier of the host to be reconnected.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the host associated with  ``host``  is already connected.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no host associated with  ``host``  in the system.
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

sub connect {
   my ($self, %args) = @_;
   my $host = $args {host};

   $self->validate_args (method_name => 'connect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'connect',
                         method_args => \%args);
}


## @method disconnect ()
# Disconnect the host corresponding to  ``host``  from the vCenter server
#
# @param host [REQUIRED] Identifier of the host to be disconnected.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the host associated with  ``host``  is already disconnected.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no host associated with  ``host``  in the system.
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

sub disconnect {
   my ($self, %args) = @_;
   my $host = $args {host};

   $self->validate_args (method_name => 'disconnect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'disconnect',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Host service
#########################################################################################

## @class Com::Vmware::Vcenter::Host::ConnectionState
#
# The  ``Com::Vmware::Vcenter::Host::ConnectionState``   *enumerated type*  defines the
#     connection status of a host.
#
#
#
# Constant Com::Vmware::Vcenter::Host::ConnectionState::CONNECTED #
#Host is connected to the vCenter Server
#
# Constant Com::Vmware::Vcenter::Host::ConnectionState::DISCONNECTED #
#Host is disconnected from the vCenter Server
#
# Constant Com::Vmware::Vcenter::Host::ConnectionState::NOT_RESPONDING #
#VirtualCenter is not receiving heartbeats from the server. The state automatically changes
# to connected once heartbeats are received again.

package Com::Vmware::Vcenter::Host::ConnectionState;

use constant {
    CONNECTED =>  'CONNECTED',
    DISCONNECTED =>  'DISCONNECTED',
    NOT_RESPONDING =>  'NOT_RESPONDING',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Host::ConnectionState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.host.connection_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Host::ConnectionState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Host::PowerState
#
# The  ``Com::Vmware::Vcenter::Host::PowerState``   *enumerated type*  defines the power
#     states of a host.
#
#
#
# Constant Com::Vmware::Vcenter::Host::PowerState::POWERED_ON #
#The host is powered on. A host that is entering standby mode is also in this state.
#
# Constant Com::Vmware::Vcenter::Host::PowerState::POWERED_OFF #
#The host was specifically powered off by the user through vCenter server. This state is
# not a cetain state, because after vCenter server issues the command to power off the host,
# the host might crash, or kill all the processes but fail to power off.
#
# Constant Com::Vmware::Vcenter::Host::PowerState::STANDBY #
#The host was specifically put in standby mode, either explicitly by the user, or
# automatically by DPM. This state is not a cetain state, because after VirtualCenter issues
# the command to put the host in standby state, the host might crash, or kill all the
# processes but fail to enter standby mode. A host that is exiting standby mode is also in
# this state.

package Com::Vmware::Vcenter::Host::PowerState;

use constant {
    POWERED_ON =>  'POWERED_ON',
    POWERED_OFF =>  'POWERED_OFF',
    STANDBY =>  'STANDBY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Host::PowerState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.host.power_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Host::PowerState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Host service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Host service
#########################################################################################

## @class Com::Vmware::Vcenter::Host::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Host::CreateSpec``   *class*  defines the information
#     used to create a host.

package Com::Vmware::Vcenter::Host::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Host::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'thumbprint_verification',
         'case_map' => {
               'THUMBPRINT' => ['thumbprint'],
               'NONE' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{port} = $args{'port'};
   $self->{user_name} = $args{'user_name'};
   $self->{password} = $args{'password'};
   $self->{folder} = $args{'folder'};
   $self->{thumbprint_verification} = $args{'thumbprint_verification'};
   $self->{thumbprint} = $args{'thumbprint'};
   $self->{force_add} = $args{'force_add'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Host::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.host.create_spec');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'thumbprint_verification', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Host::CreateSpec::ThumbprintVerification'));
   $self->set_binding_field('key' => 'thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'force_add', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The IP address or DNS resolvable name of the host.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# The IP address or DNS resolvable name of the host.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# The port of the host.
#
# Optional#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# The port of the host.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_user_name ()
# Gets the value of 'user_name' property.
#
# @retval user_name - The current value of the field.
# The administrator account on the host.
#
# String#
sub get_user_name {
   my ($self, %args) = @_;
   return $self->{'user_name'}; 	
}

## @method set_user_name ()
# Sets the given value for 'user_name' property.
# 
# @param user_name  - New value for the field.
# The administrator account on the host.
#
sub set_user_name {
   my ($self, %args) = @_;
   $self->{'user_name'} = $args{'user_name'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# The password for the administrator account on the host.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# The password for the administrator account on the host.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Host and cluster folder in which the new standalone host should be created.
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
# Host and cluster folder in which the new standalone host should be created.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_thumbprint_verification ()
# Gets the value of 'thumbprint_verification' property.
#
# @retval thumbprint_verification - The current value of the field.
# Type of host&apos;s SSL certificate verification to be done.
#
# ThumbprintVerification#
sub get_thumbprint_verification {
   my ($self, %args) = @_;
   return $self->{'thumbprint_verification'}; 	
}

## @method set_thumbprint_verification ()
# Sets the given value for 'thumbprint_verification' property.
# 
# @param thumbprint_verification  - New value for the field.
# Type of host&apos;s SSL certificate verification to be done.
#
sub set_thumbprint_verification {
   my ($self, %args) = @_;
   $self->{'thumbprint_verification'} = $args{'thumbprint_verification'}; 
   return;	
}

## @method get_thumbprint ()
# Gets the value of 'thumbprint' property.
#
# @retval thumbprint - The current value of the field.
# The thumbprint of the SSL certificate, which the host is expected to have. The
#     thumbprint is always computed using the SHA1 hash and is the string representation of
#     that hash in the format: xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx
#     where, &apos;x&apos; represents a hexadecimal digit.
#
# optional#
sub get_thumbprint {
   my ($self, %args) = @_;
   return $self->{'thumbprint'}; 	
}

## @method set_thumbprint ()
# Sets the given value for 'thumbprint' property.
# 
# @param thumbprint  - New value for the field.
# The thumbprint of the SSL certificate, which the host is expected to have. The
#     thumbprint is always computed using the SHA1 hash and is the string representation of
#     that hash in the format: xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx
#     where, &apos;x&apos; represents a hexadecimal digit.
#
sub set_thumbprint {
   my ($self, %args) = @_;
   $self->{'thumbprint'} = $args{'thumbprint'}; 
   return;	
}

## @method get_force_add ()
# Gets the value of 'force_add' property.
#
# @retval force_add - The current value of the field.
# Whether host should be added to the vCenter Server even if it is being managed by
#     another vCenter Server. The original vCenterServer loses connection to the host.
#
# Optional#
sub get_force_add {
   my ($self, %args) = @_;
   return $self->{'force_add'}; 	
}

## @method set_force_add ()
# Sets the given value for 'force_add' property.
# 
# @param force_add  - New value for the field.
# Whether host should be added to the vCenter Server even if it is being managed by
#     another vCenter Server. The original vCenterServer loses connection to the host.
#
sub set_force_add {
   my ($self, %args) = @_;
   $self->{'force_add'} = $args{'force_add'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification
#
# The  ``Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification``   *enumerated
#     type*  defines the thumbprint verification schemes for a host&apos;s SSL certificate.
#
#
#
# Constant Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification::NONE #
#Accept the host&apos;s thumbprint without verifying it.
#
# Constant Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification::THUMBPRINT #
#Host&apos;s SSL certificate verified by checking its thumbprint against the specified
# thumbprint.

package Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification;

use constant {
    NONE =>  'NONE',
    THUMBPRINT =>  'THUMBPRINT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.host.create_spec.thumbprint_verification',
                           'binding_class' => 'Com::Vmware::Vcenter::Host::CreateSpec::ThumbprintVerification');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Host::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Host::FilterSpec``   *class*  contains  *fields*  used to
#     filter the results when listing hosts (see  :func:`Com::Vmware::Vcenter::Host.list` ).
#     If multiple  *fields*  are specified, only hosts matching all of the  *fields*  match
#     the filter.

package Com::Vmware::Vcenter::Host::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Host::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hosts} = $args{'hosts'};
   $self->{names} = $args{'names'};
   $self->{folders} = $args{'folders'};
   $self->{datacenters} = $args{'datacenters'};
   $self->{standalone} = $args{'standalone'};
   $self->{clusters} = $args{'clusters'};
   $self->{connection_states} = $args{'connection_states'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Host::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.host.filter_spec');
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'standalone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'clusters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'connection_states', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Host::ConnectionState')))));
   bless $self, $class;
   return $self;
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# Identifiers of hosts that can match the filter.
#
# Optional#
sub get_hosts {
   my ($self, %args) = @_;
   return $self->{'hosts'}; 	
}

## @method set_hosts ()
# Sets the given value for 'hosts' property.
# 
# @param hosts  - New value for the field.
# Identifiers of hosts that can match the filter.
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that hosts must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Host::Summary.name` ).
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
# Names that hosts must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Host::Summary.name` ).
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
# Folders that must contain the hosts for the hosts to match the filter.
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
# Folders that must contain the hosts for the hosts to match the filter.
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
# Datacenters that must contain the hosts for the hosts to match the filter.
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
# Datacenters that must contain the hosts for the hosts to match the filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}

## @method get_standalone ()
# Gets the value of 'standalone' property.
#
# @retval standalone - The current value of the field.
# If true, only hosts that are not part of a cluster can match the filter, and if false,
#     only hosts that are are part of a cluster can match the filter.
#
# Optional#
sub get_standalone {
   my ($self, %args) = @_;
   return $self->{'standalone'}; 	
}

## @method set_standalone ()
# Sets the given value for 'standalone' property.
# 
# @param standalone  - New value for the field.
# If true, only hosts that are not part of a cluster can match the filter, and if false,
#     only hosts that are are part of a cluster can match the filter.
#
sub set_standalone {
   my ($self, %args) = @_;
   $self->{'standalone'} = $args{'standalone'}; 
   return;	
}

## @method get_clusters ()
# Gets the value of 'clusters' property.
#
# @retval clusters - The current value of the field.
# Clusters that must contain the hosts for the hosts to match the filter.
#
# Optional#
sub get_clusters {
   my ($self, %args) = @_;
   return $self->{'clusters'}; 	
}

## @method set_clusters ()
# Sets the given value for 'clusters' property.
# 
# @param clusters  - New value for the field.
# Clusters that must contain the hosts for the hosts to match the filter.
#
sub set_clusters {
   my ($self, %args) = @_;
   $self->{'clusters'} = $args{'clusters'}; 
   return;	
}

## @method get_connection_states ()
# Gets the value of 'connection_states' property.
#
# @retval connection_states - The current value of the field.
# Connection states that a host must be in to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Host::Summary.connection_state` .
#
# Optional#
sub get_connection_states {
   my ($self, %args) = @_;
   return $self->{'connection_states'}; 	
}

## @method set_connection_states ()
# Sets the given value for 'connection_states' property.
# 
# @param connection_states  - New value for the field.
# Connection states that a host must be in to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Host::Summary.connection_state` .
#
sub set_connection_states {
   my ($self, %args) = @_;
   $self->{'connection_states'} = $args{'connection_states'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Host::Summary
#
#
# The  ``Com::Vmware::Vcenter::Host::Summary``   *class*  contains commonly used
#     information about a host in vCenter Server.

package Com::Vmware::Vcenter::Host::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Host::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'connection_state',
         'case_map' => {
               'CONNECTED' => ['power_state'],
               'DISCONNECTED' => [],
               'NOT_RESPONDING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{host} = $args{'host'};
   $self->{name} = $args{'name'};
   $self->{connection_state} = $args{'connection_state'};
   $self->{power_state} = $args{'power_state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Host::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.host.summary');
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'connection_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Host::ConnectionState'));
   $self->set_binding_field('key' => 'power_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Host::PowerState')));
   bless $self, $class;
   return $self;
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# Identifier of the host.
#
# ID#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# Identifier of the host.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the host.
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
# Name of the host.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_connection_state ()
# Gets the value of 'connection_state' property.
#
# @retval connection_state - The current value of the field.
# Connection status of the host
#
# ConnectionState#
sub get_connection_state {
   my ($self, %args) = @_;
   return $self->{'connection_state'}; 	
}

## @method set_connection_state ()
# Sets the given value for 'connection_state' property.
# 
# @param connection_state  - New value for the field.
# Connection status of the host
#
sub set_connection_state {
   my ($self, %args) = @_;
   $self->{'connection_state'} = $args{'connection_state'}; 
   return;	
}

## @method get_power_state ()
# Gets the value of 'power_state' property.
#
# @retval power_state - The current value of the field.
# Power state of the host
#
# optional#
sub get_power_state {
   my ($self, %args) = @_;
   return $self->{'power_state'}; 	
}

## @method set_power_state ()
# Sets the given value for 'power_state' property.
# 
# @param power_state  - New value for the field.
# Power state of the host
#
sub set_power_state {
   my ($self, %args) = @_;
   $self->{'power_state'} = $args{'power_state'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Host service
#########################################################################################
