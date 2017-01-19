####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file Bundle.pm
# The file implements Bundle perl module.
# Helper classes for creation of resource bundles
# @copy 2013, VMware Inc.
#

#
# @class PropertiesResourceBundle
# Class for creating resource bundles using property files in the distributable
#
package Com::Vmware::Vapi::l10n::Bundle::PropertiesResourceBundle;

#
# Core Perl modules
#
use strict;
use warnings;
use POSIX qw(locale_h);
use Config;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method new
# Constructor
# Initialize PropertiesResourceBundle
# @param locale_type
# @param property_files: List of property files to be processed.
# The tuple should be of the form (package, resource_name) as an associative array. For ex: If a file named
# runtime.properties is present in Com/Vmware/Vapi/Settings package, the tuple to be
# passed is ('Com/Vmware/Vapi/Settings', 'runtime.properties')
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self           = {};
   my $locale_type    = $args{locale_type};
   my @property_files = $args{property_files};
   setlocale( LC_ALL, $locale_type );

   $self->{locale_type} = $locale_type;
   if ( ref( \@property_files ) ne 'ARRAY' ) {
      @property_files = [@property_files];
   }
   my @bundles = ();
   for my $propertyFiles (@property_files) {
      my %propFiles = @$propertyFiles;
      foreach my $path ( keys %propFiles ) {
         push @bundles,
           _resource_string(
            path         => $path,
            property_file => $propFiles{$path}
           );
      }
   }
   $self->{messages} = {};
   _parse_bundles( $self, bundles => @bundles );

   return bless( $self, $class );
}

#
# @Private method _resource_string
# Parse the property file
# @param path: package name which has property file.
# @param property_file: property file to be processed.
# @return @bundles list of string
#
sub _resource_string {
   my (%args) = @_;
   my $path = $args{path};
   my $propertyFile = $args{property_file};
   my $subroutinePath = ( caller(0) )[1];
   my $lastIndex = rindex( $subroutinePath, 'Com' );
   my $rootPath = substr $subroutinePath, 0, $lastIndex;
   my $pathSeparater = '/';
   # Check Windows OS
   if ( $Config{osname} =~ /MSWin/ ) {
      $pathSeparater = '\\';
   }

   #Absolute path of the property file
   my $prop_file_path = $rootPath . $path . $pathSeparater . $propertyFile;

   my @file_content = do {
      open my $fh, "<", $prop_file_path
        or die "could not open $prop_file_path: $!";
      <$fh>;
   };
   my $content = '';

   # Read the contents of the file as string
   while ( my $item = shift(@file_content) ) {
      $content = $content . $item;
   }
   my @bundles = ();
   push @bundles, $content;
   return @bundles;
}

#
# @private method _parse_bundles
# Parse the bundles and extract the messages
# @type bundles list of string
# @param bundles Resource bundle string extracted from the provided file
# @return None
#
sub _parse_bundles {

   # TODO: Add more tests for parsing the message bundles
   my ( $self, %args ) = @_;
   my @bundles = $args{bundles};
   foreach my $bundle (@bundles) {
      my @messages = split( "\n", $bundle );
      foreach my $message (@messages) {

         # trim: remove white space from both ends of a string
         $message =~ s/^\s+|\s+$//g;
         if ( substr( $message, 0, 1 ) ne '#' && $message =~ /=/ ) {
            my %msg = split( "=", $message );
            foreach my $key ( sort keys %msg ) {
               $self->{messages}->{$key} = $msg{$key};
            }
         }
      }
   }
}

#
# @method get_id
# Return the requested message
# @type id string
# @param id Message identifier
# @return Message template
#
sub get_id {
   my ( $self, %args ) = @_;
   my $id = $args{id};
   return $self->{messages}->{$id};
}

1;

#
# @class DictionaryResourceBundle
# Class for creating resource bundles using dictionary of messages
#
package Com::Vmware::Vapi::l10n::Bundle::DictionaryResourceBundle;

#
# Core Perl modules
#
use strict;
use warnings;
use POSIX qw(locale_h);

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method new
# Constructor
# Initialize DictionaryResourceBundle
# @param msgs: Message bundle
# @param locale_type: Locale for the resource bundle
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self        = {};
   my $locale_type = $args{locale_type};
   my %msgs        = $args{msgs};
   setlocale( LC_ALL, $locale_type );
   $self->{locale_type} = $locale_type;
   if ( ref(%msgs) ne 'HASH' ) {
      use Com::Vmware::Vapi::Util::ExceptionBase;
      throw ExceptionBase(
         'Messages should be a dictionary, an associative array or HASH');
   }
   $self->{msgs} = %msgs;
   return bless( $self, $class );
}

#
# @method get_msg_id
# Returns the message template for the given message identifier
# @type msg_id: :string
# @param msg_id: Message identifier
# @return Message template
#
sub get_msg_id {
   my ( $self, %args ) = @_;
   my $msg_id = $args{msg_id};
   return $self->{msgs}->{$msg_id};
}

1;
