## @class Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipal
#
#
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipal``   *class* 
#     contains a IDM principal. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipal;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipal structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::StsPrincipal');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.sts_principal');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'StsPrincipalId'));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'StsPrincipalType'));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The principal&apos;s ID. This  *field*  was added in vSphere API 7.0.0.
#
# StsPrincipalId#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The principal&apos;s ID. This  *field*  was added in vSphere API 7.0.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of the principal (user or group). This  *field*  was added in vSphere API
#     7.0.0.
#
# StsPrincipalType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of the principal (user or group). This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


