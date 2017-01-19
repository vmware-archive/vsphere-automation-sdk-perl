## @class Com::Vmware::Vapi::Metadata::Privilege::PackageInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::PackageInfo``   *class*  contains the
#     privilege information of a package element. <p>
# 
# For an explanation of privilege information contained within package elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::Package .</p>

package Com::Vmware::Vapi::Metadata::Privilege::PackageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::PackageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{privileges} = $args{'privileges'};
   $self->{services} = $args{'services'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::PackageInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.package_info');
   $self->set_binding_field('key' => 'privileges', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'services', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Privilege', 'type_name' => 'ServiceInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_privileges ()
# Gets the value of 'privileges' property.
#
# @retval privileges - The current value of the field.
# List of default privileges to be used for all the operations present in this package.
#     If a particular operation element has no explicit privileges defined in the privilege
#     definition file, these privileges are used for enforcing authorization.
#
# List#
sub get_privileges {
   my ($self, %args) = @_;
   return $self->{'privileges'}; 	
}

## @method set_privileges ()
# Sets the given value for 'privileges' property.
# 
# @param privileges  - New value for the field.
# List of default privileges to be used for all the operations present in this package.
#     If a particular operation element has no explicit privileges defined in the privilege
#     definition file, these privileges are used for enforcing authorization.
#
sub set_privileges {
   my ($self, %args) = @_;
   $self->{'privileges'} = $args{'privileges'}; 
   return;	
}

## @method get_services ()
# Gets the value of 'services' property.
#
# @retval services - The current value of the field.
# Information about all service elements contained in this package element that contain
#     privilege information. The key in the  *map*  is the identifier of the service element
#     and the value in the  *map*  is the privilege information for the service element. For
#     an explanation of privilege information containment within service elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::Service .
#
# Map#
sub get_services {
   my ($self, %args) = @_;
   return $self->{'services'}; 	
}

## @method set_services ()
# Sets the given value for 'services' property.
# 
# @param services  - New value for the field.
# Information about all service elements contained in this package element that contain
#     privilege information. The key in the  *map*  is the identifier of the service element
#     and the value in the  *map*  is the privilege information for the service element. For
#     an explanation of privilege information containment within service elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::Service .
#
sub set_services {
   my ($self, %args) = @_;
   $self->{'services'} = $args{'services'}; 
   return;	
}


1;


