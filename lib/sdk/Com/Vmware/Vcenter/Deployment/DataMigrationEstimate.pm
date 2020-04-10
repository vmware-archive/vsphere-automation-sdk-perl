## @class Com::Vmware::Vcenter::Deployment::DataMigrationEstimate
#
#
# The  ``Com::Vmware::Vcenter::Deployment::DataMigrationEstimate``  { *class*  contains
#     estimated time and disk space required for the vCenter Server database migration. This
#      *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Deployment::DataMigrationEstimate;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::DataMigrationEstimate structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{estimated_export_time} = $args{'estimated_export_time'};
   $self->{estimated_import_time} = $args{'estimated_import_time'};
   $self->{required_free_disk_space_on_source} = $args{'required_free_disk_space_on_source'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::DataMigrationEstimate');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.data_migration_estimate');
   $self->set_binding_field('key' => 'estimated_export_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'estimated_import_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'required_free_disk_space_on_source', 'value' => new Com::Vmware::Vapi::Bindings::Type::DoubleType());
   bless $self, $class;
   return $self;
}

## @method get_estimated_export_time ()
# Gets the value of 'estimated_export_time' property.
#
# @retval estimated_export_time - The current value of the field.
# The time estimated to export data from the source vCenter Server. This  *field*  was
#     added in vSphere API 7.0.0.
#
# long#
sub get_estimated_export_time {
   my ($self, %args) = @_;
   return $self->{'estimated_export_time'}; 	
}

## @method set_estimated_export_time ()
# Sets the given value for 'estimated_export_time' property.
# 
# @param estimated_export_time  - New value for the field.
# The time estimated to export data from the source vCenter Server. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_estimated_export_time {
   my ($self, %args) = @_;
   $self->{'estimated_export_time'} = $args{'estimated_export_time'}; 
   return;	
}

## @method get_estimated_import_time ()
# Gets the value of 'estimated_import_time' property.
#
# @retval estimated_import_time - The current value of the field.
# The time estimated to import data to the upgraded vCenter Server. This  *field*  was
#     added in vSphere API 7.0.0.
#
# long#
sub get_estimated_import_time {
   my ($self, %args) = @_;
   return $self->{'estimated_import_time'}; 	
}

## @method set_estimated_import_time ()
# Sets the given value for 'estimated_import_time' property.
# 
# @param estimated_import_time  - New value for the field.
# The time estimated to import data to the upgraded vCenter Server. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_estimated_import_time {
   my ($self, %args) = @_;
   $self->{'estimated_import_time'} = $args{'estimated_import_time'}; 
   return;	
}

## @method get_required_free_disk_space_on_source ()
# Gets the value of 'required_free_disk_space_on_source' property.
#
# @retval required_free_disk_space_on_source - The current value of the field.
# The extra free space required on source vCenter Server. This  *field*  was added in
#     vSphere API 7.0.0.
#
# double#
sub get_required_free_disk_space_on_source {
   my ($self, %args) = @_;
   return $self->{'required_free_disk_space_on_source'}; 	
}

## @method set_required_free_disk_space_on_source ()
# Sets the given value for 'required_free_disk_space_on_source' property.
# 
# @param required_free_disk_space_on_source  - New value for the field.
# The extra free space required on source vCenter Server. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_required_free_disk_space_on_source {
   my ($self, %args) = @_;
   $self->{'required_free_disk_space_on_source'} = $args{'required_free_disk_space_on_source'}; 
   return;	
}


1;


