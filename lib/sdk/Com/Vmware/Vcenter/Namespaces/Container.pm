## @class Com::Vmware::Vcenter::Namespaces::Container
#
#
# A  ``Com::Vmware::Vcenter::Namespaces::Container``  holds the data that describes a
#     container within a pod.

package Com::Vmware::Vcenter::Namespaces::Container;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Container structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{image} = $args{'image'};
   $self->{status} = $args{'status'};
   $self->{started_at} = $args{'started_at'};
   $self->{finished_at} = $args{'finished_at'};
   $self->{reason} = $args{'reason'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Container');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.container');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'image', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'started_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'finished_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'reason', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the container.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The name of the container.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_image ()
# Gets the value of 'image' property.
#
# @retval image - The current value of the field.
# The image the container is running.
#
# String#
sub get_image {
   my ($self, %args) = @_;
   return $self->{'image'}; 	
}

## @method set_image ()
# Sets the given value for 'image' property.
# 
# @param image  - New value for the field.
# The image the container is running.
#
sub set_image {
   my ($self, %args) = @_;
   $self->{'image'} = $args{'image'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The container&apos;s current condition.
#
# String#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The container&apos;s current condition.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_started_at ()
# Gets the value of 'started_at' property.
#
# @retval started_at - The current value of the field.
# Time at which the container was last (re-)started.
#
# String#
sub get_started_at {
   my ($self, %args) = @_;
   return $self->{'started_at'}; 	
}

## @method set_started_at ()
# Sets the given value for 'started_at' property.
# 
# @param started_at  - New value for the field.
# Time at which the container was last (re-)started.
#
sub set_started_at {
   my ($self, %args) = @_;
   $self->{'started_at'} = $args{'started_at'}; 
   return;	
}

## @method get_finished_at ()
# Gets the value of 'finished_at' property.
#
# @retval finished_at - The current value of the field.
# Time at which the container last terminated.
#
# String#
sub get_finished_at {
   my ($self, %args) = @_;
   return $self->{'finished_at'}; 	
}

## @method set_finished_at ()
# Sets the given value for 'finished_at' property.
# 
# @param finished_at  - New value for the field.
# Time at which the container last terminated.
#
sub set_finished_at {
   my ($self, %args) = @_;
   $self->{'finished_at'} = $args{'finished_at'}; 
   return;	
}

## @method get_reason ()
# Gets the value of 'reason' property.
#
# @retval reason - The current value of the field.
# Details about the container&apos;s current condition, if any.
#
# String#
sub get_reason {
   my ($self, %args) = @_;
   return $self->{'reason'}; 	
}

## @method set_reason ()
# Sets the given value for 'reason' property.
# 
# @param reason  - New value for the field.
# Details about the container&apos;s current condition, if any.
#
sub set_reason {
   my ($self, %args) = @_;
   $self->{'reason'} = $args{'reason'}; 
   return;	
}


1;


