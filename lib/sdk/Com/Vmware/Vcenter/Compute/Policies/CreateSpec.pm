## @class Com::Vmware::Vcenter::Compute::Policies::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::CreateSpec``   *class*  contains
#     common information used to create a new policy. <b>Warning:</b> This  *class*  is
#     available as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Compute::Policies::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the policy. The name needs to be unique within this vCenter server.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the policy. The name needs to be unique within this vCenter server.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


