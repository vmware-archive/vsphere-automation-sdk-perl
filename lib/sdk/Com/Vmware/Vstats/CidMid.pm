## @class Com::Vmware::Vstats::CidMid
#
#
# The  ``Com::Vmware::Vstats::CidMid``   *class*  is used to designate a counter. It
#     contains a counter id that identifies the semantical counter. There is optional
#     metadata identifier that identifies the particular generation of the counter. When
#     counter metadata is not designated vStats will use a default for the counter metadata.
#     <b>Warning:</b> This  *class*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.

package Com::Vmware::Vstats::CidMid;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CidMid structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cid} = $args{'cid'};
   $self->{mid} = $args{'mid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::CidMid');
   $self->set_binding_name('name' => 'com.vmware.vstats.cid_mid');
   $self->set_binding_field('key' => 'cid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'mid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_cid ()
# Gets the value of 'cid' property.
#
# @retval cid - The current value of the field.
# Counter Id. CID is a string with rather strong semantic consistency across deployments
#     and versions. If two CIDs are identical it implies the corresponding counters are the
#     same. <b>Warning:</b> This  *field*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_cid {
   my ($self, %args) = @_;
   return $self->{'cid'}; 	
}

## @method set_cid ()
# Sets the given value for 'cid' property.
# 
# @param cid  - New value for the field.
# Counter Id. CID is a string with rather strong semantic consistency across deployments
#     and versions. If two CIDs are identical it implies the corresponding counters are the
#     same. <b>Warning:</b> This  *field*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_cid {
   my ($self, %args) = @_;
   $self->{'cid'} = $args{'cid'}; 
   return;	
}

## @method get_mid ()
# Gets the value of 'mid' property.
#
# @retval mid - The current value of the field.
# MID is a 64-bit integer with strong consistency. Given a particular CID=cid, if two
#     MIDs are the same, then the corresponding counter-metadata objects are same.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Optional#
sub get_mid {
   my ($self, %args) = @_;
   return $self->{'mid'}; 	
}

## @method set_mid ()
# Sets the given value for 'mid' property.
# 
# @param mid  - New value for the field.
# MID is a 64-bit integer with strong consistency. Given a particular CID=cid, if two
#     MIDs are the same, then the corresponding counter-metadata objects are same.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_mid {
   my ($self, %args) = @_;
   $self->{'mid'} = $args{'mid'}; 
   return;	
}


1;


