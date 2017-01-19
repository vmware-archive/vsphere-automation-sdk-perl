## @class Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo``   *class* 
#     contains authentication information of a component element. <p>
# 
# For an explanation of authentication information contained within component elements,
#     see  class Com::Vmware::Vapi::Metadata::Authentication::Component .</p>

package Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Authentication::ComponentInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.authentication.component_info');
   $self->set_binding_field('key' => 'packages', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Authentication', 'type_name' => 'PackageInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_packages ()
# Gets the value of 'packages' property.
#
# @retval packages - The current value of the field.
# Authentication information of all the package elements. The key in the  *map*  is the
#     identifier of the package element and the value in the  *map*  is the authentication
#     information for the package element. <p>
# 
# For an explanation of authentication information containment within package elements,
#     see  class Com::Vmware::Vapi::Metadata::Authentication::Package .</p>
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
# Authentication information of all the package elements. The key in the  *map*  is the
#     identifier of the package element and the value in the  *map*  is the authentication
#     information for the package element. <p>
# 
# For an explanation of authentication information containment within package elements,
#     see  class Com::Vmware::Vapi::Metadata::Authentication::Package .</p>
#
sub set_packages {
   my ($self, %args) = @_;
   $self->{'packages'} = $args{'packages'}; 
   return;	
}


1;


