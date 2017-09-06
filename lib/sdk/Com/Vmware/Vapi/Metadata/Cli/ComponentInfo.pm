## @class Com::Vmware::Vapi::Metadata::Cli::ComponentInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::ComponentInfo``  is an aggregated  *class* 
#     for CLI commands and namespaces information.

package Com::Vmware::Vapi::Metadata::Cli::ComponentInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::ComponentInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{namespaces} = $args{'namespaces'};
   $self->{commands} = $args{'commands'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::ComponentInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.component_info');
   $self->set_binding_field('key' => 'namespaces', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Namespace::Info')));
   $self->set_binding_field('key' => 'commands', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Command::Info')));
   bless $self, $class;
   return $self;
}

## @method get_namespaces ()
# Gets the value of 'namespaces' property.
#
# @retval namespaces - The current value of the field.
# Information for all CLI namespaces of a  *component* 
#
# List#
sub get_namespaces {
   my ($self, %args) = @_;
   return $self->{'namespaces'}; 	
}

## @method set_namespaces ()
# Sets the given value for 'namespaces' property.
# 
# @param namespaces  - New value for the field.
# Information for all CLI namespaces of a  *component* 
#
sub set_namespaces {
   my ($self, %args) = @_;
   $self->{'namespaces'} = $args{'namespaces'}; 
   return;	
}

## @method get_commands ()
# Gets the value of 'commands' property.
#
# @retval commands - The current value of the field.
# Information for all CLI commands of a  *component* 
#
# List#
sub get_commands {
   my ($self, %args) = @_;
   return $self->{'commands'}; 	
}

## @method set_commands ()
# Sets the given value for 'commands' property.
# 
# @param commands  - New value for the field.
# Information for all CLI commands of a  *component* 
#
sub set_commands {
   my ($self, %args) = @_;
   $self->{'commands'} = $args{'commands'}; 
   return;	
}


1;


