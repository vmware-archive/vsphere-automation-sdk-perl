## @class Com::Vmware::Vapi::Metadata::SourceType
#
# The  ``Com::Vmware::Vapi::Metadata::SourceType``   *enumerated type*  defines the
#     types of sources for API metadata. You specify the type of source when adding a
#     metadata source to a metadata service.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::SourceType::FILE #
#Indicates the metadata source is a JSON file.
#
# Constant Com::Vmware::Vapi::Metadata::SourceType::REMOTE #
#Indicates the metadata source is a remote server.

package Com::Vmware::Vapi::Metadata::SourceType;

use constant {
    FILE =>  'FILE',
    REMOTE =>  'REMOTE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::SourceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.source_type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::SourceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

