## @class Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipalType
#
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipalType``   *enum*  can
#     be either users or groups. This  *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipalType::STS_USER #
#The principal is a user. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipalType::STS_GROUP #
#The principal is a group. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipalType;

use constant {
    STS_USER =>  'STS_USER',
    STS_GROUP =>  'STS_GROUP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipalType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.sts_principal_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipalType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

