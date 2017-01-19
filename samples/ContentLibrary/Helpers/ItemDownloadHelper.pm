
####################################################
# Copyright 2016 VMware, Inc.  All rights reserved.
####################################################
#
# @file ItemDownloadHelper.pm
# The file implements ItemDownloadHelper perl module.
#
# @copy 2016, VMware Inc.
#

#
# @class ItemDownloadHelper
# Helper class to perform the download related operations on content library
#
package ContentLibrary::Helpers::ItemDownloadHelper;

#
# Perl Core Modules
#
use strict;
use LWP::Simple;

#
# vApi runtime libraries
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Generated SDK's
#
use Com::Vmware::Content::Library::Item::DownloadSession::File;
use Com::Vmware::Content::Library::Item::DownloadSessionModel;
use Com::Vmware::Content::Library::Item::DownloadSession;

my $SESSION_FILE_TIMEOUT = 360;

##@method perform_download ()
# Performing download from library item using the download session.
#
# @param download_session_service
# @param download_session_file_service
# @param lib_item_service
# @param lib_item_id
# @param download_location
# @return None
#
sub perform_download {
   my (%args) = @_;

   my $download_service      = $args{'download_session_service'};
   my $download_file_service = $args{'download_session_file_service'};
   my $lib_item_service      = $args{'lib_item_service'};
   my $lib_item_id           = $args{'lib_item_id'};
   my $download_location     = $args{'download_location'};

   # Get the file names from the local file locations
   log_info( MSG => "Download start for Library Item : "
        . $lib_item_id
        . " Name : "
        . $lib_item_service->get( 'library_item_id' => $lib_item_id )
        ->get_name() );

   # create download session
   my $downloadSessionId = createDownloadSession(
      'download_service' => $download_service,
      'lib_item_id'      => $lib_item_id,
      'client_token'     => Data::UUID->new()
   );
   &downloadFiles(
      'download_service'      => $download_service,
      'download_file_service' => $download_file_service,
      'download_session_id'   => $downloadSessionId,
      'download_location'     => $download_location
   );

   # delete the download session.
   $download_service->delete( 'download_session_id' => $downloadSessionId );
}

##@method createDownloadSession ()
# Creating download session.
#
# @param download_service
# @param lib_item_id
# @param client_token
# @return session id
#
sub createDownloadSession {
   my (%args)           = @_;
   my $download_service = $args{'download_service'};
   my $lib_item_id      = $args{'lib_item_id'};
   my $clientToken      = $args{'client_token'};

   my $downloadSpec =
     new Com::Vmware::Content::Library::Item::DownloadSessionModel();
   $downloadSpec->set_library_item_id( 'library_item_id' => $lib_item_id );
   my $sessionId = $download_service->create(
      'client_token' => $clientToken,
      'create_spec'  => $downloadSpec
   );
   return $sessionId;
}

##@method downloadFiles ()
# Downloading files from library item using the download session.
#
# @param download_service
# @param download_file_service
# @param download_session_id
# @param download_location
# @return None
#
sub downloadFiles {
   my (%args)                = @_;
   my $download_service      = $args{'download_service'};
   my $download_file_service = $args{'download_file_service'};
   my $session_id            = $args{'download_session_id'};
   my $dir                   = $args{'download_location'};

   my $downloadFileInfos =
     $download_file_service->list( 'download_session_id' => $session_id );
   foreach my $downloadFileInfo (@$downloadFileInfos) {
      &prepareForDownload(
         'download_service'      => $download_service,
         'download_file_service' => $download_file_service,
         'download_session_id'   => $session_id,
         'download_file_info'    => $downloadFileInfo
      );

      # Do a get after file is prepared for download.
      my $downloadFileInfo = $download_file_service->get(
         'download_session_id' => $session_id,
         'file_name'           => $downloadFileInfo->get_name()
      );

      # Download the file
      log_info( MSG => "Download File Info : " . $downloadFileInfo );
      my $downloadUrl = $downloadFileInfo->get_download_endpoint()->get_uri();
      log_info( MSG => "Download from URL : " . $downloadUrl );
      use FindBin qw($Bin);
      use File::Basename qw(dirname);
      use File::Spec::Functions qw(catdir);
      my $file_path =
        catdir( dirname($Bin), 'OvfImportExport', $dir,
         $downloadFileInfo->get_name() );
      &downloadFile(
         'download_url' => $downloadUrl,
         'file_path'    => $file_path
      );
   }
}

##@method downloadFile ()
# Download a specific file
#
# @param download_url
# @param file_path
# @return None
#
sub downloadFile {
   my (%args)       = @_;
   my $download_url = $args{'download_url'};
   my $file_path    = $args{'file_path'};

   my $rc = LWP::Simple::getstore( $download_url, $file_path );
   if ( LWP::Simple::is_error($rc) ) {
      log_info(
         MSG => "Downloading of file url: $download_url failed with $rc" );
      exit();
   }
   return;
}

##@method prepareForDownload ()
# Make sure the file to be dowloaded is ready for download
#
# @param download_service
# @param download_file_service
# @param download_session_id
# @param download_file_info
# @return None
#
sub prepareForDownload {
   my (%args)                = @_;
   my $download_service      = $args{'download_service'};
   my $download_file_service = $args{'download_file_service'};
   my $download_session_id   = $args{'download_session_id'};
   my $download_file_info    = $args{'download_file_info'};
   log_info( MSG => "Download File name : " . $download_file_info->get_name() );
   log_info( MSG => "Download File Prepare Status : "
        . $download_file_info->get_status() );
   $download_file_service->prepare(
      'download_session_id' => $download_session_id,
      'file_name'           => $download_file_info->get_name(),
      'endpoint_type' =>
        Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType::HTTPS
   );
   &waitForDownloadFileReady(
      'download_service'      => $download_service,
      'download_file_service' => $download_file_service,
      'download_session_id'   => $download_session_id,
      'file_name'             => $download_file_info->get_name(),
      'status' =>
        Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus::PREPARED,
      'time_out' => $SESSION_FILE_TIMEOUT
   );
}

##@method waitForDownloadFileReady ()
# Wait for the download file status to be prepared.
#
# @param download_service
# @param download_file_service
# @param download_session_id
# @param file_name
# @param status
# @param time_out
# @return None
#
sub waitForDownloadFileReady {
   my (%args)                = @_;
   my $download_service      = $args{'download_service'};
   my $download_file_service = $args{'download_file_service'};
   my $download_session_id   = $args{'download_session_id'};
   my $fileName              = $args{'file_name'};
   my $status                = $args{'status'};
   my $time_out              = $args{'time_out'};

   my $endTime  = time() + $time_out;
   my $fileInfo = $download_file_service->get(
      'download_session_id' => $download_session_id,
      'file_name'           => $fileName
   );
   my $currentStatus = $fileInfo->get_status();
   log_info( MSG => "Current Status : " . $currentStatus );

   if ( $currentStatus eq $status ) {
      return;
   }
   else {
      while ( $endTime > time() ) {
         my $fileInfo = $download_file_service->get(
            'download_session_id' => $download_session_id,
            'file_name'           => $fileName
         );
         my $currentStatus = $fileInfo->get_status();
         log_info( MSG => "Current Status : " . $currentStatus );
         if ( $currentStatus eq $status ) {
            return;
         }
         elsif ( $currentStatus eq
            Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus::ERROR
           )
         {
            log_info(
               MSG => "DownloadSession Info : "
                 . $download_service->get(
                  'download_session_id' => $download_session_id
                 )
            );

            my $file_list = $download_file_service->list(
               'download_session_id' => $download_session_id );
            log_info(
               MSG => "list on the downloadSessionFile : " . $file_list );
            if ( !defined($file_list) ) {
               log_info( MSG =>
"Error while waiting for download file status to be PREPARED... "
               );
               exit();
            }
         }
      }

      log_info(
         MSG => "Timeout waiting for download file status to be PREPARED,"
           . "  status : "
           . $currentStatus
      );
   }
}

1;
