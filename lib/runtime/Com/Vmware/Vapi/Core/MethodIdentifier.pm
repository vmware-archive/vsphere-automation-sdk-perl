########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file MethodIdentifier.pm
# The file implements MethodIdentifier perl module.
#
# @copy 2013, VMware Inc.
#

## @class MethodIdentifier.pm
# The MethodIdentifier class identifies an {@link com.vmware.vapi.provider.ApiMethod} instance.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.
package Com::Vmware::Vapi::Core::MethodIdentifier;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Core::InterfaceIdentifier;
use Com::Vmware::Vapi::l10n::Runtime;

# Perl Constant
our $METHOD_NAME_DELIMITER = '.';

# @method new
# This method require one step (1 or 2) at a time.
# 1. Creates a method identifier given a fully-qualified method name ([interface].[method]).
#    @param path  fully-qualified method name
# 2. Creates a method identifier given interface id and method name
#    @param interfaceId   interface identifier instance
#    @param method  method name
#    @throws NullPointerException if interface_id or method is undef/null
# @return
# Blessed object
sub new {
   my ( $class, %args ) = @_;
   my $path = $args{path};
   my $self = {};
   if ( defined($path) ) {
      my $index = rindex( $path, $METHOD_NAME_DELIMITER );
      if ( $index > 0 ) {
         $self->{interface_id} = new Com::Vmware::Vapi::Core::InterfaceIdentifier(
            path => substr( $path, 0, $index ) );
         $self->{method_name} = substr( $path, $index + 1 );
      }
      else {
         $self->{interface_id} =
           new Com::Vmware::Vapi::Core::InterfaceIdentifier( path => "" );
         $self->{method_name} = $path;
      }
   }
   else {
      my $interfaceId = $args{interface_id};
      my $method = $args{method};
      if ( !defined($interfaceId) || !defined($method) ) {
         my $message_factory =
           Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
         my $msg = $message_factory->get_message(
            id => 'Com.Vmware.Vapi.Core.MethodIdentifier.NullPointerException',
            args => ['undef']
         );
         throw NullPointerException( $msg->str() );
      }
      $self->{interface_id} = $interfaceId;
      $self->{method_name} = $method;
   }
   return bless( $self, $class );
}

# @method get_method_name
# Returns the name of this method.
#
# @return method name
#
sub get_method_name {
   my $self = shift;
   return $self->{method_name};
}

#
# @method set_method_name
# Set MethodName
#
# @param method_name
#
# @return None
#
sub set_method_name() {
   my ( $self, %args ) = @_;
   $self->{method_name} = $args{method_name};
}

# @method get_interface_id
# Get the identifier of the interface containing this method.
#
# @return interface identifier of the interface containing this method
#
sub get_interface_id {
   my $self = shift;
   return $self->{interface_id};
}

#
# @method set_interface_id
# Set InterfaceId
#
# @param interface_id
#
# @return None
#
sub set_interface_id() {
   my ( $self, %args ) = @_;
   $self->{interface_id} = $args{interface_id};
}

# @method get_fully_qualified_name
# Returns the fully-qualified name ([interface].[method]).
#
# @return the fully-qualified name ([interface].[method]).
#
sub get_fully_qualified_name {
   my $self = shift;
   return $self->{interface_id} . $METHOD_NAME_DELIMITER . $self->{method_name};
}

#
# @method accept
# visit each vAPI data objects
#
# @param None
#
# @return None
#
sub accept {
   my ( $self, %args ) = @_;
   my $visitor = $args{visitor};
   $visitor->visit( vapi_data_object => $self );
}

1;
