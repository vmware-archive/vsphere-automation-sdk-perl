## @class Com::Vmware::Esx::Settings::HostCompliance
#
#
# The  ``Com::Vmware::Esx::Settings::HostCompliance``   *class*  contains information to
#     describe the compliance result of a host with respect to given target software
#     specification.

package Com::Vmware::Esx::Settings::HostCompliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::HostCompliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{impact} = $args{'impact'};
   $self->{status} = $args{'status'};
   $self->{notifications} = $args{'notifications'};
   $self->{scan_time} = $args{'scan_time'};
   $self->{commit} = $args{'commit'};
   $self->{base_image} = $args{'base_image'};
   $self->{add_on} = $args{'add_on'};
   $self->{hardware_support} = $args{'hardware_support'};
   $self->{components} = $args{'components'};
   $self->{solutions} = $args{'solutions'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::HostCompliance');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.host_compliance');
   $self->set_binding_field('key' => 'impact', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComplianceImpact'));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComplianceStatus'));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   $self->set_binding_field('key' => 'scan_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'base_image', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'BaseImageCompliance'));
   $self->set_binding_field('key' => 'add_on', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'AddOnCompliance'));
   $self->set_binding_field('key' => 'hardware_support', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HardwareSupportPackageCompliance')})))));
   $self->set_binding_field('key' => 'components', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentCompliance')}))));
   $self->set_binding_field('key' => 'solutions', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'SolutionCompliance')}))));
   bless $self, $class;
   return $self;
}

## @method get_impact ()
# Gets the value of 'impact' property.
#
# @retval impact - The current value of the field.
# Overall impact.
#
# ComplianceImpact#
sub get_impact {
   my ($self, %args) = @_;
   return $self->{'impact'}; 	
}

## @method set_impact ()
# Sets the given value for 'impact' property.
# 
# @param impact  - New value for the field.
# Overall impact.
#
sub set_impact {
   my ($self, %args) = @_;
   $self->{'impact'} = $args{'impact'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Overall compliance state of the host.
#
# ComplianceStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Overall compliance state of the host.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications returned by the scan operation.
#
# Notifications#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications returned by the scan operation.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}

## @method get_scan_time ()
# Gets the value of 'scan_time' property.
#
# @retval scan_time - The current value of the field.
# Scan completion time.
#
# DateTime#
sub get_scan_time {
   my ($self, %args) = @_;
   return $self->{'scan_time'}; 	
}

## @method set_scan_time ()
# Sets the given value for 'scan_time' property.
# 
# @param scan_time  - New value for the field.
# Scan completion time.
#
sub set_scan_time {
   my ($self, %args) = @_;
   $self->{'scan_time'} = $args{'scan_time'}; 
   return;	
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# Identifier of the commit on which the scan is run to generate this result.
#
# Optional#
sub get_commit {
   my ($self, %args) = @_;
   return $self->{'commit'}; 	
}

## @method set_commit ()
# Sets the given value for 'commit' property.
# 
# @param commit  - New value for the field.
# Identifier of the commit on which the scan is run to generate this result.
#
sub set_commit {
   my ($self, %args) = @_;
   $self->{'commit'} = $args{'commit'}; 
   return;	
}

## @method get_base_image ()
# Gets the value of 'base_image' property.
#
# @retval base_image - The current value of the field.
# Compliance result for the base image.
#
# BaseImageCompliance#
sub get_base_image {
   my ($self, %args) = @_;
   return $self->{'base_image'}; 	
}

## @method set_base_image ()
# Sets the given value for 'base_image' property.
# 
# @param base_image  - New value for the field.
# Compliance result for the base image.
#
sub set_base_image {
   my ($self, %args) = @_;
   $self->{'base_image'} = $args{'base_image'}; 
   return;	
}

## @method get_add_on ()
# Gets the value of 'add_on' property.
#
# @retval add_on - The current value of the field.
# Compliance result for the OEM add-on.
#
# AddOnCompliance#
sub get_add_on {
   my ($self, %args) = @_;
   return $self->{'add_on'}; 	
}

## @method set_add_on ()
# Sets the given value for 'add_on' property.
# 
# @param add_on  - New value for the field.
# Compliance result for the OEM add-on.
#
sub set_add_on {
   my ($self, %args) = @_;
   $self->{'add_on'} = $args{'add_on'}; 
   return;	
}

## @method get_hardware_support ()
# Gets the value of 'hardware_support' property.
#
# @retval hardware_support - The current value of the field.
# Compliance result for hardware support (both Hardware Support Package or HSP and
#     individual hardware module firmware) for every HSP configured, keyed by Hardware
#     Support Manager (HSM).
#
# optional#
sub get_hardware_support {
   my ($self, %args) = @_;
   return $self->{'hardware_support'}; 	
}

## @method set_hardware_support ()
# Sets the given value for 'hardware_support' property.
# 
# @param hardware_support  - New value for the field.
# Compliance result for hardware support (both Hardware Support Package or HSP and
#     individual hardware module firmware) for every HSP configured, keyed by Hardware
#     Support Manager (HSM).
#
sub set_hardware_support {
   my ($self, %args) = @_;
   $self->{'hardware_support'} = $args{'hardware_support'}; 
   return;	
}

## @method get_components ()
# Gets the value of 'components' property.
#
# @retval components - The current value of the field.
# Compliance result for all the effective components and all the components present on
#     the host. The key is the component name and value is the ComponentCompliance.
#
# Map#
sub get_components {
   my ($self, %args) = @_;
   return $self->{'components'}; 	
}

## @method set_components ()
# Sets the given value for 'components' property.
# 
# @param components  - New value for the field.
# Compliance result for all the effective components and all the components present on
#     the host. The key is the component name and value is the ComponentCompliance.
#
sub set_components {
   my ($self, %args) = @_;
   $self->{'components'} = $args{'components'}; 
   return;	
}

## @method get_solutions ()
# Gets the value of 'solutions' property.
#
# @retval solutions - The current value of the field.
# Compliance result for solutions. The key is the solution name and value is the
#     SolutionCompliance.
#
# Map#
sub get_solutions {
   my ($self, %args) = @_;
   return $self->{'solutions'}; 	
}

## @method set_solutions ()
# Sets the given value for 'solutions' property.
# 
# @param solutions  - New value for the field.
# Compliance result for solutions. The key is the solution name and value is the
#     SolutionCompliance.
#
sub set_solutions {
   my ($self, %args) = @_;
   $self->{'solutions'} = $args{'solutions'}; 
   return;	
}


1;


