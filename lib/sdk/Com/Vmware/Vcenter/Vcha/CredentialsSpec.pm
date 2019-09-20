## @class Com::Vmware::Vcenter::Vcha::CredentialsSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::CredentialsSpec``   *class*  contains information
#     to connect to the vCenter server managing the VCHA nodes. This  *class*  was added in
#     vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::CredentialsSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::CredentialsSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{active_location} = $args{'active_location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::CredentialsSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.credentials_spec');
   $self->set_binding_field('key' => 'active_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'ConnectionSpec'));
   bless $self, $class;
   return $self;
}

## @method get_active_location ()
# Gets the value of 'active_location' property.
#
# @retval active_location - The current value of the field.
# Connection information for the management vCenter Server of the Active Node in a VCHA
#     Cluster. This  *field*  was added in vSphere API 6.7.1.
#
# ConnectionSpec#
sub get_active_location {
   my ($self, %args) = @_;
   return $self->{'active_location'}; 	
}

## @method set_active_location ()
# Sets the given value for 'active_location' property.
# 
# @param active_location  - New value for the field.
# Connection information for the management vCenter Server of the Active Node in a VCHA
#     Cluster. This  *field*  was added in vSphere API 6.7.1.
#
sub set_active_location {
   my ($self, %args) = @_;
   $self->{'active_location'} = $args{'active_location'}; 
   return;	
}


1;


