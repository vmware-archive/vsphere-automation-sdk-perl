## @class Com::Vmware::Vcenter::Lcm::History
#
#
# Configuration of the data to be exported during upgrade/migrate.

package Com::Vmware::Vcenter::Lcm::History;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::History structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{defer_import} = $args{'defer_import'};
   $self->{data_set} = $args{'data_set'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::History');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.history');
   $self->set_binding_field('key' => 'defer_import', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'data_set', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'History::DataSetType')));
   bless $self, $class;
   return $self;
}

## @method get_defer_import ()
# Gets the value of 'defer_import' property.
#
# @retval defer_import - The current value of the field.
# A flag to indicate whether the import of historical data should be deferred until
#     after upgrade/migrate.
#
# Optional#
sub get_defer_import {
   my ($self, %args) = @_;
   return $self->{'defer_import'}; 	
}

## @method set_defer_import ()
# Sets the given value for 'defer_import' property.
# 
# @param defer_import  - New value for the field.
# A flag to indicate whether the import of historical data should be deferred until
#     after upgrade/migrate.
#
sub set_defer_import {
   my ($self, %args) = @_;
   $self->{'defer_import'} = $args{'defer_import'}; 
   return;	
}

## @method get_data_set ()
# Gets the value of 'data_set' property.
#
# @retval data_set - The current value of the field.
# The type of data to be upgraded/migrated.
#
# Optional#
sub get_data_set {
   my ($self, %args) = @_;
   return $self->{'data_set'}; 	
}

## @method set_data_set ()
# Sets the given value for 'data_set' property.
# 
# @param data_set  - New value for the field.
# The type of data to be upgraded/migrated.
#
sub set_data_set {
   my ($self, %args) = @_;
   $self->{'data_set'} = $args{'data_set'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::History::DataSetType
#
# The type of data to be upgraded/migrated.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::History::DataSetType::EVENTS_TASKS #
#event data and task data.
#
# Constant Com::Vmware::Vcenter::Lcm::History::DataSetType::NONE #
#core only.
#
# Constant Com::Vmware::Vcenter::Lcm::History::DataSetType::ALL #
#core, event and task data.

package Com::Vmware::Vcenter::Lcm::History::DataSetType;

use constant {
    EVENTS_TASKS =>  'EVENTS_TASKS',
    NONE =>  'NONE',
    ALL =>  'ALL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::History::DataSetType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.history.data_set_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::History::DataSetType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


