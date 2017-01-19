## @class Com::Vmware::Vapi::Metadata::Metamodel::ComponentData
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ComponentData``   *class*  contains the
#     metamodel metadata information of a component element along with its fingerprint.

package Com::Vmware::Vapi::Metadata::Metamodel::ComponentData;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ComponentData structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{info} = $args{'info'};
   $self->{fingerprint} = $args{'fingerprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ComponentData');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.component_data');
   $self->set_binding_field('key' => 'info', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ComponentInfo'));
   $self->set_binding_field('key' => 'fingerprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_info ()
# Gets the value of 'info' property.
#
# @retval info - The current value of the field.
# Metamodel information of the component element. This includes information about all
#     the package elements contained in this component element. <p>
# 
# The metamodel information about a component could be quite large if there are a lot of
#     package elements contained in this component.</p>
#
# ComponentInfo#
sub get_info {
   my ($self, %args) = @_;
   return $self->{'info'}; 	
}

## @method set_info ()
# Sets the given value for 'info' property.
# 
# @param info  - New value for the field.
# Metamodel information of the component element. This includes information about all
#     the package elements contained in this component element. <p>
# 
# The metamodel information about a component could be quite large if there are a lot of
#     package elements contained in this component.</p>
#
sub set_info {
   my ($self, %args) = @_;
   $self->{'info'} = $args{'info'}; 
   return;	
}

## @method get_fingerprint ()
# Gets the value of 'fingerprint' property.
#
# @retval fingerprint - The current value of the field.
# Fingerprint of the metamodel metadata of the component component. <p>
# 
# Metamodel information could change when there is an infrastructure update and new
#     functionality is added to an existing component. </p>
# 
# <p>
# 
# Since the data present in 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ComponentData.info`  could be quite
#     large,  ``fingerprint``  provides a convenient way to check if the data for a
#     particular component is updated. </p>
# 
# <p>
# 
# You should store the fingerprint associated with a component. After an update, by
#     invoking the  :func:`Com::Vmware::Vapi::Metadata::Metamodel::Component.fingerprint`  
#     *method* , you can retrieve the new fingerprint for the component. If the new
#     fingerprint and the previously stored fingerprint do not match, clients can use the 
#     :func:`Com::Vmware::Vapi::Metadata::Metamodel::Component.get`  to retrieve the new
#     metamodel information for the component.</p>
#
# String#
sub get_fingerprint {
   my ($self, %args) = @_;
   return $self->{'fingerprint'}; 	
}

## @method set_fingerprint ()
# Sets the given value for 'fingerprint' property.
# 
# @param fingerprint  - New value for the field.
# Fingerprint of the metamodel metadata of the component component. <p>
# 
# Metamodel information could change when there is an infrastructure update and new
#     functionality is added to an existing component. </p>
# 
# <p>
# 
# Since the data present in 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::ComponentData.info`  could be quite
#     large,  ``fingerprint``  provides a convenient way to check if the data for a
#     particular component is updated. </p>
# 
# <p>
# 
# You should store the fingerprint associated with a component. After an update, by
#     invoking the  :func:`Com::Vmware::Vapi::Metadata::Metamodel::Component.fingerprint`  
#     *method* , you can retrieve the new fingerprint for the component. If the new
#     fingerprint and the previously stored fingerprint do not match, clients can use the 
#     :func:`Com::Vmware::Vapi::Metadata::Metamodel::Component.get`  to retrieve the new
#     metamodel information for the component.</p>
#
sub set_fingerprint {
   my ($self, %args) = @_;
   $self->{'fingerprint'} = $args{'fingerprint'}; 
   return;	
}


1;


