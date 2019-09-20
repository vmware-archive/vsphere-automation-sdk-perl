## @class Com::Vmware::Vcenter::Lcm::ExistingMigrationAssistant
#
#
# Configuration of the migration assistant that is already running on the source Windows
#     VC.

package Com::Vmware::Vcenter::Lcm::ExistingMigrationAssistant;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::ExistingMigrationAssistant structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{https_port} = $args{'https_port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::ExistingMigrationAssistant');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.existing_migration_assistant');
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# The SSL thumbprint of Migration Assistant. The SSL thumbprint can be retrieved from
#     the Migration Assistant console and log file.
#
# String#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# The SSL thumbprint of Migration Assistant. The SSL thumbprint can be retrieved from
#     the Migration Assistant console and log file.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# Migration Assistant port number shown in the Migration Assistant console and log file.
#     The default port is 9123.
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# Migration Assistant port number shown in the Migration Assistant console and log file.
#     The default port is 9123.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}


1;


