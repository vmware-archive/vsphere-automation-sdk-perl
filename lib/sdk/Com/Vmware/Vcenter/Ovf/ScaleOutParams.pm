## @class Com::Vmware::Vcenter::Ovf::ScaleOutParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::ScaleOutParams``   *class*  contains information
#     about the scale-out groups described in the OVF package. <p>
# 
# When deploying an OVF package, a deployment specific instance count can be specified
#     (see  :attr:`Com::Vmware::Vcenter::Ovf::ScaleOutGroup.instance_count` . </p>
# 
# <p>
# 
#  This is based on the ovf2:ScaleOutSection. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::ScaleOutParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ScaleOutParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{groups} = $args{'groups'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::ScaleOutParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.scale_out_params');
   $self->set_binding_field('key' => 'groups', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'ScaleOutGroup'))));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_groups ()
# Gets the value of 'groups' property.
#
# @retval groups - The current value of the field.
# The  *list*  of scale-out groups.
#
# optional#
sub get_groups {
   my ($self, %args) = @_;
   return $self->{'groups'}; 	
}

## @method set_groups ()
# Sets the given value for 'groups' property.
# 
# @param groups  - New value for the field.
# The  *list*  of scale-out groups.
#
sub set_groups {
   my ($self, %args) = @_;
   $self->{'groups'} = $args{'groups'}; 
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


