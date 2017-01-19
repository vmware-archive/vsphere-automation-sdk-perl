## @class Com::Vmware::Vapi::Metadata::SourceCreateSpec
#
#
# The  ``Com::Vmware::Vapi::Metadata::SourceCreateSpec``   *class*  contains the
#     registration information for a metadata source.

package Com::Vmware::Vapi::Metadata::SourceCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::SourceCreateSpec structure
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
               'FILE' => ['filepath'],
               'REMOTE' => ['address'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{type} = $args{'type'};
   $self->{filepath} = $args{'filepath'};
   $self->{address} = $args{'address'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::SourceCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.source_create_spec');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata', 'type_name' => 'SourceType'));
   $self->set_binding_field('key' => 'filepath', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# English language human readable description of the source.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# English language human readable description of the source.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the metadata source.
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
# Type of the metadata source.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_filepath ()
# Gets the value of 'filepath' property.
#
# @retval filepath - The current value of the field.
# Absolute file path of the metamodel metadata file that has the metamodel information
#     about one component element.
#
# optional#
sub get_filepath {
   my ($self, %args) = @_;
   return $self->{'filepath'}; 	
}

## @method set_filepath ()
# Sets the given value for 'filepath' property.
# 
# @param filepath  - New value for the field.
# Absolute file path of the metamodel metadata file that has the metamodel information
#     about one component element.
#
sub set_filepath {
   my ($self, %args) = @_;
   $self->{'filepath'} = $args{'filepath'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# Connection information of the remote server. This should be of the format
#     http(s)://IP:port/namespace. <p>
# 
# The remote server should contain the  *interfaces*  in 
#     :mod:`com.vmware.vapi.metadata.metamodel`   *package* . It could expose metamodel
#     information of one or more components.</p>
#
# optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# Connection information of the remote server. This should be of the format
#     http(s)://IP:port/namespace. <p>
# 
# The remote server should contain the  *interfaces*  in 
#     :mod:`com.vmware.vapi.metadata.metamodel`   *package* . It could expose metamodel
#     information of one or more components.</p>
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}


1;


