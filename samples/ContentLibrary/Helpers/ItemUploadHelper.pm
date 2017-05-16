#
##############################################################
# Copyright (c) VMware, Inc. 2016, 2017.  All Rights Reserved.
# SPDX-License-Identifier: MIT
##############################################################
#
# DISCLAIMER. THIS PROGRAM IS PROVIDED TO YOU "AS IS" WITHOUT
# WARRANTIES OR CONDITIONS # OF ANY KIND, WHETHER ORAL OR WRITTEN,
# EXPRESS OR IMPLIED. THE AUTHOR SPECIFICALLY # DISCLAIMS ANY IMPLIED
# WARRANTIES OR CONDITIONS OF MERCHANTABILITY, SATISFACTORY # QUALITY,
# NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
#

$__author__ = 'VMware, Inc.';
$__copyright__ = 'Copyright 2016, 2017 VMware, Inc. All rights reserved.';
$__vcenter_version__ = '6.0+';

#
# @class ItemUploadHelper
# Helper class to perform the upload related operations on content library
#
package ContentLibrary::Helpers::ItemUploadHelper;

#
# Perl Core Modules
#
use strict;
use File::Basename;
use File::Copy;
use File::Temp qw/ tempdir tempfile /;
use File::Spec qw/rel2abs/;

#
# Sample helper module
#
use ContentLibrary::Helpers::ClsApiHelper;

#
# vApi runtime libraries
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Generated SDK's
#
use Com::Vmware::Content::Library::Item::Updatesession::File;
use Com::Vmware::Content::Library::Item::UpdateSessionModel;
use Com::Vmware::Content::LibraryModel;

#
# Helper class
#

##@method upload_files ()
# Performing upload into library item using the update session.
#
# @param update_session_service
# @param update_session_file_service
# @param item_service
# @param lib_item_id
# @param file_locations
# @param vCenter's username
# @param vCenter's password
# @return None
#
sub upload_files {
   my (%args) = @_;

   my $update_session_service      = $args{'update_session_service'};
   my $update_session_file_service = $args{'update_session_file_service'};
   my $item_service                = $args{'item_service'};
   my $lib_item_id                 = $args{'lib_item_id'};
   my $file_locations              = $args{'file_locations'};

   # Get the file names from the local file locations
   my $filenames = [];
   foreach my $file (@$file_locations) {
      push( @$filenames, File::Basename::basename($file) );
   }

   # Create a new upload session for uploading the files
   my $session_id = create_upload_session(
      'update_session_service' => $update_session_service,
      'item_service'           => $item_service,
      'lib_item_id'            => $lib_item_id
   );

   # Add the files to the item and PUT the file to the transfer URL
   upload_files_in_session(
      'update_session_file_service' => $update_session_file_service,
      'session_id'                  => $session_id,
      'filenames'                   => $filenames,
      'file_locations'              => $file_locations
   );

   # Check if there were any invalid or missing files
   my $validation_result = $update_session_file_service->validate(
      'update_session_id' => $session_id );
   my $invalid_files = $validation_result->get_invalid_files();
   my $missing_files = $validation_result->get_missing_files();
   log_info( MSG => "UploadSession Info: "
        . $update_session_service->get( 'update_session_id' => $session_id ) );
   if ( scalar(@$invalid_files) == 0 ) {
      log_info( MSG => "Invalid Files: " );
   }
   else {
      my $size = scalar(@$invalid_files);
      log_info( MSG => "Invalid Files: " );
      for ( my $i = 0 ; $i < $size ; $i++ ) {
         log_info( MSG => ' '
              . $i + 1 . '. '
              . $invalid_files->[$i]->get_error_message()->get_default_message()
         );
      }
   }
   if ( scalar(@$missing_files) == 0 ) {
      log_info( MSG => "Missing Files: " );
   }
   else {
      my $size = scalar(@$missing_files);
      log_info( MSG => "Missing Files: " );
      for ( my $i = 0 ; $i < $size ; $i++ ) {
         log_info( MSG => ' '
              . $i + 1 . '. '
              . $missing_files->[$i]->get_error_message()->get_default_message()
         );
      }
   }
   if ( !@$missing_files && !@$invalid_files ) {
      $update_session_service->complete( 'update_session_id' => $session_id );

      # Delete the update session once the upload is done to free up the session
      $update_session_service->delete( 'update_session_id' => $session_id );
   }

   if (@$invalid_files) {
      $update_session_service->fail(
         'update_session_id'    => $session_id,
         'client_error_message' => $invalid_files->[0]->get_error_message()
      );
      $update_session_service->delete( 'update_session_id' => $session_id );
   }

   if (@$missing_files) {
      $update_session_service->fail(
         'update_session_id'    => $session_id,
         'client_error_message' => $missing_files->[0]->get_error_message()
      );
      $update_session_service->delete( 'update_session_id' => $session_id );
   }

   # Verify that the content version number has incremented after the commit
   log_info( MSG => "The Library Item version after the upload commit:"
        . $item_service->get( 'library_item_id' => $lib_item_id )
        ->get_content_version() );
}

##@method create_upload_session ()
# Create a new upload session.
#
# @param update_session_service
# @param item_service
# @param lib_item_id
# @return None
#
sub create_upload_session {
   my (%args) = @_;

   my $update_session_service = $args{'update_session_service'};
   my $item_service           = $args{'item_service'};
   my $lib_item_id            = $args{'lib_item_id'};

   my $current_version =
     $item_service->get( 'library_item_id' => $lib_item_id )
     ->get_content_version();
   my $create_spec =
     new Com::Vmware::Content::Library::Item::UpdateSessionModel();
   $create_spec->set_library_item_id( 'library_item_id' => $lib_item_id );
   $create_spec->set_library_item_content_version(
      'library_item_content_version' => $current_version );
   my $client_token = ContentLibrary::Helpers::ClsApiHelper::generate_uuid();
   my $session_id   = $update_session_service->create(
      'client_token' => $client_token,
      'create_spec'  => $create_spec
   );
   return $session_id;
}

##@method upload_files_in_session ()
# Uploading files into library item using the update session file service.
#
# @param update_session_file_service
# @param session_id
# @param filenames
# @param file_locations
# @return None
#
sub upload_files_in_session {
   my (%args)                      = @_;
   my $update_session_file_service = $args{'update_session_file_service'};
   my $session_id                  = $args{'session_id'};
   my $filenames                   = $args{'filenames'};
   my $file_locations              = $args{'file_locations'};

   for ( my $i = 0 ; $i < @$file_locations ; $i++ ) {
      upload_file(
         'update_session_file_service' => $update_session_file_service,
         'session_id'                  => $session_id,
         'filename'                    => $filenames->[$i],
         'file_location'               => $file_locations->[$i]
      );
   }
}

##@method upload_file ()
# Uploading a file into library item using the update session file service.
#
# @param update_session_file_service
# @param session_id
# @param filename
# @param file_location
# @return file info object
#
sub upload_file {
   my (%args) = @_;

   my $update_session_file_service = $args{'update_session_file_service'};
   my $session_id                  = $args{'session_id'};
   my $filename                    = $args{'filename'};
   my $file_location               = $args{'file_location'};

   log_info( MSG =>
"Session_ID: ${session_id}; Filename: ${filename}; File Location: ${file_location}"
   );

   # Add the file spec to the upload file service
   my $add_spec =
     new Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec();
   $add_spec->set_name( 'name' => $filename );
   $add_spec->set_source_type( 'source_type' =>
        Com::Vmware::Content::Library::Item::Updatesession::File::SourceType::PUSH
   );
   $add_spec->set_size( 'size' => -s $file_location );
   $update_session_file_service->add(
      'update_session_id' => $session_id,
      'file_spec'         => $add_spec
   );

   # Do a get on the file, verify the information is the same
   my $file_info = $update_session_file_service->get(
      'update_session_id' => $session_id,
      'file_name'         => $filename
   );

   # Get the transfer uri
   my $transfer_url = $file_info->get_upload_endpoint()->get_uri();

   log_info( MSG => "Upload/Transfer URL: $transfer_url" );
   log_info( MSG => "File location: $file_location" );

   my $fh = IO::File->new( $file_location, "r" );

   upload( 'url' => $transfer_url, 'fh' => $fh );

   $file_info = $update_session_file_service->get(
      'update_session_id' => $session_id,
      'file_name'         => $filename
   );

   do {
      sleep(10);
      $file_info = $update_session_file_service->get(
         'update_session_id' => $session_id,
         'file_name'         => $filename
      );

   } while ( $file_info->get_bytes_transferred() != $file_info->get_size() );
   return $file_info;
}

##@method create_temp_dir ()
# Create a temp directory.
#
# @param prefix
# @return created temp directory name
#
sub create_temp_dir {
   my (%args)   = @_;
   my $prefix   = $args{'prefix'};
   my $template = $prefix . "-XXXX";
   my $temp = File::Temp::tempdir( $template, CLEANUP => 1 );
   return $temp;
}

##@method copy_resource_to_file ()
# Copying resource file into temp directory.
#
# @param resource_name
# @param dir
# @param filename
# @return absolute path of resource file
#
sub copy_resource_to_file {
   my (%args) = @_;

   my $resource_name = $args{'resource_name'};
   my $dir           = $args{'dir'};
   my $filename      = $args{'filename'};

   my $suffix = ( File::Basename::fileparse( $resource_name, qr/\.[^.]*/ ) )[2];

   my ( $fh, $temp ) = File::Temp::tempfile(
      ( File::Basename::fileparse( $filename, qr/\.[^.]*/ ) )[0] . "-XXXX",
      DIR    => $dir,
      SUFFIX => $suffix
   );

   File::Copy::copy( $resource_name, $temp )
     or die "Copy resource to file failed: $!";
   return File::Spec->rel2abs($temp);
}

##@method upload ()
# upload file (i.e. ovf/iso) on the server.
#
# @param url
# @param fh
# @return None
#
sub upload {
   my (%args) = @_;
   my $url    = $args{'url'};
   my $fh     = $args{'fh'};
   my $content;
   binmode($fh);
   {
      local $/;
      $content = <$fh>;
   }

   close($fh);
   my $ua = new LWP::UserAgent();
   $ua->timeout(3600);
   my $header = new HTTP::Headers();
   $header->header( 'Content-Type' => 'application/octet-stream' );
   my $request =
     HTTP::Request->new( my $method = 'POST', $url, $header, $content );
   my $result = $ua->request($request);
   return;
}

##@method create_library_item ()
# Create a library item in the specified library.
#
# @param item_service
# @param library_id
# @param name
# @param library_item_type
#
# @return library item
#
sub create_library_item {
   my (%args)            = @_;
   my $item_service      = $args{'item_service'};
   my $library_id        = $args{'library_id'};
   my $library_item_name = $args{'name'};
   my $item_type         = $args{'library_item_type'};

   my $lib_item_spec = get_library_item_spec(
      'library_id'        => $library_id,
      'name'              => $library_item_name,
      'description'       => 'item update',
      'library_item_type' => $item_type
   );
   my $client_token = ContentLibrary::Helpers::ClsApiHelper::generate_uuid();
   my $lib_item_id  = $item_service->create(
      'client_token' => $client_token,
      'create_spec'  => $lib_item_spec
   );
   my $library_item = $item_service->get( 'library_item_id' => $lib_item_id );
   return $library_item->get_id();
}

##@method get_library_item_spec ()
# Construct a library item spec.
#
# @param library_id
# @param name
# @param description
# @param library_item_type
#
# @return library item spec
#
sub get_library_item_spec {
   my (%args)        = @_;
   my $library_id    = $args{'library_id'};
   my $name          = $args{'name'};
   my $description   = $args{'description'};
   my $type          = $args{'library_item_type'};
   my $lib_item_spec = new Com::Vmware::Content::Library::ItemModel();
   $lib_item_spec->set_name( 'name' => $name );
   $lib_item_spec->set_description( 'description' => $description );
   $lib_item_spec->set_library_id( 'library_id' => $library_id );
   $lib_item_spec->set_type( 'type' => $type );
   return $lib_item_spec;
}

##@method create_local_library ()
# Create a local library.
#
# @param storage_backings Storage for the library
# @param lib_name Name of the library
#
# @return id of the created library
#
sub create_local_library {
   my (%args)                = @_;
   my $local_library_service = $args{'local_library_service'};
   my $storage_backings      = $args{'storage_backings'};
   my $lib_name              = $args{'lib_name'};
   my $create_spec           = new Com::Vmware::Content::LibraryModel();
   $create_spec->set_name( 'name' => $lib_name );
   $create_spec->set_storage_backings(
      'storage_backings' => $storage_backings );
   $create_spec->set_type(
      'type' => Com::Vmware::Content::LibraryModel::LibraryType::LOCAL );
   $create_spec->set_description(
      'description' => 'Local library backed by VC datastore' );
   my $client_token = ContentLibrary::Helpers::ClsApiHelper::generate_uuid();

   # Create a local content library backed the VC datastore
   my $library_id = $local_library_service->create(
      'create_spec'  => $create_spec,
      'client_token' => $client_token
   );
   log_info( MSG => "Local library created, ID: " . $library_id );
   return $library_id;
}

1;
