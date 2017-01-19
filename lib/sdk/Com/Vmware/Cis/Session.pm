########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Session.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Cis::Session
# The  ``Com::Vmware::Cis::Session``   *interface*  allows API clients to manage session
#     tokens including creating, deleting and obtaining information about sessions. <p>
# 
#  </p>
# 
# <ul>
# <li>The  :func:`Com::Vmware::Cis::Session.create`   *method*  creates session token in
#     exchange for another authentication token.</li>
# <li>The  :func:`Com::Vmware::Cis::Session.delete`   *method*  invalidates a session
#     token.</li>
# <li>The  :func:`Com::Vmware::Cis::Session.get`  retrieves information about a session
#     token.</li>
#  </ul> <p>
# 
# The call to the  :func:`Com::Vmware::Cis::Session.create`   *method*  is part of the
#     overall authentication process for API clients. For example, the sequence of steps for
#     establishing a session with SAML token is: </p>
# 
# <ul>
#  <li>Connect to lookup service.</li>
#  <li>Discover the secure token service (STS) endpoint URL.</li>
#  <li>Connect to the secure token service to obtain a SAML token.</li>
#  <li>Authenticate to the lookup service using the obtained SAML token.</li>
#  <li>Discover the API endpoint URL from lookup service.</li>
# <li>Call the  :func:`Com::Vmware::Cis::Session.create`   *method* . The 
#     :func:`Com::Vmware::Cis::Session.create`  call must include the SAML token.</li>
#  </ul> <p>
# 
# See the programming guide and samples for additional information about establishing
#     API sessions. </p>
# 
# <p>
# 
#  <b>Execution Context and Security Context</b> </p>
# 
# <p>
# 
# To use session based authentication a client should supply the session token obtained
#     through the  :func:`Com::Vmware::Cis::Session.create`   *method* . The client should
#     add the session token in the security context when using SDK classes. Clients using
#     the REST API should supply the session token as a HTTP header. </p>
# 
# <p>
# 
#  <b>Session Lifetime</b> </p>
# 
# <p>
# 
# A session begins with call to the  :func:`Com::Vmware::Cis::Session.create`   *method*
#     to exchange a SAML token for a API session token. A session ends under the following
#     circumstances: </p>
# 
# <ul>
#  <li>Call to the  :func:`Com::Vmware::Cis::Session.delete`   *method* .</li>
# <li>The session expires. Session expiration may be caused by one of the following
#     situations: <ul>
# <li>Client inactivity - For a particular session identified by client requests that
#     specify the associated session ID, the lapsed time since the last request exceeds the
#     maximum interval between requests.</li>
# <li>Unconditional or absolute session expiration time: At the beginning of the
#     session, the session logic uses the SAML token and the system configuration to
#     calculate absolute expiration time.</li>
#  </ul> </li>
#  </ul> <p>
# 
# When a session ends, the authentication logic will reject any subsequent client
#     requests that specify that session. Any operations in progress will continue to
#     completion. </p>
# 
# <p>
# 
#  <b>Error Handling</b> </p>
# 
# <p>
# 
#  The  class Com::Vmware::Cis::Session  returns the following  *errors* : </p>
# 
# <ul>
# <li> class Com::Vmware::Vapi::Std::Errors::Unauthenticated   *error*  for any 
#     *errors*  related to the request.</li>
# <li> class Com::Vmware::Vapi::Std::Errors::ServiceUnavailable   *error*  for all 
#     *errors*  caused by internal service failure.</li>
#  </ul>
#

package Com::Vmware::Cis::Session;

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
use Com::Vmware::Cis::SessionStub;

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
# Creates a session with the API. This is the equivalent of login. This  *method*  exchanges
# user credentials supplied in the security context for a session identifier that is to be
# used for authenticating subsequent calls. To authenticate subsequent calls clients are
# expected to include the session key.
#
# @retval 
# Newly created session identifier to be used for authenticating further requests.
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the session creation fails due to request specific issues. Due to the security
#     nature of the API the details of the error are not disclosed. <p>
# 
#  Please check the following preconditions if using a SAML token to authenticate: </p>
# 
# <ul>
#  <li>the supplied token is delegate-able.</li>
#  <li>the time of client and server system are synchronized.</li>
#  <li>the token supplied is valid.</li>
# <li>if bearer tokens are used check that system configuration allows the API endpoint
#     to accept such tokens.</li>
#  </ul>
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if session creation fails due to server specific issues, for example connection to a
#     back end component is failing. Due to the security nature of this API further details
#     will not be disclosed in the  *error* . Please refer to component health information,
#     administrative logs and product specific documentation for possible causes.
#

sub create {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'create', method_args =>  {});
}


## @method delete ()
# Terminates the validity of a session token. This is the equivalent of log out. <p>
# 
#  A session identifier is expected as part of the request. </p>
# 
# <p>
# 
# </p>
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the session id is missing from the request or the corresponding session object
#     cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if session deletion fails due to server specific issues, for example connection to a
#     back end component is failing. Due to the security nature of this API further details
#     will not be disclosed in the  *error* . Please refer to component health information,
#     administrative logs and product specific documentation for possible causes.
#

sub delete {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'delete', method_args =>  {});
}


## @method get ()
# Returns information about the current session. This  *method*  expects a valid session
# identifier to be supplied. <p>
# 
# A side effect of invoking this  *method*  may be a change to the session&apos;s last
# accessed time to the current time if this is supported by the session implementation.
# Invoking any other  *method*  in the API will also update the session&apos;s last accessed
# time. </p>
# 
# <p>
# 
# This API is meant to serve the needs of various front end projects that may want to
# display the name of the user. Examples of this include various web based user interfaces
# and logging facilities.</p>
#
# @retval 
# Information about the session.
# The return type will be Com::Vmware::Cis::Session::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the session id is missing from the request or the corresponding session object
#     cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if session retrieval fails due to server specific issues e.g. connection to back end
#     component is failing. Due to the security nature of this API further details will not
#     be disclosed in the error. Please refer to component health information,
#     administrative logs and product specific documentation for possible causes.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Cis::Session service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Cis::Session service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Cis::Session service
#########################################################################################

## @class Com::Vmware::Cis::Session::Info
#
#
# Represents data associated with an API session.

package Com::Vmware::Cis::Session::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Session::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{user} = $args{'user'};
   $self->{created_time} = $args{'created_time'};
   $self->{last_accessed_time} = $args{'last_accessed_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Session::Info');
   $self->set_binding_name('name' => 'com.vmware.cis.session.info');
   $self->set_binding_field('key' => 'user', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'created_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'last_accessed_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
}

## @method get_user ()
# Gets the value of 'user' property.
#
# @retval user - The current value of the field.
# Fully qualified name of the end user that created the session, for example
#     Administrator@vsphere.local. A typical use case for this information is in Graphical
#     User Interfaces (GUI) or logging systems to visualize the identity of the current
#     user.
#
# String#
sub get_user {
   my ($self, %args) = @_;
   return $self->{'user'}; 	
}

## @method set_user ()
# Sets the given value for 'user' property.
# 
# @param user  - New value for the field.
# Fully qualified name of the end user that created the session, for example
#     Administrator@vsphere.local. A typical use case for this information is in Graphical
#     User Interfaces (GUI) or logging systems to visualize the identity of the current
#     user.
#
sub set_user {
   my ($self, %args) = @_;
   $self->{'user'} = $args{'user'}; 
   return;	
}

## @method get_created_time ()
# Gets the value of 'created_time' property.
#
# @retval created_time - The current value of the field.
# Time when the session was created.
#
# DateTime#
sub get_created_time {
   my ($self, %args) = @_;
   return $self->{'created_time'}; 	
}

## @method set_created_time ()
# Sets the given value for 'created_time' property.
# 
# @param created_time  - New value for the field.
# Time when the session was created.
#
sub set_created_time {
   my ($self, %args) = @_;
   $self->{'created_time'} = $args{'created_time'}; 
   return;	
}

## @method get_last_accessed_time ()
# Gets the value of 'last_accessed_time' property.
#
# @retval last_accessed_time - The current value of the field.
# Last time this session was used by passing the session key for invoking an API.
#
# DateTime#
sub get_last_accessed_time {
   my ($self, %args) = @_;
   return $self->{'last_accessed_time'}; 	
}

## @method set_last_accessed_time ()
# Sets the given value for 'last_accessed_time' property.
# 
# @param last_accessed_time  - New value for the field.
# Last time this session was used by passing the session key for invoking an API.
#
sub set_last_accessed_time {
   my ($self, %args) = @_;
   $self->{'last_accessed_time'} = $args{'last_accessed_time'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Cis::Session service
#########################################################################################
