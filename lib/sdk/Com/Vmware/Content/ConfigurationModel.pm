## @class Com::Vmware::Content::ConfigurationModel
#
#
# The  ``Com::Vmware::Content::ConfigurationModel``   *class*  defines the global
#     settings of the Content Library Service.

package Com::Vmware::Content::ConfigurationModel;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::ConfigurationModel structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{automatic_sync_enabled} = $args{'automatic_sync_enabled'};
   $self->{automatic_sync_start_hour} = $args{'automatic_sync_start_hour'};
   $self->{automatic_sync_stop_hour} = $args{'automatic_sync_stop_hour'};
   $self->{maximum_concurrent_item_syncs} = $args{'maximum_concurrent_item_syncs'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::ConfigurationModel');
   $self->set_binding_name('name' => 'com.vmware.content.configuration_model');
   $self->set_binding_field('key' => 'automatic_sync_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'automatic_sync_start_hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'automatic_sync_stop_hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'maximum_concurrent_item_syncs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_automatic_sync_enabled ()
# Gets the value of 'automatic_sync_enabled' property.
#
# @retval automatic_sync_enabled - The current value of the field.
# Whether automatic synchronization is enabled. <p>
# 
# When automatic synchronization is enabled, the Content Library Service will
#     automatically synchronize all subscribed libraries on a daily basis. Subscribed
#     libraries with the 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.automatic_sync_enabled`  flag
#     turned on will be synchronized every hour between 
#     :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_start_hour`  and 
#     :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_stop_hour` .</p>
#
# optional#
sub get_automatic_sync_enabled {
   my ($self, %args) = @_;
   return $self->{'automatic_sync_enabled'}; 	
}

## @method set_automatic_sync_enabled ()
# Sets the given value for 'automatic_sync_enabled' property.
# 
# @param automatic_sync_enabled  - New value for the field.
# Whether automatic synchronization is enabled. <p>
# 
# When automatic synchronization is enabled, the Content Library Service will
#     automatically synchronize all subscribed libraries on a daily basis. Subscribed
#     libraries with the 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.automatic_sync_enabled`  flag
#     turned on will be synchronized every hour between 
#     :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_start_hour`  and 
#     :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_stop_hour` .</p>
#
sub set_automatic_sync_enabled {
   my ($self, %args) = @_;
   $self->{'automatic_sync_enabled'} = $args{'automatic_sync_enabled'}; 
   return;	
}

## @method get_automatic_sync_start_hour ()
# Gets the value of 'automatic_sync_start_hour' property.
#
# @retval automatic_sync_start_hour - The current value of the field.
# The hour at which the automatic synchronization will start. This value is between 0
#     (midnight) and 23 inclusive.
#
# optional#
sub get_automatic_sync_start_hour {
   my ($self, %args) = @_;
   return $self->{'automatic_sync_start_hour'}; 	
}

## @method set_automatic_sync_start_hour ()
# Sets the given value for 'automatic_sync_start_hour' property.
# 
# @param automatic_sync_start_hour  - New value for the field.
# The hour at which the automatic synchronization will start. This value is between 0
#     (midnight) and 23 inclusive.
#
sub set_automatic_sync_start_hour {
   my ($self, %args) = @_;
   $self->{'automatic_sync_start_hour'} = $args{'automatic_sync_start_hour'}; 
   return;	
}

## @method get_automatic_sync_stop_hour ()
# Gets the value of 'automatic_sync_stop_hour' property.
#
# @retval automatic_sync_stop_hour - The current value of the field.
# The hour at which the automatic synchronization will stop. Any active synchronization
#     operation will continue to run, however no new synchronization operations will be
#     triggered after the stop hour. This value is between 0 (midnight) and 23 inclusive.
#
# optional#
sub get_automatic_sync_stop_hour {
   my ($self, %args) = @_;
   return $self->{'automatic_sync_stop_hour'}; 	
}

## @method set_automatic_sync_stop_hour ()
# Sets the given value for 'automatic_sync_stop_hour' property.
# 
# @param automatic_sync_stop_hour  - New value for the field.
# The hour at which the automatic synchronization will stop. Any active synchronization
#     operation will continue to run, however no new synchronization operations will be
#     triggered after the stop hour. This value is between 0 (midnight) and 23 inclusive.
#
sub set_automatic_sync_stop_hour {
   my ($self, %args) = @_;
   $self->{'automatic_sync_stop_hour'} = $args{'automatic_sync_stop_hour'}; 
   return;	
}

## @method get_maximum_concurrent_item_syncs ()
# Gets the value of 'maximum_concurrent_item_syncs' property.
#
# @retval maximum_concurrent_item_syncs - The current value of the field.
# The maximum allowed number of library items to synchronize concurrently from remote
#     libraries. This must be a positive number. The service may not be able to guarantee
#     the requested concurrency if there is no available capacity. <p>
# 
#  This setting is global across all subscribed libraries.</p>
#
# optional#
sub get_maximum_concurrent_item_syncs {
   my ($self, %args) = @_;
   return $self->{'maximum_concurrent_item_syncs'}; 	
}

## @method set_maximum_concurrent_item_syncs ()
# Sets the given value for 'maximum_concurrent_item_syncs' property.
# 
# @param maximum_concurrent_item_syncs  - New value for the field.
# The maximum allowed number of library items to synchronize concurrently from remote
#     libraries. This must be a positive number. The service may not be able to guarantee
#     the requested concurrency if there is no available capacity. <p>
# 
#  This setting is global across all subscribed libraries.</p>
#
sub set_maximum_concurrent_item_syncs {
   my ($self, %args) = @_;
   $self->{'maximum_concurrent_item_syncs'} = $args{'maximum_concurrent_item_syncs'}; 
   return;	
}


1;


