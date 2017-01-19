## @class Com::Vmware::Vapi::Metadata::Privilege::ComponentData
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::ComponentData``   *class*  contains the
#     privilege information of the component along with its fingerprint.

package Com::Vmware::Vapi::Metadata::Privilege::ComponentData;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::ComponentData structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::ComponentData');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.component_data');
   $self->set_binding_field('key' => 'info', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Privilege', 'type_name' => 'ComponentInfo'));
   $self->set_binding_field('key' => 'fingerprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_info ()
# Gets the value of 'info' property.
#
# @retval info - The current value of the field.
# Privilege information of the component. This includes information about all the 
#     *packages*  in the component.
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
# Privilege information of the component. This includes information about all the 
#     *packages*  in the component.
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
# Fingerprint of the metadata of the component. <p>
# 
# Privilege information could change when there is an infrastructure update. Since the
#     data present in  :attr:`Com::Vmware::Vapi::Metadata::Privilege::ComponentData.info` 
#     could be quite large,  ``fingerprint``  provides a convenient way to check if the data
#     for a particular component is updated. </p>
# 
# <p>
# 
# You should store the fingerprint associated with a component. After an update, by
#     invoking the  :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.fingerprint`  
#     *method* , you can retrieve the new fingerprint for the component. If the new
#     fingerprint and the previously stored fingerprint do not match, clients can then use
#     the  :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.get`  to retrieve the
#     new privilege information for the component.</p>
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
# Fingerprint of the metadata of the component. <p>
# 
# Privilege information could change when there is an infrastructure update. Since the
#     data present in  :attr:`Com::Vmware::Vapi::Metadata::Privilege::ComponentData.info` 
#     could be quite large,  ``fingerprint``  provides a convenient way to check if the data
#     for a particular component is updated. </p>
# 
# <p>
# 
# You should store the fingerprint associated with a component. After an update, by
#     invoking the  :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.fingerprint`  
#     *method* , you can retrieve the new fingerprint for the component. If the new
#     fingerprint and the previously stored fingerprint do not match, clients can then use
#     the  :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.get`  to retrieve the
#     new privilege information for the component.</p>
#
sub set_fingerprint {
   my ($self, %args) = @_;
   $self->{'fingerprint'} = $args{'fingerprint'}; 
   return;	
}


1;


