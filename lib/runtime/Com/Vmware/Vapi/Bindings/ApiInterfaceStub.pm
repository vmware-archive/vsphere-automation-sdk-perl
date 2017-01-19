########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ApiInterfaceStub.pm
# The file implements interface for generated stubs.
#

package Com::Vmware::Vapi::Bindings::ApiInterfaceStub;

## @class Com::Vmware::Vapi::Bindings::ApiInterfaceStub
# Defines the interface for generated Stub class
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
use Exception::Class;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::Converter;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_debug log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Exception::Class;
use Com::Vmware::Vapi::Core::MethodIdentifier;
use base qw(Com::Vmware::Vapi::Core::ApiInterface);
use Com::Vmware::Vapi::l10n::Runtime;
use Com::Vmware::Vapi::Util::Helper;

## @method new ()
# Constructor to initialize the ApiMethod skeleton object
#
# @param iface_name - Interface name
# @param api_provider - api_provider data for vAPI stubs
# @param operations - Hash of operation name to operation information
#
# @retval
# "Blessed Object"
#
sub new {
   my ( $class, %params ) = @_;
   my $self = $class->SUPER::new();
   $self->{api_provider} = $params{api_provider};
   $self->{iface_name} = $params{iface_name};
   $self->{iface_id} = $self->{iface_name};
   $self->{operations} = $params{operations};
   bless( $self, $class );
   log_dumper( MSG => $self );
   return ($self);
}

## @method get_interface_identifier()
# Gets the interface identifier.
#
# @retval 
# "An interface identifier id."
#
# @par Side Effects:
# None
#
sub get_interface_identifier {
   my ($self) = shift;
   return $self->{iface_id};
}

## @method invoke()
# Invokes the ApiMethod corresponding to the given method name
# with the args
#
# @param method_name - Method name needs to be invoked
# @param method_args - Method arguments
#
# @retval
# "An interface identifier id."
#
# @par Side Effects:
# None
#
sub invoke {
   my ( $self, %params ) = @_;
   my $ctx         = $params{ctx};
   my $api_provider = $self->{api_provider};
   my $methodName  = $params{method_name};
   my $methodArgs  = $params{method_args};

   #
   # Get the method meta data from the stub class
   #
   my $operation = $self->{operations}->{$methodName};
   if ( !defined($operation) ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.ApiInterfaceStub.MethodNameNotFound',
         args => [$methodName]
      );
      throw MethodNameNotFound( $msg->str() );
   }

   log_debug(MSG => "Converting perl to vAPI data value");
   my $dataValue = Com::Vmware::Vapi::Bindings::Type::Converter::convert_to_vapi(
      binding_type => $operation->{input_type},
      perl_value   => $methodArgs
   );
   log_debug(MSG => "Completed perl to vAPI data value conversion.");
   log_dumper(MSG => $dataValue);

   #############################################################
   #                Data Layer Integration
   #############################################################

   my $methodIdentifier = new Com::Vmware::Vapi::Core::MethodIdentifier(
      interface_id => $self->{iface_id},
      method      => $methodName
   );
   my $serviceId   = $methodIdentifier->get_interface_id();
   my $operationId = $methodIdentifier->get_method_name();
   my $data        = $api_provider->invoke(
      service_id   => $serviceId,
      operation_id => $operationId,
      ctx         => $ctx,
      input       => $dataValue
   );
   my $response = $api_provider->received(
      json_response => $data,
      output_type   => $operation->{output_type},
      errors       => $operation->{errors}
   );
   log_dumper( MSG => $response );
   my $vAPIDataValue = undef;
   my $bindingType   = undef;

   if ( $response->get_success() eq 1 ) {
      $vAPIDataValue = $response->get_output();
      $bindingType   = $operation->{output_type};
   }
   else {
      $vAPIDataValue = $response->get_error();
      #
      # Get the class name of the error
      #
      my $errorClassName = $vAPIDataValue->get_name();
      #$bindingType = $operation->{errors}->{$errorClassName};

      #$bindingType = $bindingType->get_resolved_type();
      my $package = Com::Vmware::Vapi::Util::Helper::get_package_name('name'=> $errorClassName);
      $bindingType = $package->new()->get_binding_type();
   }

   my $perlValue = Com::Vmware::Vapi::Bindings::Type::Converter::convert_to_perl(
      binding_type => $bindingType,
      data_value   => $vAPIDataValue
   );

   #
   # Throw exception if the response is not successful
   #
   if ( $response->get_success() ne 1 ) {

      #Exception::Class::Base->throw( error =>  $perlValue);
      log_warning(MSG=>$perlValue);
      die $perlValue;
   }
   return $perlValue;
}

## @method get_method()
# Gets the method name
#
# @param method_name - method name needs to be invoked
#
# @retval
# "method name"
#
sub get_method {
   my ( $self, %params ) = @_;
   my $methodName = $params{method_name};

   return $self->{iface_name} . "::" . ucfirst($methodName) . "Method";
}

1;
