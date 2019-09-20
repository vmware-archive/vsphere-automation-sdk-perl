## @class Com::Vmware::Vcenter::Compute::Policies::Status
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::Status``   *class*  describes the
#     current status of a compute policy. <b>Warning:</b> This  *class*  is available as
#     technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Compute::Policies::Status;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::Status structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::Status');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.status');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Compute::Policies', 'type_name' => 'ObjectCompliance'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The compliance status of the policy on a specified object. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# ObjectCompliance#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The compliance status of the policy on a specified object. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;


