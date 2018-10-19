## @class Com::Vmware::Content::Library::Item::Updatesession::WarningBehavior
#
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::WarningBehavior``   *class*
#     defines the session behavior if the warning is raised during the update session. This 
#     *class*  was added in vSphere API 6.7 U1.

package Com::Vmware::Content::Library::Item::Updatesession::WarningBehavior;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::WarningBehavior structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{ignored} = $args{'ignored'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::WarningBehavior');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.updatesession.warning_behavior');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'WarningType'));
   $self->set_binding_field('key' => 'ignored', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The warning type which may be raised during the update session. This  *field*  was
#     added in vSphere API 6.7 U1.
#
# WarningType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The warning type which may be raised during the update session. This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_ignored ()
# Gets the value of 'ignored' property.
#
# @retval ignored - The current value of the field.
# Indicates if this warning will be ignored during session complete operation. This 
#     *field*  was added in vSphere API 6.7 U1.
#
# boolean#
sub get_ignored {
   my ($self, %args) = @_;
   return $self->{'ignored'}; 	
}

## @method set_ignored ()
# Sets the given value for 'ignored' property.
# 
# @param ignored  - New value for the field.
# Indicates if this warning will be ignored during session complete operation. This 
#     *field*  was added in vSphere API 6.7 U1.
#
sub set_ignored {
   my ($self, %args) = @_;
   $self->{'ignored'} = $args{'ignored'}; 
   return;	
}


1;


