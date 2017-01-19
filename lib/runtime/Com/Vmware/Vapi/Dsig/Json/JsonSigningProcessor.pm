####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonSigningProcessor.pm
# The file implements JsonSigningProcessor perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonSigningProcessor
# This class implements JSON string signing and time stamps
#
package Com::Vmware::Vapi::Dsig::Json::JsonSigningProcessor;

#
# Core Perl modules
#
use strict;
use warnings;
use Time::Piece;
use Time::Seconds;
use Time::HiRes q/gettimeofday/;
use POSIX q/strftime/;

#
# CPAN Module
#
use Crypt::OpenSSL::RSA;
use MIME::Base64;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Security::SecurityContextConstants;

#
# @method new
# Constructor
#
# @param private_key private key
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   my $pKeyFile = $args {'private_key'};
   my $key = undef;
   if (defined $pKeyFile) {
      #
      # TODO:: Proper exception needs to raised 
      #
      open FILE, "<", $pKeyFile or die $!;
      while (<FILE>) {
         if ($_ =~ 'PRIVATE KEY') {
            #next;
         }
         $key .= $_;	
      }
      chomp($key);
   }
   $self->{'private_key'} = $key;
   return bless( $self, $class );
}

#
# @method should_sign_request
# Tells whether request needs to be signed or not.
#
# @param private_key private key
#
# @return 0 for false or 1 for true
#
sub should_sign_request {
   my ($self, %args) = @_;
   if (defined $self->{'private_key'}) {
      return 1;
   }
   return 0;
}

#
# @method sign_request
# Sign a string using the secret (portion of the) key.
# @param private_key private key
# @param json_request - Json request string
#
# @return signature
#
sub sign_request {
   my ($self, %args) = @_;
   if (!defined ($self->{private_key})) {
      # TODO::
      # throw exception
   }

   my $jStr = $args{'json_request'};
   my $rsa = Crypt::OpenSSL::RSA->new_private_key($self->{'private_key'});
   $rsa->use_sha256_hash;
   my $signature = $rsa->sign($jStr);
   $signature = encode_base64($signature);
   return $signature;
}

#
# @method get_private_key
# Get PrivateKey
#
# @param None
#
# @return private_key
#
sub get_private_key {
   my $self = shift;
   return $self->{'private_key'};
}

#
# @method get_created_timestamp
# Get timestamp of creation
#
# @param None
#
# @return timestamp of creation
#
sub get_created_timestamp {
   my $self = shift;
   return $self->{'created'};
}

#
# @method set_created_timestamp
# set timestamp of creation
#
# @param created Timestamp of creation
#
# @return None
#
sub set_created_timestamp {
   my ( $self, %args ) = @_;

   $self->{created} = $args{'created'};
}

#
# @method get_expiry_timestamp
# Get timestamp of expiry
#
# @param None
#
# @return expiry timestamp of expiry
#
sub get_expiry_timestamp {
   my $self = shift;

   return $self->{'expiry'};
}

#
# @method set_expiry_timestamp
# Set timestamp of expiry
#
# @param expiry Timestamp of expiry
#
# @return None
#
sub set_expiry_timestamp {
   my ( $self, %args ) = @_;

   $self->{expiry} = $args{'expiry'};
}

#
# @method create_default_timestamp
# Creates default Created and Expiry Timestamps
#
# @param None
#
# @return None
#
sub create_default_timestamp {
   my ( $self, %args ) = @_;
   # Fetching the constant - timsstamp 'offset' i.e. difference between created and expire
   my $offset =
     $Com::Vmware::Vapi::Security::SecurityContextConstants::TS_DEF_OFFSET;

   my $date = localtime;

   # Calculating the current date-time
   my $d =
       substr strftime( q/%Y%m%dT%H%M%S/, localtime )
     . (gettimeofday)[1]
     . q/000/, 0, 18;
   my $ms = substr( $d, 15, 17 );    # Extracting milli-seconds upto 3 digits

   my $created          = $date->strftime('%Y-%m-%dT%H:%M:%S');
   my $createdTimestamp = $created . ".$ms" . "Z";

   # 'Created' timestamp
   $self->{created} = $createdTimestamp;

   my $createdTs = localtime->strftime('%Y%m%d%H%M%S');
   my $dt = Time::Piece->strptime( $createdTs, '%Y%m%d%H%M%S' );
   $dt += ONE_MINUTE * $offset;

   my $expiry           = $dt->strftime('%Y-%m-%dT%H:%M:%S');
   my $expiredTimestamp = $expiry . ".$ms" . "Z";

   # 'Expired' Timestamp
   $self->{expiry} = $expiredTimestamp;
}

1;
