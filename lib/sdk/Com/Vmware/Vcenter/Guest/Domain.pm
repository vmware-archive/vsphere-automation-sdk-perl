## @class Com::Vmware::Vcenter::Guest::Domain
#
#
# The  ``Com::Vmware::Vcenter::Guest::Domain``   *class*  specifies the information
#     needed to join a workgroup or domain. This structure maps to the Identification key in
#     the sysprep.xml answer file. These values are transferred into the sysprep.xml file
#     that VirtualCenter stores on the target virtual disk. For more information about
#     performing unattended installation, check
#     https://technet.microsoft.com/en-us/library/cc771830(v=ws.10).aspx. This  *class*  was
#     added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::Domain;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::Domain structure
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
               'WORKGROUP' => ['workgroup'],
               'DOMAIN' => ['domain', 'domain_username', 'domain_password'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{workgroup} = $args{'workgroup'};
   $self->{domain} = $args{'domain'};
   $self->{domain_username} = $args{'domain_username'};
   $self->{domain_password} = $args{'domain_password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::Domain');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.domain');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'Domain::Type'));
   $self->set_binding_field('key' => 'workgroup', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of network to join after the customization. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of network to join after the customization. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_workgroup ()
# Gets the value of 'workgroup' property.
#
# @retval workgroup - The current value of the field.
# The workgroup that the virtual machine should join. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# optional#
sub get_workgroup {
   my ($self, %args) = @_;
   return $self->{'workgroup'}; 	
}

## @method set_workgroup ()
# Sets the given value for 'workgroup' property.
# 
# @param workgroup  - New value for the field.
# The workgroup that the virtual machine should join. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_workgroup {
   my ($self, %args) = @_;
   $self->{'workgroup'} = $args{'workgroup'}; 
   return;	
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# The domain to which the virtual machine should be joined. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# optional#
sub get_domain {
   my ($self, %args) = @_;
   return $self->{'domain'}; 	
}

## @method set_domain ()
# Sets the given value for 'domain' property.
# 
# @param domain  - New value for the field.
# The domain to which the virtual machine should be joined. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}

## @method get_domain_username ()
# Gets the value of 'domain_username' property.
#
# @retval domain_username - The current value of the field.
# The domain user that has permission to join the domain after virtual machine is
#     joined. This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_domain_username {
   my ($self, %args) = @_;
   return $self->{'domain_username'}; 	
}

## @method set_domain_username ()
# Sets the given value for 'domain_username' property.
# 
# @param domain_username  - New value for the field.
# The domain user that has permission to join the domain after virtual machine is
#     joined. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_domain_username {
   my ($self, %args) = @_;
   $self->{'domain_username'} = $args{'domain_username'}; 
   return;	
}

## @method get_domain_password ()
# Gets the value of 'domain_password' property.
#
# @retval domain_password - The current value of the field.
# The domain user password that has permission to join the 
#     :attr:`Com::Vmware::Vcenter::Guest::Domain.domain_username`  after customization. This
#      *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_domain_password {
   my ($self, %args) = @_;
   return $self->{'domain_password'}; 	
}

## @method set_domain_password ()
# Sets the given value for 'domain_password' property.
# 
# @param domain_password  - New value for the field.
# The domain user password that has permission to join the 
#     :attr:`Com::Vmware::Vcenter::Guest::Domain.domain_username`  after customization. This
#      *field*  was added in vSphere API 7.0.0.0.
#
sub set_domain_password {
   my ($self, %args) = @_;
   $self->{'domain_password'} = $args{'domain_password'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::Domain::Type
#
# The  ``Com::Vmware::Vcenter::Guest::Domain::Type``   *enumerated type*  defines the
#     types of network the virtual machine should join to after the customization is
#     completed. This  *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::Domain::Type::WORKGROUP #
#The virtual machine should be be joined to a workgroup. This  *constant*  was added in
# vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::Domain::Type::DOMAIN #
#The virtual machine should be be joined to a domain. This  *constant*  was added in
# vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::Domain::Type;

use constant {
    WORKGROUP =>  'WORKGROUP',
    DOMAIN =>  'DOMAIN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::Domain::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.domain.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::Domain::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


