## @class Com::Vmware::Vcenter::Vm::Guest::DnsAssignedValues
#
#
# The {@name DnsAssignedValues)  *class*  describes values assigned by a Domain Name
#     Server (DNS). This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Guest::DnsAssignedValues;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::DnsAssignedValues structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{host_name} = $args{'host_name'};
   $self->{domain_name} = $args{'domain_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::DnsAssignedValues');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.dns_assigned_values');
   $self->set_binding_field('key' => 'host_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_host_name ()
# Gets the value of 'host_name' property.
#
# @retval host_name - The current value of the field.
# The host name portion of DNS name. For example, &quot;esx01&quot; part of
#     esx01.example.com. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_host_name {
   my ($self, %args) = @_;
   return $self->{'host_name'}; 	
}

## @method set_host_name ()
# Sets the given value for 'host_name' property.
# 
# @param host_name  - New value for the field.
# The host name portion of DNS name. For example, &quot;esx01&quot; part of
#     esx01.example.com. This  *field*  was added in vSphere API 7.0.0.
#
sub set_host_name {
   my ($self, %args) = @_;
   $self->{'host_name'} = $args{'host_name'}; 
   return;	
}

## @method get_domain_name ()
# Gets the value of 'domain_name' property.
#
# @retval domain_name - The current value of the field.
# The domain name portion of the DNS name. &quot;example.com&quot; part of
#     esx01.example.com. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_domain_name {
   my ($self, %args) = @_;
   return $self->{'domain_name'}; 	
}

## @method set_domain_name ()
# Sets the given value for 'domain_name' property.
# 
# @param domain_name  - New value for the field.
# The domain name portion of the DNS name. &quot;example.com&quot; part of
#     esx01.example.com. This  *field*  was added in vSphere API 7.0.0.
#
sub set_domain_name {
   my ($self, %args) = @_;
   $self->{'domain_name'} = $args{'domain_name'}; 
   return;	
}


1;


