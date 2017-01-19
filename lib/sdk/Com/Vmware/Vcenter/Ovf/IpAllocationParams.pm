## @class Com::Vmware::Vcenter::Ovf::IpAllocationParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams``   *class*  specifies how IP
#     addresses are allocated to OVF properties. In particular, it informs the deployment
#     platform whether the guest supports IPv4, IPv6, or both. It also specifies whether the
#     IP addresses can be obtained through DHCP or through the properties provided in the
#     OVF environment. <p>
# 
# Ovf Property elements are exposed to the guest software through the OVF environment.
#     Each Property element exposed in the OVF environment shall be constructed from the
#     value of the ovf:key attribute. A Property element contains a key/value pair, it may
#     optionally specify type qualifiers using the ovf:qualifiers attribute with multiple
#     qualifiers separated by commas. </p>
# 
# <p>
# 
# The settings in  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams``   *class*  are
#     global to a deployment. Thus, if a virtual machine is part of a virtual appliance,
#     then its settings are ignored and the settings for the virtual appliance is used. </p>
# 
# <p>
# 
#  This information is based on the vmw:IpAssignmentSection in OVF package. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::IpAllocationParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::IpAllocationParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{supported_allocation_scheme} = $args{'supported_allocation_scheme'};
   $self->{supported_ip_allocation_policy} = $args{'supported_ip_allocation_policy'};
   $self->{ip_allocation_policy} = $args{'ip_allocation_policy'};
   $self->{supported_ip_protocol} = $args{'supported_ip_protocol'};
   $self->{ip_protocol} = $args{'ip_protocol'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::IpAllocationParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.ip_allocation_params');
   $self->set_binding_field('key' => 'supported_allocation_scheme', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'IpAllocationParams::IpAllocationScheme'))));
   $self->set_binding_field('key' => 'supported_ip_allocation_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'IpAllocationParams::IpAllocationPolicy'))));
   $self->set_binding_field('key' => 'ip_allocation_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'IpAllocationParams::IpAllocationPolicy')));
   $self->set_binding_field('key' => 'supported_ip_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'IpAllocationParams::IpProtocol'))));
   $self->set_binding_field('key' => 'ip_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'IpAllocationParams::IpProtocol')));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_supported_allocation_scheme ()
# Gets the value of 'supported_allocation_scheme' property.
#
# @retval supported_allocation_scheme - The current value of the field.
# Specifies the IP allocation schemes supported by the guest software. This  *field* 
#     defines the valid values for the IP allocation policy. This setting is often
#     configured by the virtual appliance template author or OVF package author to reflect
#     what the guest software supports, and the IP allocation policy is configured at
#     deployment time. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.ip_allocation_policy` .
#
# optional#
sub get_supported_allocation_scheme {
   my ($self, %args) = @_;
   return $self->{'supported_allocation_scheme'}; 	
}

## @method set_supported_allocation_scheme ()
# Sets the given value for 'supported_allocation_scheme' property.
# 
# @param supported_allocation_scheme  - New value for the field.
# Specifies the IP allocation schemes supported by the guest software. This  *field* 
#     defines the valid values for the IP allocation policy. This setting is often
#     configured by the virtual appliance template author or OVF package author to reflect
#     what the guest software supports, and the IP allocation policy is configured at
#     deployment time. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.ip_allocation_policy` .
#
sub set_supported_allocation_scheme {
   my ($self, %args) = @_;
   $self->{'supported_allocation_scheme'} = $args{'supported_allocation_scheme'}; 
   return;	
}

## @method get_supported_ip_allocation_policy ()
# Gets the value of 'supported_ip_allocation_policy' property.
#
# @retval supported_ip_allocation_policy - The current value of the field.
# Specifies the IP allocation policies supported. The set of valid options for the
#     policy is based on the capabilities of the virtual appliance software, as specified by
#     the  :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.supported_allocation_scheme`
#       *field* .
#
# optional#
sub get_supported_ip_allocation_policy {
   my ($self, %args) = @_;
   return $self->{'supported_ip_allocation_policy'}; 	
}

## @method set_supported_ip_allocation_policy ()
# Sets the given value for 'supported_ip_allocation_policy' property.
# 
# @param supported_ip_allocation_policy  - New value for the field.
# Specifies the IP allocation policies supported. The set of valid options for the
#     policy is based on the capabilities of the virtual appliance software, as specified by
#     the  :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.supported_allocation_scheme`
#       *field* .
#
sub set_supported_ip_allocation_policy {
   my ($self, %args) = @_;
   $self->{'supported_ip_allocation_policy'} = $args{'supported_ip_allocation_policy'}; 
   return;	
}

## @method get_ip_allocation_policy ()
# Gets the value of 'ip_allocation_policy' property.
#
# @retval ip_allocation_policy - The current value of the field.
# Specifies how IP allocation is done through an IP Pool. This is typically specified by
#     the deployer.
#
# optional#
sub get_ip_allocation_policy {
   my ($self, %args) = @_;
   return $self->{'ip_allocation_policy'}; 	
}

## @method set_ip_allocation_policy ()
# Sets the given value for 'ip_allocation_policy' property.
# 
# @param ip_allocation_policy  - New value for the field.
# Specifies how IP allocation is done through an IP Pool. This is typically specified by
#     the deployer.
#
sub set_ip_allocation_policy {
   my ($self, %args) = @_;
   $self->{'ip_allocation_policy'} = $args{'ip_allocation_policy'}; 
   return;	
}

## @method get_supported_ip_protocol ()
# Gets the value of 'supported_ip_protocol' property.
#
# @retval supported_ip_protocol - The current value of the field.
# Specifies the IP protocols supported by the guest.
#
# optional#
sub get_supported_ip_protocol {
   my ($self, %args) = @_;
   return $self->{'supported_ip_protocol'}; 	
}

## @method set_supported_ip_protocol ()
# Sets the given value for 'supported_ip_protocol' property.
# 
# @param supported_ip_protocol  - New value for the field.
# Specifies the IP protocols supported by the guest.
#
sub set_supported_ip_protocol {
   my ($self, %args) = @_;
   $self->{'supported_ip_protocol'} = $args{'supported_ip_protocol'}; 
   return;	
}

## @method get_ip_protocol ()
# Gets the value of 'ip_protocol' property.
#
# @retval ip_protocol - The current value of the field.
# Specifies the chosen IP protocol for this deployment. This must be one of the IP
#     protocols supported by the guest software. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.supported_ip_protocol` .
#
# optional#
sub get_ip_protocol {
   my ($self, %args) = @_;
   return $self->{'ip_protocol'}; 	
}

## @method set_ip_protocol ()
# Sets the given value for 'ip_protocol' property.
# 
# @param ip_protocol  - New value for the field.
# Specifies the chosen IP protocol for this deployment. This must be one of the IP
#     protocols supported by the guest software. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::IpAllocationParams.supported_ip_protocol` .
#
sub set_ip_protocol {
   my ($self, %args) = @_;
   $self->{'ip_protocol'} = $args{'ip_protocol'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy
#
# The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy``  
#     *enumerated type*  defines the possible IP allocation policy for a deployment.
#
#
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy::DHCP #
#Specifies that DHCP will be used to allocate IP addresses.
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy::TRANSIENT_IPPOOL #
#Specifies that IP addresses are allocated from an IP pool. The IP addresses are allocated
# when needed, typically at power-on, and deallocated during power-off. There is no
# guarantee that a property will receive same IP address when restarted.
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy::STATIC_MANUAL #
#Specifies that IP addresses are configured manually upon deployment, and will be kept
# until reconfigured or the virtual appliance destroyed. This ensures that a property gets a
# consistent IP for its lifetime.
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy::STATIC_IPPOOL #
#Specifies that IP addresses are allocated from the range managed by an IP pool. The IP
# addresses are allocated at first power-on, and remain allocated at power-off. This ensures
# that a virtual appliance gets a consistent IP for its life-time.

package Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy;

use constant {
    DHCP =>  'DHCP',
    TRANSIENT_IPPOOL =>  'TRANSIENT_IPPOOL',
    STATIC_MANUAL =>  'STATIC_MANUAL',
    STATIC_IPPOOL =>  'STATIC_IPPOOL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.ovf.ip_allocation_params.ip_allocation_policy',
                           'binding_class' => 'Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationPolicy');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme
#
# The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme``  
#     *enumerated type*  defines the possible IP allocation schemes that can be supported by
#     the guest software.
#
#
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme::DHCP #
#It supports DHCP to acquire IP configuration.
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme::OVF_ENVIRONMENT #
#It supports setting the IP configuration through the properties provided in the OVF
# environment.

package Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme;

use constant {
    DHCP =>  'DHCP',
    OVF_ENVIRONMENT =>  'OVF_ENVIRONMENT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.ovf.ip_allocation_params.ip_allocation_scheme',
                           'binding_class' => 'Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpAllocationScheme');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol
#
# The  ``Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol``   *enumerated type*
#      defines the IP protocols supported by the guest software.
#
#
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol::IP_V4 #
#It supports the IPv4 protocol.
#
# Constant Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol::IP_V6 #
#It supports the IPv6 protocol.

package Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol;

use constant {
    IPV4 =>  'IPV4',
    IPV6 =>  'IPV6',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.ovf.ip_allocation_params.ip_protocol',
                           'binding_class' => 'Com::Vmware::Vcenter::Ovf::IpAllocationParams::IpProtocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


