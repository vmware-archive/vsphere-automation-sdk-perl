## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus``  
#     *enumerated type*  contains the possible different status of compliance with respect
#     to target version.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus::COMPATIBLE #
#Target version is compliant with cluster hardware
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus::INCOMPATIBLE #
#Target version is not compatible with the device present in one of the hosts part of this
# cluster.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus::HCL_DATA_UNAVAILABLE #
#HCL data can not be fetched to validate cluster hardware.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus::UNAVAILABLE #
#Hosts in cluster are not available to validate cluster hardware.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus::NO_FIRMWARE_PROVIDER #
#No Firmware HSM present in Software Spec to get Firmware Details null  *class* 

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus;

use constant {
    COMPATIBLE =>  'COMPATIBLE',
    INCOMPATIBLE =>  'INCOMPATIBLE',
    HCL_DATA_UNAVAILABLE =>  'HCL_DATA_UNAVAILABLE',
    UNAVAILABLE =>  'UNAVAILABLE',
    NO_FIRMWARE_PROVIDER =>  'NO_FIRMWARE_PROVIDER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.reports.compliance_status',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::ComplianceStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

