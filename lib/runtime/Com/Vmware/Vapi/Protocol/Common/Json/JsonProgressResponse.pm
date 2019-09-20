####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonProgressResponse.pm
# The file implements JsonProgressResponse perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonProgressResponse
# Class to represent a 'progress' node inside the 'result' JSON-RPC node.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Protocol::Common::Json::JsonBaseResponse);

#
# @method new
# Constructor
# @param id Identifier to be used in the JSON-RPC 2.0 request
# @param progress IDataValue type progress
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $class = ref($class) || $class;
   $self = $class->SUPER::new( id => $args{id} );
   $self->{result} =
     new
     Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse::JsonProgress(
      progress => $args{progress} );
   return bless( $self, $class );
}

#
# @method set_result
# Sets Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse::JsonProgress type result
#
# @param result Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse::JsonProgress type
#
# @return None
#
sub set_result {
   my ( $self, %args ) = @_;
   $self->{result} = $args{result};
}

#
# @method get_result
# Get Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse::JsonProgress type result
#
# @param None
#
# @return result Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse::JsonProgress type
#
sub get_result {
   my $self = shift;
   return $self->{result};
}

#
# @method retrieve_progress
# Get Progress
#
# @param None
#
# @return progress
#
sub retrieve_progress {
   my $self = shift;
   if ( defined( $self->{result} ) ) {
      return $self->{result}->{progress};
   }
   else {
      return undef;
   }
}

#
# @class JsonProgress
# We need this wrapper class so that the default bean serializer of the jackson
# library creates a 'progress' node inside the 'result' JSON-RPC node.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse::JsonProgress;

#
# @method new
# Constructor
# @param progress IDataValue type progress
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{progress} = $args{progress};
   return bless( $self, $class );
}

#
# @method set_progress
# Sets Progress
#
# @param progress IDataValue type progress
#
# @return None
#
sub set_progress {
   my ( $self, %args ) = @_;
   $self->{progress} = $args{progress};
}

#
# @method get_progress
# Get Progress
#
# @param None
#
# @return progress IDataValue type progress
#
sub get_progress {
   my $self = shift;
   return $self->{progress};
}

1;
