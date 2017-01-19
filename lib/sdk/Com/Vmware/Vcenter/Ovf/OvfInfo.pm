## @class Com::Vmware::Vcenter::Ovf::OvfInfo
#
#
# The  ``Com::Vmware::Vcenter::Ovf::OvfInfo``   *class*  contains informational messages
#     related to accessing, validating, deploying, or exporting an OVF package.

package Com::Vmware::Vcenter::Ovf::OvfInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::OvfInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{messages} = $args{'messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::OvfInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.ovf_info');
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# A  *list*  of localizable messages (see  class
#     Com::Vmware::Vapi::Std::LocalizableMessage ).
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# A  *list*  of localizable messages (see  class
#     Com::Vmware::Vapi::Std::LocalizableMessage ).
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}


1;


