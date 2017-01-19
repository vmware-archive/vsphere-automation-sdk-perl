########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file InterfaceIdentifier.pm
# The file implements InterfaceIdentifier perl module.
#
# @copy 2013, VMware Inc.
#

## @class InterfaceIdentifier.pm
# The InterfaceIdentifier class identifies an {@link com.vmware.vapi.provider.ApiInterface} instance.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.
package Com::Vmware::Vapi::Core::InterfaceIdentifier;

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
use Com::Vmware::Vapi::l10n::Runtime;

# @method new
# Constructor
#
# @param Path  interface name
# @throws NullPointerException if interfaceName is undef/null
#
# @return
# Blessed object
sub new {
   my ( $class, %args ) = @_;
   my $interfaceName = $args{path};
   my $self  = {};
   if ( !defined($interfaceName) ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Core.InterfaceIdentifier.NullPointerException',
         args => [$interfaceName]
      );
      throw NullPointerException( $msg->str() );
   }
   $self->{name} = $interfaceName;
   return bless( $self, $class );
}

# @method get_name
# Returns the name of this interface.
#
# @return interface name
#
sub get_name {
   my $self = shift;
   return $self->{name};
}

#
# @method set_name
# Set Name
#
# @param name name of interface
#
# @return None
#
sub set_name() {
   my ( $self, %args ) = @_;
   $self->{name} = $args{name};
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
