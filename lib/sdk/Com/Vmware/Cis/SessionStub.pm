########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SessionStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Cis::SessionStub;

## @class Com::Vmware::Cis::Session
#
#The {@name Session} {@term service} allows API clients to manage session
#tokens including creating, deleting and obtaining information about sessions.
#<p>
#<ul>
#<li>The {@link #create} {@term operation} creates session token in exchange
#for another authentication token.</li>
#<li>The {@link #delete} {@term operation} invalidates a session token.</li>
#<li>The {@link #get} retrieves information about a session token.</li>
#</ul>
#<p>
#The call to the {@link #create} {@term operation} is part of the overall
#authentication process for API clients. For example, the sequence of steps for
#establishing a session with SAML token is:
#<ul>
#<li>Connect to lookup service.</li>
#<li>Discover the secure token service (STS) endpoint URL.</li>
#<li>Connect to the secure token service to obtain a SAML token.</li>
#<li>Authenticate to the lookup service using the obtained SAML token.</li>
#<li>Discover the API endpoint URL from lookup service.</li>
#<li>Call the {@link #create} {@term operation}. The
#{@link #create} call must include the SAML token.</li>
#</ul>
#<p>
#See the programming guide and samples for additional information about
#establishing API sessions.
#<p>
#<b>Execution Context and Security Context</b>
#<p>
#To use session based authentication a client should supply the session token
#obtained through the {@link #create} {@term operation}. The client should add the
#session token in the security context when using SDK classes. Clients using
#the REST API should supply the session token as a HTTP header.
#<p>
#<b>Session Lifetime</b>
#<p>
#A session begins with call to the {@link #create} {@term operation} to exchange
#a SAML token for a API session token. A session ends under the following
#circumstances:
#<ul>
#<li>Call to the {@link #delete} {@term operation}.</li>
#<li>The session expires. Session expiration may be caused by one of the
#following situations:
#<ul>
#<li>Client inactivity - For a particular session identified by client
#requests that specify the associated session ID, the lapsed time since the
#last request exceeds the maximum interval between requests.</li>
#<li>Unconditional or absolute session expiration time: At the beginning of
#the session, the session logic uses the SAML token and the system
#configuration to calculate absolute expiration time.</li>
#</ul>
#</li>
#</ul>
#<p>
#When a session ends, the authentication logic will reject any subsequent
#client requests that specify that session. Any operations in progress will
#continue to completion.
#<p>
#<b>Error Handling</b>
#<p>
#The {@link Session} returns the following {@term errors}:
#<ul>
#<li>{@link Unauthenticated} {@term error} for any {@term errors} related to the request.</li>
#<li>{@link ServiceUnavailable} {@term error} for all {@term errors} caused by internal
#service failure.</li>
#</ul>
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
   # properties for create operation
   #
   my $create_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $create_error_dict = {
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),

      };

   my $create_input_validator_list = [
   ];
   my $create_output_validator_list = [];

   #
   # properties for delete operation
   #
   my $delete_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $delete_error_dict = {
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),

      };

   my $delete_input_validator_list = [
   ];
   my $delete_output_validator_list = [];

   #
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'create' => {
                'input_type'=> $create_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::SecretType(),
                'errors'=> $create_error_dict,
                'input_validator_list'=> $create_input_validator_list,
                'output_validator_list'=> $create_output_validator_list,
            },
      'delete' => {
                'input_type'=> $delete_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $delete_error_dict,
                'input_validator_list'=> $delete_input_validator_list,
                'output_validator_list'=> $delete_output_validator_list,
            },
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis', 'type_name' => 'Session::Info'),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.cis.session',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
