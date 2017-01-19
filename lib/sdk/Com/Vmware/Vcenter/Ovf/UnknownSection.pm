## @class Com::Vmware::Vcenter::Ovf::UnknownSection
#
#
# The  ``Com::Vmware::Vcenter::Ovf::UnknownSection``   *class*  contains information
#     about an unknown section in an OVF package.

package Com::Vmware::Vcenter::Ovf::UnknownSection;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::UnknownSection structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{tag} = $args{'tag'};
   $self->{info} = $args{'info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::UnknownSection');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.unknown_section');
   $self->set_binding_field('key' => 'tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'info', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_tag ()
# Gets the value of 'tag' property.
#
# @retval tag - The current value of the field.
# A namespace-qualified tag in the form  <code>{ns}tag</code> .
#
# String#
sub get_tag {
   my ($self, %args) = @_;
   return $self->{'tag'}; 	
}

## @method set_tag ()
# Sets the given value for 'tag' property.
# 
# @param tag  - New value for the field.
# A namespace-qualified tag in the form  <code>{ns}tag</code> .
#
sub set_tag {
   my ($self, %args) = @_;
   $self->{'tag'} = $args{'tag'}; 
   return;	
}

## @method get_info ()
# Gets the value of 'info' property.
#
# @retval info - The current value of the field.
# The description of the Info element.
#
# String#
sub get_info {
   my ($self, %args) = @_;
   return $self->{'info'}; 	
}

## @method set_info ()
# Sets the given value for 'info' property.
# 
# @param info  - New value for the field.
# The description of the Info element.
#
sub set_info {
   my ($self, %args) = @_;
   $self->{'info'} = $args{'info'}; 
   return;	
}


1;


