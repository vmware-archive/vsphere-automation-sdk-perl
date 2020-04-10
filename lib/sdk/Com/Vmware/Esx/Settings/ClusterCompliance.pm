## @class Com::Vmware::Esx::Settings::ClusterCompliance
#
#
# The  ``Com::Vmware::Esx::Settings::ClusterCompliance``   *class*  contains  *fields* 
#     to describe the compliance result of a cluster.

package Com::Vmware::Esx::Settings::ClusterCompliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::ClusterCompliance structure
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
   $self->{compliant_hosts} = $args{'compliant_hosts'};
   $self->{non_compliant_hosts} = $args{'non_compliant_hosts'};
   $self->{incompatible_hosts} = $args{'incompatible_hosts'};
   $self->{unavailable_hosts} = $args{'unavailable_hosts'};
   $self->{hosts} = $args{'hosts'};
   $self->{host_info} = $args{'host_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::ClusterCompliance');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.cluster_compliance');
   $self->set_binding_field('key' => 'impact', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComplianceImpact'));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComplianceStatus'));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   $self->set_binding_field('key' => 'scan_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'compliant_hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'non_compliant_hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'incompatible_hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'unavailable_hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostCompliance')}))));
   $self->set_binding_field('key' => 'host_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostInfo')}))));
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

## @method get_compliant_hosts ()
# Gets the value of 'compliant_hosts' property.
#
# @retval compliant_hosts - The current value of the field.
# Identifiers of compliant hosts.
#
# Set#
sub get_compliant_hosts {
   my ($self, %args) = @_;
   return $self->{'compliant_hosts'}; 	
}

## @method set_compliant_hosts ()
# Sets the given value for 'compliant_hosts' property.
# 
# @param compliant_hosts  - New value for the field.
# Identifiers of compliant hosts.
#
sub set_compliant_hosts {
   my ($self, %args) = @_;
   $self->{'compliant_hosts'} = $args{'compliant_hosts'}; 
   return;	
}

## @method get_non_compliant_hosts ()
# Gets the value of 'non_compliant_hosts' property.
#
# @retval non_compliant_hosts - The current value of the field.
# Identifiers of non-compliant hosts.
#
# Set#
sub get_non_compliant_hosts {
   my ($self, %args) = @_;
   return $self->{'non_compliant_hosts'}; 	
}

## @method set_non_compliant_hosts ()
# Sets the given value for 'non_compliant_hosts' property.
# 
# @param non_compliant_hosts  - New value for the field.
# Identifiers of non-compliant hosts.
#
sub set_non_compliant_hosts {
   my ($self, %args) = @_;
   $self->{'non_compliant_hosts'} = $args{'non_compliant_hosts'}; 
   return;	
}

## @method get_incompatible_hosts ()
# Gets the value of 'incompatible_hosts' property.
#
# @retval incompatible_hosts - The current value of the field.
# Identifiers of incompatible hosts.
#
# Set#
sub get_incompatible_hosts {
   my ($self, %args) = @_;
   return $self->{'incompatible_hosts'}; 	
}

## @method set_incompatible_hosts ()
# Sets the given value for 'incompatible_hosts' property.
# 
# @param incompatible_hosts  - New value for the field.
# Identifiers of incompatible hosts.
#
sub set_incompatible_hosts {
   my ($self, %args) = @_;
   $self->{'incompatible_hosts'} = $args{'incompatible_hosts'}; 
   return;	
}

## @method get_unavailable_hosts ()
# Gets the value of 'unavailable_hosts' property.
#
# @retval unavailable_hosts - The current value of the field.
# Identifiers of unavailable hosts. There will not be compliance details for these hosts
#     in  :attr:`Com::Vmware::Esx::Settings::ClusterCompliance.hosts` .
#
# Set#
sub get_unavailable_hosts {
   my ($self, %args) = @_;
   return $self->{'unavailable_hosts'}; 	
}

## @method set_unavailable_hosts ()
# Sets the given value for 'unavailable_hosts' property.
# 
# @param unavailable_hosts  - New value for the field.
# Identifiers of unavailable hosts. There will not be compliance details for these hosts
#     in  :attr:`Com::Vmware::Esx::Settings::ClusterCompliance.hosts` .
#
sub set_unavailable_hosts {
   my ($self, %args) = @_;
   $self->{'unavailable_hosts'} = $args{'unavailable_hosts'}; 
   return;	
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# Mapping from host identifier to the compliance information for the host.
#
# Map#
sub get_hosts {
   my ($self, %args) = @_;
   return $self->{'hosts'}; 	
}

## @method set_hosts ()
# Sets the given value for 'hosts' property.
# 
# @param hosts  - New value for the field.
# Mapping from host identifier to the compliance information for the host.
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}

## @method get_host_info ()
# Gets the value of 'host_info' property.
#
# @retval host_info - The current value of the field.
# Auxillary information about the hosts. This gives some additional information about
#     the hosts referenced in this result.
#
# Map#
sub get_host_info {
   my ($self, %args) = @_;
   return $self->{'host_info'}; 	
}

## @method set_host_info ()
# Sets the given value for 'host_info' property.
# 
# @param host_info  - New value for the field.
# Auxillary information about the hosts. This gives some additional information about
#     the hosts referenced in this result.
#
sub set_host_info {
   my ($self, %args) = @_;
   $self->{'host_info'} = $args{'host_info'}; 
   return;	
}


1;


