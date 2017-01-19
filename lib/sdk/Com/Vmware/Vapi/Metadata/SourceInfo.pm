## @class Com::Vmware::Vapi::Metadata::SourceInfo
#
#
# Metadata source info

package Com::Vmware::Vapi::Metadata::SourceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::SourceInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'FILE' => ['file_name'],
               'REMOTE' => ['remote_addr', 'msg_protocol'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{file_name} = $args{'file_name'};
   $self->{remote_addr} = $args{'remote_addr'};
   $self->{msg_protocol} = $args{'msg_protocol'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::SourceInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.source_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata', 'type_name' => 'SourceType'));
   $self->set_binding_field('key' => 'file_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'remote_addr', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'msg_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the metadata source
#
# SourceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the metadata source
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_file_name ()
# Gets the value of 'file_name' property.
#
# @retval file_name - The current value of the field.
# Name of the metadata source file
#
# optional#
sub get_file_name {
   my ($self, %args) = @_;
   return $self->{'file_name'}; 	
}

## @method set_file_name ()
# Sets the given value for 'file_name' property.
# 
# @param file_name  - New value for the field.
# Name of the metadata source file
#
sub set_file_name {
   my ($self, %args) = @_;
   $self->{'file_name'} = $args{'file_name'}; 
   return;	
}

## @method get_remote_addr ()
# Gets the value of 'remote_addr' property.
#
# @retval remote_addr - The current value of the field.
# Address of the remote metadata source
#
# optional#
sub get_remote_addr {
   my ($self, %args) = @_;
   return $self->{'remote_addr'}; 	
}

## @method set_remote_addr ()
# Sets the given value for 'remote_addr' property.
# 
# @param remote_addr  - New value for the field.
# Address of the remote metadata source
#
sub set_remote_addr {
   my ($self, %args) = @_;
   $self->{'remote_addr'} = $args{'remote_addr'}; 
   return;	
}

## @method get_msg_protocol ()
# Gets the value of 'msg_protocol' property.
#
# @retval msg_protocol - The current value of the field.
# Message protocol to be used
#
# optional#
sub get_msg_protocol {
   my ($self, %args) = @_;
   return $self->{'msg_protocol'}; 	
}

## @method set_msg_protocol ()
# Sets the given value for 'msg_protocol' property.
# 
# @param msg_protocol  - New value for the field.
# Message protocol to be used
#
sub set_msg_protocol {
   my ($self, %args) = @_;
   $self->{'msg_protocol'} = $args{'msg_protocol'}; 
   return;	
}


1;


