## @class Com::Vmware::Esx::Settings::ComponentSource
#
# The  ``Com::Vmware::Esx::Settings::ComponentSource``   *enumerated type*  contains the
#     component&apos;s source information.
#
#
#
# Constant Com::Vmware::Esx::Settings::ComponentSource::BASE_IMAGE #
#Base image is the source for this component
#
# Constant Com::Vmware::Esx::Settings::ComponentSource::ADD_ON #
#Addon is the source for this component
#
# Constant Com::Vmware::Esx::Settings::ComponentSource::USER #
#User is the source for this component
#
# Constant Com::Vmware::Esx::Settings::ComponentSource::SOLUTION #
#Solution is the source for this component
#
# Constant Com::Vmware::Esx::Settings::ComponentSource::HARDWARE_SUPPORT_PACKAGE #
#Hardware Support Package (HSP) is the source for this component

package Com::Vmware::Esx::Settings::ComponentSource;

use constant {
    BASE_IMAGE =>  'BASE_IMAGE',
    ADD_ON =>  'ADD_ON',
    USER =>  'USER',
    SOLUTION =>  'SOLUTION',
    HARDWARE_SUPPORT_PACKAGE =>  'HARDWARE_SUPPORT_PACKAGE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::ComponentSource enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.component_source',
                           'binding_class' => 'Com::Vmware::Esx::Settings::ComponentSource');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

