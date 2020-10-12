## @class Com::Vmware::Vcenter::Deployment::CheckInfo
#
#
# The  ``Com::Vmware::Vcenter::Deployment::CheckInfo``   *class*  describes the result
#     of the appliance deployment check. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::CheckInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::CheckInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{result} = $args{'result'};
   $self->{source_info} = $args{'source_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::CheckInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.check_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'CheckStatus'));
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Notifications')));
   $self->set_binding_field('key' => 'source_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'SourceInfo')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the check. This  *field*  was added in vSphere API 6.7.
#
# CheckStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the check. This  *field*  was added in vSphere API 6.7.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_result ()
# Gets the value of 'result' property.
#
# @retval result - The current value of the field.
# Result of the check. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_result {
   my ($self, %args) = @_;
   return $self->{'result'}; 	
}

## @method set_result ()
# Sets the given value for 'result' property.
# 
# @param result  - New value for the field.
# Result of the check. This  *field*  was added in vSphere API 6.7.
#
sub set_result {
   my ($self, %args) = @_;
   $self->{'result'} = $args{'result'}; 
   return;	
}

## @method get_source_info ()
# Gets the value of 'source_info' property.
#
# @retval source_info - The current value of the field.
# Information collected from the source machine. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_source_info {
   my ($self, %args) = @_;
   return $self->{'source_info'}; 	
}

## @method set_source_info ()
# Sets the given value for 'source_info' property.
# 
# @param source_info  - New value for the field.
# Information collected from the source machine. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_source_info {
   my ($self, %args) = @_;
   $self->{'source_info'} = $args{'source_info'}; 
   return;	
}


1;


