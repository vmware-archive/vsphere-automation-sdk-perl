##########################################################
# Copyright 2016, 2017 VMware, Inc.  All rights reserved.
# SODX-License-Identifier: MIT
##########################################################
#
# @file ClsApiClient.pm
# The file implements ClsApiClient perl module.
#
# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @vcenter version: 6.0+

#
# @class ContentLibrary::Client::ClsApiClient
# This class is used to access the services in Content Library.
#
package ContentLibrary::Client::ClsApiClient;

#
# CPAN Core Modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Generated SDK's
#
use Com::Vmware::Content::Library;
use Com::Vmware::Content::LocalLibrary;
use Com::Vmware::Content::Library::Item;
use Com::Vmware::Content::Library::SubscribedItem;
use Com::Vmware::Content::Library::Item::Storage;
use Com::Vmware::Content::Library::Item::DownloadSession;
use Com::Vmware::Content::Library::Item::UpdateSession;
use Com::Vmware::Content::Library::Item::Updatesession::File;
use Com::Vmware::Content::Library::Item::File;
use Com::Vmware::Content::Configuration;
use Com::Vmware::Content::Type;
use Com::Vmware::Vcenter::Ovf::LibraryItem;
use Com::Vmware::Vcenter::Iso::Image;

## @method new ()
# Constructor
#
# @param stub_factory
# @param stub_config
#
# @retval "Blessed object"
#
sub new {
   my ( $class, %args ) = @_;
   my $self         = {};
   my $stub_factory = $args{'stub_factory'};
   my $stub_config  = $args{'stub_config'};

   if ( defined($stub_factory) && defined($stub_config) ) {
      $self->{'library_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Library',
         'stub_config'  => $stub_config
      );
      $self->{'local_library_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::LocalLibrary',
         'stub_config'  => $stub_config
      );
      $self->{'subscribed_library_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::SubscribedLibrary',
         'stub_config'  => $stub_config
      );
      $self->{'item_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Library::Item',
         'stub_config'  => $stub_config
      );
      $self->{'subscribed_item_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Library::SubscribedItem',
         'stub_config'  => $stub_config
      );

      $self->{'storage_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Library::Item::Storage',
         'stub_config'  => $stub_config
      );
      $self->{'download_session_service'} = $stub_factory->create_stub(
         'service_name' =>
           'Com::Vmware::Content::Library::Item::DownloadSession',
         'stub_config' => $stub_config
      );
      $self->{'download_session_file_service'} = $stub_factory->create_stub(
         'service_name' =>
           'Com::Vmware::Content::Library::Item::Downloadsession::File',
         'stub_config' => $stub_config
      );
      $self->{'file_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Library::Item::File',
         'stub_config'  => $stub_config
      );
      $self->{'update_session_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Library::Item::UpdateSession',
         'stub_config'  => $stub_config
      );
      $self->{'update_session_file_service'} = $stub_factory->create_stub(
         'service_name' =>
           'Com::Vmware::Content::Library::Item::Updatesession::File',
         'stub_config' => $stub_config
      );
      $self->{'configuration_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Configuration',
         'stub_config'  => $stub_config
      );
      $self->{'type_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Content::Type',
         'stub_config'  => $stub_config
      );
      $self->{'library_item_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Vcenter::Ovf::LibraryItem',
         'stub_config'  => $stub_config
      );
      $self->{'image_service'} = $stub_factory->create_stub(
         'service_name' => 'Com::Vmware::Vcenter::Iso::Image',
         'stub_config'  => $stub_config
      );
   }
   else {
      log_info( MSG =>
"stub_factory and stub_config parameters are missing in ClsApiClient's constructer"
      );
      exit();
   }
   return bless( $self, $class );
}

## @method get_library_service ()
# Get Library service
#
# @param None
# @retval library_service Returns the type library service
# Can be null
#
sub get_library_service {
   my ( $self, %args ) = @_;
   return $self->{'library_service'};
}

## @method get_local_library_service ()
# Get local library service
#
# @param None
#
# @retval local_library_service Returns the local library service
# Can be null
#
sub get_local_library_service {
   my ( $self, %args ) = @_;
   return $self->{'local_library_service'};
}
## @method get_subscribed_library_service ()
# Get subscribed library service
#
# @param None
#
# @retval subscribed_library_service Returns the subscribed library service
#
sub get_subscribed_library_service {
   my ( $self, %args ) = @_;
   return $self->{'subscribed_library_service'};
}

## @method get_item_service ()
# Get the item service
#
# @param None
#
# @retval item_service Returns the item service
#
sub get_item_service {
   my ( $self, %args ) = @_;
   return $self->{'item_service'};
}

## @method get_subscribed_item_service ()
# Get subscribed item service
#
# @param None
# @retval subscribed_item_service Returns the subscribed item service
# Can be null
#
sub get_subscribed_item_service {
   my ( $self, %args ) = @_;
   return $self->{'subscribed_item_service'};
}

## @method get_storage_service ()
# Get storage service
#
# @param None
#
# @retval storage_service Returns the storage service
# Can be null
#
sub get_storage_service {
   my ( $self, %args ) = @_;
   return $self->{'storage_service'};
}

## @method get_download_session_service ()
# Get the download session service
#
# @param None
#
# @retval download_session_service Returns the download session service
#
sub get_download_session_service {
   my ( $self, %args ) = @_;
   return $self->{'download_session_service'};
}

## @method get_download_session_file_service ()
# Get the download session file service
#
# @param None
#
# @retval download_session_file_service Returns the download session file service
#
sub get_download_session_file_service {
   my ( $self, %args ) = @_;
   return $self->{'download_session_file_service'};
}

## @method get_file_service ()
# Get the file service
#
# @param None
#
# @retval file_service Returns the file service
#
sub get_file_service {
   my ( $self, %args ) = @_;
   return $self->{'file_service'};
}

## @method get_update_session_service ()
# Get the update session service
#
# @param None
# @retval update_session_service Returns the update session service
# Can be null
#
sub get_update_session_service {
   my ( $self, %args ) = @_;
   return $self->{'update_session_service'};
}

## @method get_update_session_file_service ()
# Get the update session file service
#
# @param None
#
# @retval update_session_file_service Returns the update session file service
# Can be null
#
sub get_update_session_file_service {
   my ( $self, %args ) = @_;
   return $self->{'update_session_file_service'};
}

## @method get_configuration_service ()
# Get the configuration service
#
# @param None
#
# @retval configuration_service Returns the configuration service
#
sub get_configuration_service {
   my ( $self, %args ) = @_;
   return $self->{'configuration_service'};
}

## @method get_type_service ()
# Get the type service
#
# @param None
#
# @retval type_service Returns the type service
#
sub get_type_service {
   my ( $self, %args ) = @_;
   return $self->{'type_service'};
}

## @method get_library_item_service ()
# Get the library item service
#
# @param None
#
# @retval library_item_service Returns the library item service
# Can be null
#
sub get_library_item_service {
   my ( $self, %args ) = @_;
   return $self->{'library_item_service'};
}

## @method get_image_service ()
# Get the image service
#
# @param None
#
# @retval image_service Returns the image service
#
sub get_image_service {
   my ( $self, %args ) = @_;
   return $self->{'image_service'};
}

1;
