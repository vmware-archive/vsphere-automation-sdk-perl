########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################

## @file StubFactory.pm

# The file implements factory for client-side vAPI stubs

#


package Com::Vmware::Vapi::Bindings::StubFactory;


## @class Com::Vmware::Vapi::Bindings::StubFactory
# Factory for the client-side vAPI stubs.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.


#
# Core Perl modules
#
use strict;
use warnings;



#
# Vapi Perl modules
#

use Com::Vmware::Vapi::Util::ExceptionBase;
use Exception::Class;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::l10n::Runtime;


## @method new ()
# Constructor to initialize the StubFactory object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
#
# @retval
# "Blessed object"
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{api_provider} = $args{api_provider};
   bless( $self, $class );
   return ($self);
}


## @method create_stub ()
# Create a stub corresponding to the specified service name
#
# @param service_name - Name of the service
# @param stub_config - Stub's additional configuration
#
# @retval
# "The stub corresponding to the specified service name"
#
sub create_stub {
   my ( $self, %args ) = @_;
   my $serviceName = $args{service_name};
   my $stubConfig  = $args{stub_config};
   my $stub        = undef;

   if ( $serviceName->can('new') ) {
      return $serviceName->new(
         'api_provider' => $self->{api_provider},
         'stub_config'  => $stubConfig
      );
   }
   else {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.StubFactory.ModuleNotLoaded',
         args => [$serviceName]
      );
      throw ModuleNotLoaded( $msg->str() );
   }

    #
    # The following code is dead code for now. If we decide to support partial name search, then we
    # enable the following code
    #
   my %hash = %INC;
   my $key;
   my $value;

   while ( ( $key, $value ) = each %INC ) {
      if ( $key =~ /Com\/Vmware*/ ) {
         $key =~ s/\//::/g;
         $key =~ s/.pm/::$serviceName/g;
         if (  $key->can('new')
            && $key->isa('Com::Vmware::Vapi::Bindings::VapiInterface') )
         {
            $serviceName = $key;
         }
      }
   }

   $stub = $serviceName->new(
      'api_provider' => $self->{api_provider},
      'stub_config'  => $stubConfig
   );
   return $stub;
}

1;
