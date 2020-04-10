## @class Com::Vmware::Esx::Settings::HardwareSupportPackageInfo
#
#
# The  ``Com::Vmware::Esx::Settings::HardwareSupportPackageInfo``   *class*  contains
#     information to describe the desired Hardware Support Package (HSP) configured for a
#     single device or distinct group of devices (typically the OEM&apos;s, including BIOS
#     and device firmware).

package Com::Vmware::Esx::Settings::HardwareSupportPackageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::HardwareSupportPackageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pkg} = $args{'pkg'};
   $self->{version} = $args{'version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::HardwareSupportPackageInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support_package_info');
   $self->set_binding_field('key' => 'pkg', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_pkg ()
# Gets the value of 'pkg' property.
#
# @retval pkg - The current value of the field.
# Identifier of Hardware Support Package (HSP) selected
#
# ID#
sub get_pkg {
   my ($self, %args) = @_;
   return $self->{'pkg'}; 	
}

## @method set_pkg ()
# Sets the given value for 'pkg' property.
# 
# @param pkg  - New value for the field.
# Identifier of Hardware Support Package (HSP) selected
#
sub set_pkg {
   my ($self, %args) = @_;
   $self->{'pkg'} = $args{'pkg'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the Hardware Support Package (HSP) selected (e.g. &quot;20180128.1&quot; or
#     &quot;v42&quot;)
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the Hardware Support Package (HSP) selected (e.g. &quot;20180128.1&quot; or
#     &quot;v42&quot;)
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}


1;


