## @class Com::Vmware::Cis::Task::Progress
#
#
# The  ``Com::Vmware::Cis::Task::Progress``   *class*  contains information describe the
#     progress of an operation. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Cis::Task::Progress;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Task::Progress structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{total} = $args{'total'};
   $self->{completed} = $args{'completed'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Task::Progress');
   $self->set_binding_name('name' => 'com.vmware.cis.task.progress');
   $self->set_binding_field('key' => 'total', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'completed', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_total ()
# Gets the value of 'total' property.
#
# @retval total - The current value of the field.
# Total amount of the work for the operation. This  *field*  was added in vSphere API
#     6.7.
#
# long#
sub get_total {
   my ($self, %args) = @_;
   return $self->{'total'}; 	
}

## @method set_total ()
# Sets the given value for 'total' property.
# 
# @param total  - New value for the field.
# Total amount of the work for the operation. This  *field*  was added in vSphere API
#     6.7.
#
sub set_total {
   my ($self, %args) = @_;
   $self->{'total'} = $args{'total'}; 
   return;	
}

## @method get_completed ()
# Gets the value of 'completed' property.
#
# @retval completed - The current value of the field.
# The amount of work completed for the operation. The value can only be incremented.
#     This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_completed {
   my ($self, %args) = @_;
   return $self->{'completed'}; 	
}

## @method set_completed ()
# Sets the given value for 'completed' property.
# 
# @param completed  - New value for the field.
# The amount of work completed for the operation. The value can only be incremented.
#     This  *field*  was added in vSphere API 6.7.
#
sub set_completed {
   my ($self, %args) = @_;
   $self->{'completed'} = $args{'completed'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message about the work progress. This  *field*  was added in vSphere API 6.7.
#
# LocalizableMessage#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Message about the work progress. This  *field*  was added in vSphere API 6.7.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


