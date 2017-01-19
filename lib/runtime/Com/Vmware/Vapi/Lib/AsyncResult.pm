########################################################################
# Copyright (C) 2014 VMware, Inc.
########################################################################
## @file AsyncResult.pm
# This file is for the AsyncResult class for vApi perl runtime
#

package Com::Vmware::Vapi::Lib::AsyncResult;

use strict;
use threads ('yield');
use threads::shared;

use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_debug log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Exception::Class;

## @method new
# Constructor to initialize the AsyncResult object
#
# @return
# Blessed object
#
sub new {
	my ( $class, %args ) = @_;
	$class = ref($class) || $class;
	my $self : shared = shared_clone({'completed' => 0, 'result' => undef, 'tid' => undef});

	bless( $self, $class );
	return ($self);
}

## @method get_result ()
# Retrieving the Final Result from an Asynchronous Method Invocation.
# If processing hasn’t been completed, calling this method will result in the client halting
# execution until the invocation completes. Use the is_done method to determine whether
# processing has completed before calling this method.
#
# @retval Returns results
#
sub get_result {
	my $self = shift;
	$self->wait();
	return $self->{result};
}

## @method get_error ()
# Retrieving the Exceptions if any from an Asynchronous Method Invocation.
# Use this method to determine whether processing has completed successfully.
#
# @retval Returns undef for success or Exception
#
sub get_error {
   my $self = shift;
   my $thr = threads->object($self->{'tid'});
   return $thr->error();
}

## @method Set_result ()
# Sets the result which returned by the async method invocation
#
# @param result Any valid data types
#
sub set_result {
	my ($self, $args) = @_;
	$self->{result} = shared_clone($args->{result});
	return;
}

## @method is_done ()
# Tell whether the async method is still completed or not.
# This method returns 1 (true) if the asynchronous method invocation completed normally, was
# cancelled, or resulted in an exception. That is, is_done indicates only whether the
# asynhornous method has completed processing the invocation.
#
# @retval Returns 0 for not completed or 1 for completed
#
sub is_done {
	my $self = shift;
	my $thr = threads->object($self->{'tid'});
	if (defined($thr) && $thr->is_running()) {
	   return 0;
	}
	$self->{completed} = 1;
	return $self->{completed};
}

## @method set_completed ()
# Sets the completed flag to 0 to mark it as async method is completed.
#
#
sub set_completed {
	my ($self) = @_;
	$self->{completed} = 1;
	return;
}

## @method set_tid ()
# Sets the thread id of the thread which executes the async method.
#
# @param tid Thread ID
#
sub set_tid {
   my ($self, $args) = @_;
   $self->{'tid'} = shared_clone($args->{'tid'});
   return;
}

## @method wait ()
# The main process waits until the Async method completes
#
#
sub wait {
   my ($self, $args) = @_;
   my $thr = threads->object($self->{'tid'});
   while ($self->is_done() ==0) {
      yield();
   }
   return;
}

1;
