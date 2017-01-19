## @class Com::Vmware::Content::Library::Item::TransferStatus
#
# The  ``Com::Vmware::Content::Library::Item::TransferStatus``   *enumerated type* 
#     defines the transfer state of a file.
#
#
#
# Constant Com::Vmware::Content::Library::Item::TransferStatus::WAITING_FOR_TRANSFER #
#Indicates that a file has been defined for a library item and its content needs to be
# uploaded.
#
# Constant Com::Vmware::Content::Library::Item::TransferStatus::TRANSFERRING #
#Indicates that data is being transferred to the file.
#
# Constant Com::Vmware::Content::Library::Item::TransferStatus::READY #
#Indicates that the file has been fully transferred and is ready to be used.
#
# Constant Com::Vmware::Content::Library::Item::TransferStatus::VALIDATING #
#Indicates that the file is being validated (checksum, type adapters).
#
# Constant Com::Vmware::Content::Library::Item::TransferStatus::ERROR #
#Indicates that there was an error transferring or validating the file.

package Com::Vmware::Content::Library::Item::TransferStatus;

use constant {
    WAITING_FOR_TRANSFER =>  'WAITING_FOR_TRANSFER',
    TRANSFERRING =>  'TRANSFERRING',
    READY =>  'READY',
    VALIDATING =>  'VALIDATING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::TransferStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.transfer_status',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::TransferStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

