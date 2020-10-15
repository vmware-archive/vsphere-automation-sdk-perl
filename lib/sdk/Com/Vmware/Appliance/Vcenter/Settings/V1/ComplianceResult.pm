## @class Com::Vmware::Appliance::Vcenter::Settings::V1::ComplianceResult
#
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::ComplianceResult``   *class* 
#     defines the information about scan results. <b>Warning:</b> This  *class*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::ComplianceResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::ComplianceResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{diff_results} = $args{'diff_results'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::ComplianceResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.compliance_result');
   $self->set_binding_field('key' => 'diff_results', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1', 'type_name' => 'DiffResult')}))));
   bless $self, $class;
   return $self;
}

## @method get_diff_results ()
# Gets the value of 'diff_results' property.
#
# @retval diff_results - The current value of the field.
# Map of property value differences between current software state and working profile.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Map#
sub get_diff_results {
   my ($self, %args) = @_;
   return $self->{'diff_results'}; 	
}

## @method set_diff_results ()
# Sets the given value for 'diff_results' property.
# 
# @param diff_results  - New value for the field.
# Map of property value differences between current software state and working profile.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_diff_results {
   my ($self, %args) = @_;
   $self->{'diff_results'} = $args{'diff_results'}; 
   return;	
}


1;


