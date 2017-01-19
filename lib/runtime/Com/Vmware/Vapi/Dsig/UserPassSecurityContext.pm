####################################################
# Copyright 2016 VMware, Inc.  All rights reserved.
####################################################
#
# @file UserPassSecurityContext.pm
# The file implements UserPassSecurityContext perl module.
#
# @copy 2016, VMware Inc.
#

#
# @class UserPassSecurityContext
# This class represents the security context needed for basic authentication
# using username and password.
#
package Com::Vmware::Vapi::Dsig::UserPassSecurityContext;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger
    qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Security::StdSecuritySchemes;
use Com::Vmware::Vapi::l10n::Runtime;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Core::SecurityContext);

# Constants
our $USER_NAME  = "userName";
our $USER_PASSWORD = "password";

my %properties;

#
# @method new
# Constructor for creating UserPassSecurityContext
#
# @param user_name user name. Must not be null.
# @param user_password user password. Must not be null.
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   $class = ref($class) || $class;

   # 'self' stores the object of base class SecurityContext
   my $self = $class->SUPER::new();
   my $userName      = $args{'user_name'};
   my $userPassword = $args{'user_password'};

   if ( !defined($userName) || !defined($userPassword) ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.UserPassSecurityContext.InvalidParameter',
         args => [ 'user_name', 'user_password' ]
      );
      throw InvalidParameter( $msg->str() );
   }

   $properties{$USER_NAME}  = $userName;
   $properties{$USER_PASSWORD} = $userPassword;
      $properties{
         $Com::Vmware::Vapi::Core::SecurityContext::AUTHENTICATION_SCHEME_ID} =
        $Com::Vmware::Vapi::Security::StdSecuritySchemes::USER_PASS;
   return bless( $self, $class );
}

#
# @method get_property
# Get a security context property under the specified key
#
# @param Key key of the required property
#
# @return the security context property under the specified key
#
sub get_property {
   my ( $self, %args ) = @_;
   my $key = $args{'key'};

   if ( !$key ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.UserPassSecurityContext.InvalidParameter.Found',
         args => [ 'key' ]
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( exists( $properties{$key} ) ) {
      return $properties{$key};
   }
   else {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.UserPassSecurityContext.InvalidParameter.Not.Exists',
         args => [ $key ]
      );
      throw InvalidParameter( $msg->str() );
   }
}

#
# @method get_all_properties
# Get the complete hash representing all the properties
#
# @param None
#
# @return Hash representing all the properties
#
sub get_all_properties {
   my ( $self, %args ) = @_;

   return %properties;
}

1;
