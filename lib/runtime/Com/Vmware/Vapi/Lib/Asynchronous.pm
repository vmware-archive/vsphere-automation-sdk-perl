########################################################################
# Copyright (C) 2014 VMware, Inc.
########################################################################
## @file Asynchronous.pm
# This file is has implementation for Asynchronous method invocation
#

package Com::Vmware::Vapi::Lib::Asynchronous;
our @ISA    = qw(Exporter);
our @EXPORT = qw(invoke_async);

#my $thread_queue = undef;

#
# Perl Core Modules
#
use strict;
use threads (
              'yield',
              'exit' => 'threads_only',
              'stringify'
);

#use Thread::Queue;
use threads::shared;

#
# vAPI Modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_debug log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Exception::Class;
use Com::Vmware::Vapi::Lib::AsyncResult;

## @method invoke_async ()
# Invoke the given method asynchronously
#
# @param method_name - Name of the method
#
# @retval Returns AsyncResult object
#
sub invoke_async {
   my ($method_name) = @_;

   #if ( !defined($thread_queue) ) {
   #   log_debug( "MSG" => "Creating thread queue for first time" );
   #   # A new empty queue
   #   $thread_queue = Thread::Queue->new();
   #}

   my $async_result = new Com::Vmware::Vapi::Lib::AsyncResult();
   my $args = { 'method_name' => $method_name, 'async_result' => $async_result };
   _create_thread($args);
   return $async_result;
}

## @method _create_thread ()
# Creates a new thread and invoke the given method inside the thread
#
# @param method_name - Name of the method
#
#
sub _create_thread {
   my ($args)       = @_;
   my $call_method  = $args->{'method_name'};
   my $async_result = $args->{'async_result'};
   my $thr = threads->create(
      sub {
         log_debug( 'MSG' => 'Thread job started' );
         #sleep (5);
         my $res = &$call_method();
         log_debug( 'MSG' => 'Thread job compeleted. Result: ' . $res );
         $async_result->set_result( { 'result' => $res } );
         #$async_result->set_completed();
         #while ( my $item = $thread_queue->dequeue() ) { }
      }
   );
   $async_result->set_tid( { 'tid' => $thr->tid() } );

   #$thr->detach();
}

1;
