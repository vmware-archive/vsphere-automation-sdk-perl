## @class Com::Vmware::Esx::Hcl::Server
#
#
# The  ``Com::Vmware::Esx::Hcl::Server``   *class*  contains  *fields*  describing
#     information about a server.

package Com::Vmware::Esx::Hcl::Server;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Server structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{model_name} = $args{'model_name'};
   $self->{vendor} = $args{'vendor'};
   $self->{cpu_series} = $args{'cpu_series'};
   $self->{cpu_features} = $args{'cpu_features'};
   $self->{bios} = $args{'bios'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Server');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.server');
   $self->set_binding_field('key' => 'model_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cpu_series', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cpu_features', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'bios', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Firmware'));
   bless $self, $class;
   return $self;
}

## @method get_model_name ()
# Gets the value of 'model_name' property.
#
# @retval model_name - The current value of the field.
# The name of the server model.
#
# String#
sub get_model_name {
   my ($self, %args) = @_;
   return $self->{'model_name'}; 	
}

## @method set_model_name ()
# Sets the given value for 'model_name' property.
# 
# @param model_name  - New value for the field.
# The name of the server model.
#
sub set_model_name {
   my ($self, %args) = @_;
   $self->{'model_name'} = $args{'model_name'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# The name of the vendor.
#
# String#
sub get_vendor {
   my ($self, %args) = @_;
   return $self->{'vendor'}; 	
}

## @method set_vendor ()
# Sets the given value for 'vendor' property.
# 
# @param vendor  - New value for the field.
# The name of the vendor.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}

## @method get_cpu_series ()
# Gets the value of 'cpu_series' property.
#
# @retval cpu_series - The current value of the field.
# The CPU series name.
#
# String#
sub get_cpu_series {
   my ($self, %args) = @_;
   return $self->{'cpu_series'}; 	
}

## @method set_cpu_series ()
# Sets the given value for 'cpu_series' property.
# 
# @param cpu_series  - New value for the field.
# The CPU series name.
#
sub set_cpu_series {
   my ($self, %args) = @_;
   $self->{'cpu_series'} = $args{'cpu_series'}; 
   return;	
}

## @method get_cpu_features ()
# Gets the value of 'cpu_features' property.
#
# @retval cpu_features - The current value of the field.
# The current CPU features.
#
# String#
sub get_cpu_features {
   my ($self, %args) = @_;
   return $self->{'cpu_features'}; 	
}

## @method set_cpu_features ()
# Sets the given value for 'cpu_features' property.
# 
# @param cpu_features  - New value for the field.
# The current CPU features.
#
sub set_cpu_features {
   my ($self, %args) = @_;
   $self->{'cpu_features'} = $args{'cpu_features'}; 
   return;	
}

## @method get_bios ()
# Gets the value of 'bios' property.
#
# @retval bios - The current value of the field.
# Currently installed BIOS of the server.
#
# Firmware#
sub get_bios {
   my ($self, %args) = @_;
   return $self->{'bios'}; 	
}

## @method set_bios ()
# Sets the given value for 'bios' property.
# 
# @param bios  - New value for the field.
# Currently installed BIOS of the server.
#
sub set_bios {
   my ($self, %args) = @_;
   $self->{'bios'} = $args{'bios'}; 
   return;	
}


1;


