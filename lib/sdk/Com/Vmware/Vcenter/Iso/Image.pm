########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Image.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Iso::Image
# Provides an interface to mount and unmount an ISO image on a virtual machine. <p>
# 
# This is an API that will let its client mount or unmount an ISO image on a virtual
#     machine as a CD-ROM. </p>
#

package Com::Vmware::Vcenter::Iso::Image;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Vcenter::Iso::ImageStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method mount ()
# Mounts an ISO image from a content library on a virtual machine.
#
# Note:
# Privileges required for this operation are System.Read, VirtualMachine.Config.AddRemoveDevice, ContentLibrary.DownloadSession.
#
# @param library_item [REQUIRED] The identifier of the library item having the ISO image to mount on the virtual
#     machine.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param vm [REQUIRED] The identifier of the virtual machine where the specified ISO image will be mounted.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# The identifier of the newly created virtual CD-ROM backed by the specified ISO image.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If either  ``vm``  or the  ``library_item``  is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If no .iso file is present on the library item.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# When the operation is not allowed on the virtual machine in its current state.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Config.AddRemoveDevice`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item``  requires  ``ContentLibrary.DownloadSession`` . </li>
# </ul>
#

sub mount {
   my ($self, %args) = @_;
   my $library_item = $args {library_item};
   my $vm = $args {vm};

   $self->validate_args (method_name => 'mount',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'mount',
                         method_args => \%args);
}


## @method unmount ()
# Unmounts a previously mounted CD-ROM using an ISO image as a backing.
#
# Note:
# Privileges required for this operation are System.Read, VirtualMachine.Config.AddRemoveDevice.
#
# @param vm [REQUIRED] The identifier of the virtual machine from which to unmount the virtual CD-ROM.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param cdrom [REQUIRED] The device identifier of the CD-ROM.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the virtual machine identified by  ``vm``  is not found or the  ``cdrom``  does not
#     identify a virtual CD-ROM in the virtual machine.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# When the operation is not allowed on the virtual machine in its current state.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Config.AddRemoveDevice`` . </li>
# <li> The resource  ``com.vmware.vcenter.vm.hardware.Cdrom``  referenced by the 
#     *parameter*   ``cdrom``  requires  ``System.Read`` . </li>
# </ul>
#

sub unmount {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $cdrom = $args {cdrom};

   $self->validate_args (method_name => 'unmount',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'unmount',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Iso::Image service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Iso::Image service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Iso::Image service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Iso::Image service
#########################################################################################
