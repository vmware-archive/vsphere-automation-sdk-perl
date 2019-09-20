## @class Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal
#
#
# VMODL equivalent of com.vmware.vapi.security.PrincipalId.

package Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal structure
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
   $self->{domain} = $args{'domain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Interposition::SecurityPrincipal');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.interposition.security_principal');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Principal name.
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
# Principal name.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# Principal domain.
#
# Optional#
sub get_domain {
   my ($self, %args) = @_;
   return $self->{'domain'}; 	
}

## @method set_domain ()
# Sets the given value for 'domain' property.
# 
# @param domain  - New value for the field.
# Principal domain.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}


1;


