## @class Com::Vmware::Vcenter::Ovf::VcenterExtensionParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::VcenterExtensionParams``   *class*  specifies that
#     the OVF package should be registered as a vCenter extension. The virtual machine or
#     virtual appliance will gain unrestricted access to the vCenter Server APIs. It must be
#     connected to a network with connectivity to the vCenter server. <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::VcenterExtensionParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::VcenterExtensionParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{required} = $args{'required'};
   $self->{registration_accepted} = $args{'registration_accepted'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::VcenterExtensionParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.vcenter_extension_params');
   $self->set_binding_field('key' => 'required', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'registration_accepted', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_required ()
# Gets the value of 'required' property.
#
# @retval required - The current value of the field.
# Whether registration as a vCenter extension is required.
#
# optional#
sub get_required {
   my ($self, %args) = @_;
   return $self->{'required'}; 	
}

## @method set_required ()
# Sets the given value for 'required' property.
# 
# @param required  - New value for the field.
# Whether registration as a vCenter extension is required.
#
sub set_required {
   my ($self, %args) = @_;
   $self->{'required'} = $args{'required'}; 
   return;	
}

## @method get_registration_accepted ()
# Gets the value of 'registration_accepted' property.
#
# @retval registration_accepted - The current value of the field.
# Whether registration as a vCenter extension is accepted. <p>
# 
# If registration as a vCenter extension is required (see 
#     :attr:`Com::Vmware::Vcenter::Ovf::VcenterExtensionParams.required` ), this must be set
#     to true during deployment. Defaults to false when returned from server.</p>
#
# optional#
sub get_registration_accepted {
   my ($self, %args) = @_;
   return $self->{'registration_accepted'}; 	
}

## @method set_registration_accepted ()
# Sets the given value for 'registration_accepted' property.
# 
# @param registration_accepted  - New value for the field.
# Whether registration as a vCenter extension is accepted. <p>
# 
# If registration as a vCenter extension is required (see 
#     :attr:`Com::Vmware::Vcenter::Ovf::VcenterExtensionParams.required` ), this must be set
#     to true during deployment. Defaults to false when returned from server.</p>
#
sub set_registration_accepted {
   my ($self, %args) = @_;
   $self->{'registration_accepted'} = $args{'registration_accepted'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


