## @class Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo``   *class*  contains the
#     privilege information of a component element. <p>
# 
# For an explanation of privilege information contained within component elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::Component .</p>

package Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{packages} = $args{'packages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::ComponentInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.component_info');
   $self->set_binding_field('key' => 'packages', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Privilege', 'type_name' => 'PackageInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_packages ()
# Gets the value of 'packages' property.
#
# @retval packages - The current value of the field.
# Privilege information of all the package elements. The key in the  *map*  is the
#     identifier of the package element and the value in the  *map*  is the privilege
#     information for the package element. <p>
# 
# For an explanation of privilege information containment within package elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::Package .</p>
#
# Map#
sub get_packages {
   my ($self, %args) = @_;
   return $self->{'packages'}; 	
}

## @method set_packages ()
# Sets the given value for 'packages' property.
# 
# @param packages  - New value for the field.
# Privilege information of all the package elements. The key in the  *map*  is the
#     identifier of the package element and the value in the  *map*  is the privilege
#     information for the package element. <p>
# 
# For an explanation of privilege information containment within package elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::Package .</p>
#
sub set_packages {
   my ($self, %args) = @_;
   $self->{'packages'} = $args{'packages'}; 
   return;	
}


1;


