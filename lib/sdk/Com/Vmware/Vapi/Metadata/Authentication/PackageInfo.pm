## @class Com::Vmware::Vapi::Metadata::Authentication::PackageInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Authentication::PackageInfo``   *class*  contains
#     authentication information of a package element. <p>
# 
# For an explanation of authentication information contained within package elements,
#     see  class Com::Vmware::Vapi::Metadata::Authentication::Package .</p>

package Com::Vmware::Vapi::Metadata::Authentication::PackageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Authentication::PackageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{schemes} = $args{'schemes'};
   $self->{services} = $args{'services'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Authentication::PackageInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.authentication.package_info');
   $self->set_binding_field('key' => 'schemes', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Authentication', 'type_name' => 'AuthenticationInfo')));
   $self->set_binding_field('key' => 'services', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Authentication', 'type_name' => 'ServiceInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_schemes ()
# Gets the value of 'schemes' property.
#
# @retval schemes - The current value of the field.
# List of authentication schemes to be used for all the operation elements contained in
#     this package element. If a particular service or operation element has no explicit
#     authentications defined in the authentication defintion file, these authentication
#     schemes are used for authenticating the user.
#
# List#
sub get_schemes {
   my ($self, %args) = @_;
   return $self->{'schemes'}; 	
}

## @method set_schemes ()
# Sets the given value for 'schemes' property.
# 
# @param schemes  - New value for the field.
# List of authentication schemes to be used for all the operation elements contained in
#     this package element. If a particular service or operation element has no explicit
#     authentications defined in the authentication defintion file, these authentication
#     schemes are used for authenticating the user.
#
sub set_schemes {
   my ($self, %args) = @_;
   $self->{'schemes'} = $args{'schemes'}; 
   return;	
}

## @method get_services ()
# Gets the value of 'services' property.
#
# @retval services - The current value of the field.
# Information about all service elements contained in this package element that contain
#     authentication information. The key in the  *map*  is the identifier of the service
#     element and the value in the  *map*  is the authentication information for the service
#     element. <p>
# 
# For an explanation of authentication information containment within service elements,
#     see  class Com::Vmware::Vapi::Metadata::Authentication::Service .</p>
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
#     authentication information. The key in the  *map*  is the identifier of the service
#     element and the value in the  *map*  is the authentication information for the service
#     element. <p>
# 
# For an explanation of authentication information containment within service elements,
#     see  class Com::Vmware::Vapi::Metadata::Authentication::Service .</p>
#
sub set_services {
   my ($self, %args) = @_;
   $self->{'services'} = $args{'services'}; 
   return;	
}


1;


