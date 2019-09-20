## @class Com::Vmware::Content::Library::StorageBacking
#
#
# The  ``Com::Vmware::Content::Library::StorageBacking``   *class*  defines a storage
#     location where content in a library will be stored. The storage location can either be
#     a Datastore or Other type.

package Com::Vmware::Content::Library::StorageBacking;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::StorageBacking structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'DATASTORE' => ['datastore_id'],
               'OTHER' => ['storage_uri'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{datastore_id} = $args{'datastore_id'};
   $self->{storage_uri} = $args{'storage_uri'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::StorageBacking');
   $self->set_binding_name('name' => 'com.vmware.content.library.storage_backing');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'StorageBacking::Type')));
   $self->set_binding_field('key' => 'datastore_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type (DATASTORE, OTHER) of  class Com::Vmware::Content::Library::StorageBacking .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type (DATASTORE, OTHER) of  class Com::Vmware::Content::Library::StorageBacking .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_datastore_id ()
# Gets the value of 'datastore_id' property.
#
# @retval datastore_id - The current value of the field.
# Identifier of the datastore used to store the content in the library.
#
# optional#
sub get_datastore_id {
   my ($self, %args) = @_;
   return $self->{'datastore_id'}; 	
}

## @method set_datastore_id ()
# Sets the given value for 'datastore_id' property.
# 
# @param datastore_id  - New value for the field.
# Identifier of the datastore used to store the content in the library.
#
sub set_datastore_id {
   my ($self, %args) = @_;
   $self->{'datastore_id'} = $args{'datastore_id'}; 
   return;	
}

## @method get_storage_uri ()
# Gets the value of 'storage_uri' property.
#
# @retval storage_uri - The current value of the field.
# URI identifying the location used to store the content in the library. <p>
# 
#  The following URI formats are supported: </p>
# 
# <p>
# 
#  vSphere 6.5 </p>
# 
# <ul>
# <li>nfs://server/path?version=4 (for vCenter Server Appliance only) - Specifies an NFS
#     Version 4 server.</li>
# <li>nfs://server/path (for vCenter Server Appliance only) - Specifies an NFS Version 3
#     server. The nfs://server:/path format is also supported.</li>
#  <li>smb://server/path - Specifies an SMB server or Windows share.</li>
#  </ul> <p>
# 
#  vSphere 6.0 Update 1 </p>
# 
# <ul>
#  <li>nfs://server:/path (for vCenter Server Appliance only)</li>
#  <li>file://unc-server/path (for vCenter Server for Windows only)</li>
# <li>file:///mount/point (for vCenter Server Appliance only) - Local file URIs are
#     supported only when the path is a local mount point for an NFS file system. Use of
#     file URIs is strongly discouraged. Instead, use an NFS URI to specify the remote file
#     system.</li>
#  </ul> <p>
# 
#  vSphere 6.0 </p>
# 
# <ul>
#  <li>nfs://server:/path (for vCenter Server Appliance only)</li>
#  <li>file://unc-server/path (for vCenter Server for Windows only)</li>
# <li>file:///path - Local file URIs are supported but strongly discouraged because it
#     may interfere with the performance of vCenter Server.</li>
#  </ul>
#
# optional#
sub get_storage_uri {
   my ($self, %args) = @_;
   return $self->{'storage_uri'}; 	
}

## @method set_storage_uri ()
# Sets the given value for 'storage_uri' property.
# 
# @param storage_uri  - New value for the field.
# URI identifying the location used to store the content in the library. <p>
# 
#  The following URI formats are supported: </p>
# 
# <p>
# 
#  vSphere 6.5 </p>
# 
# <ul>
# <li>nfs://server/path?version=4 (for vCenter Server Appliance only) - Specifies an NFS
#     Version 4 server.</li>
# <li>nfs://server/path (for vCenter Server Appliance only) - Specifies an NFS Version 3
#     server. The nfs://server:/path format is also supported.</li>
#  <li>smb://server/path - Specifies an SMB server or Windows share.</li>
#  </ul> <p>
# 
#  vSphere 6.0 Update 1 </p>
# 
# <ul>
#  <li>nfs://server:/path (for vCenter Server Appliance only)</li>
#  <li>file://unc-server/path (for vCenter Server for Windows only)</li>
# <li>file:///mount/point (for vCenter Server Appliance only) - Local file URIs are
#     supported only when the path is a local mount point for an NFS file system. Use of
#     file URIs is strongly discouraged. Instead, use an NFS URI to specify the remote file
#     system.</li>
#  </ul> <p>
# 
#  vSphere 6.0 </p>
# 
# <ul>
#  <li>nfs://server:/path (for vCenter Server Appliance only)</li>
#  <li>file://unc-server/path (for vCenter Server for Windows only)</li>
# <li>file:///path - Local file URIs are supported but strongly discouraged because it
#     may interfere with the performance of vCenter Server.</li>
#  </ul>
#
sub set_storage_uri {
   my ($self, %args) = @_;
   $self->{'storage_uri'} = $args{'storage_uri'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::StorageBacking::Type
#
# The  ``Com::Vmware::Content::Library::StorageBacking::Type``   *enumerated type* 
#     specifies the type of the  class Com::Vmware::Content::Library::StorageBacking .
#
#
#
# Constant Com::Vmware::Content::Library::StorageBacking::Type::DATASTORE #
#The content of the library will be stored on a datastore. <p>
# 
# These are vCenter Server managed datastores, and are logical containers that hide
# specifics of each storage device. Depending on the type of storage you use, datastores can
# be backed by the following file system formats: </p>
# 
# <ul>
#  <li> Virtual Machine File System (VMFS) </li>
#  <li> Network File System (NFS) </li>
#  </ul> <p>
# 
# </p>
#
# Constant Com::Vmware::Content::Library::StorageBacking::Type::OTHER #
#The content of the library will be stored on a remote file system. <p>
# 
#  Supports the following remote file systems: </p>
# 
# <ul>
#  <li> NFS (on vCenter Server Appliance) </li>
#  <li> SMB (on vCenter Server Appliance and vCenter Server for Windows) </li>
#  </ul> <p>
# 
# </p>

package Com::Vmware::Content::Library::StorageBacking::Type;

use constant {
    DATASTORE =>  'DATASTORE',
    OTHER =>  'OTHER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::StorageBacking::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.storage_backing.type',
                           'binding_class' => 'Com::Vmware::Content::Library::StorageBacking::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


