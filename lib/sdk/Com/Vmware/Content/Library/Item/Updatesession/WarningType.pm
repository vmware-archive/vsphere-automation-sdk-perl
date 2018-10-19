## @class Com::Vmware::Content::Library::Item::Updatesession::WarningType
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::WarningType``   *enumerated
#     type*  defines the warnings which can be raised during the update session. This 
#     *enumeration*  was added in vSphere API 6.7 U1.
#
#
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::WarningType::SELF_SIGNED_CERTIFICATE #
#The certificate used for signing the content is self-signed. This  *constant*  was added
# in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::WarningType::EXPIRED_CERTIFICATE #
#The certificate used for signing the content is expired. This  *constant*  was added in
# vSphere API 6.7 U1.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::WarningType::NOT_YET_VALID_CERTIFICATE #
#The certificate used for signing the content is not yet valid. This  *constant*  was added
# in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::WarningType::UNTRUSTED_CERTIFICATE #
#The certificate used for signing the content is not trusted. This  *constant*  was added
# in vSphere API 6.7 U1.

package Com::Vmware::Content::Library::Item::Updatesession::WarningType;

use constant {
    SELF_SIGNED_CERTIFICATE =>  'SELF_SIGNED_CERTIFICATE',
    EXPIRED_CERTIFICATE =>  'EXPIRED_CERTIFICATE',
    NOT_YET_VALID_CERTIFICATE =>  'NOT_YET_VALID_CERTIFICATE',
    UNTRUSTED_CERTIFICATE =>  'UNTRUSTED_CERTIFICATE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::WarningType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.updatesession.warning_type',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::WarningType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

