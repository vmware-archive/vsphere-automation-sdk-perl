## @class Com::Vmware::Vcenter::Lcm::CeipOnlySso
#
#
# The SSO definition that only contains CEIP setting.

package Com::Vmware::Vcenter::Lcm::CeipOnlySso;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::CeipOnlySso structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ceip_enabled} = $args{'ceip_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::CeipOnlySso');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.ceip_only_sso');
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# This key describes the enabling option for the VMware&apos;s Customer Experience
#     Improvement Program (CEIP). By default we have  ``ceipEnabled`` : true, which
#     indicates that you are joining CEIP. If you prefer not to participate in the
#     VMware&apos;s CEIP for this product, you must disable CEIP by setting  ``ceipEnabled``
#     : false. You may join or leave VMware&apos;s CEIP for this product at any time.
#
# Optional#
sub get_ceip_enabled {
   my ($self, %args) = @_;
   return $self->{'ceip_enabled'}; 	
}

## @method set_ceip_enabled ()
# Sets the given value for 'ceip_enabled' property.
# 
# @param ceip_enabled  - New value for the field.
# This key describes the enabling option for the VMware&apos;s Customer Experience
#     Improvement Program (CEIP). By default we have  ``ceipEnabled`` : true, which
#     indicates that you are joining CEIP. If you prefer not to participate in the
#     VMware&apos;s CEIP for this product, you must disable CEIP by setting  ``ceipEnabled``
#     : false. You may join or leave VMware&apos;s CEIP for this product at any time.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


