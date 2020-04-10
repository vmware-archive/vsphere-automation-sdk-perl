## @class Com::Vmware::Esx::Settings::HardwareSupportInfo
#
#
# The  ``Com::Vmware::Esx::Settings::HardwareSupportInfo``   *class*  contains
#     information to describe the desired Hardware Support Package (HSP) configured for a
#     cluster.

package Com::Vmware::Esx::Settings::HardwareSupportInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::HardwareSupportInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::HardwareSupportInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support_info');
   $self->set_binding_field('key' => 'packages', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HardwareSupportPackageInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_packages ()
# Gets the value of 'packages' property.
#
# @retval packages - The current value of the field.
# Map of Hardware Support Packages (HSPs) for the cluster. The key is the Hardware
#     Support Manager (HSM) identifier and the value is the specification detailing the HSP
#     configured for that HSM.
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
# Map of Hardware Support Packages (HSPs) for the cluster. The key is the Hardware
#     Support Manager (HSM) identifier and the value is the specification detailing the HSP
#     configured for that HSM.
#
sub set_packages {
   my ($self, %args) = @_;
   $self->{'packages'} = $args{'packages'}; 
   return;	
}


1;


