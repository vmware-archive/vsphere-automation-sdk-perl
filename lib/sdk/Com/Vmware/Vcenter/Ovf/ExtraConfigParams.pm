## @class Com::Vmware::Vcenter::Ovf::ExtraConfigParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::ExtraConfigParams``   *class*  contains the
#     parameters with information about the vmw:ExtraConfig elements in an OVF package. <p>
# 
# vmw:ExtraConfig elements can be used to specify configuration settings that are
#     transferred directly to the  <code>.vmx</code>  file. </p>
# 
# <p>
# 
# The behavior of the vmw:ExtraConfig element is similar to the 
#     <code>extraConfig</code>  property of the  <code>VirtualMachineConfigSpec</code> 
#     object in the VMware vSphere API. Thus, the same restrictions apply, such as you
#     cannot set values that could otherwise be set with other properties in the 
#     <code>VirtualMachineConfigSpec</code>  object. See the VMware vSphere API reference
#     for details on this. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::ExtraConfigParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ExtraConfigParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{extra_configs} = $args{'extra_configs'};
   $self->{exclude_keys} = $args{'exclude_keys'};
   $self->{include_keys} = $args{'include_keys'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::ExtraConfigParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.extra_config_params');
   $self->set_binding_field('key' => 'extra_configs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'ExtraConfig'))));
   $self->set_binding_field('key' => 'exclude_keys', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'include_keys', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_extra_configs ()
# Gets the value of 'extra_configs' property.
#
# @retval extra_configs - The current value of the field.
#  *List*  of vmw:ExtraConfig elements in the OVF package.
#
# optional#
sub get_extra_configs {
   my ($self, %args) = @_;
   return $self->{'extra_configs'}; 	
}

## @method set_extra_configs ()
# Sets the given value for 'extra_configs' property.
# 
# @param extra_configs  - New value for the field.
#  *List*  of vmw:ExtraConfig elements in the OVF package.
#
sub set_extra_configs {
   my ($self, %args) = @_;
   $self->{'extra_configs'} = $args{'extra_configs'}; 
   return;	
}

## @method get_exclude_keys ()
# Gets the value of 'exclude_keys' property.
#
# @retval exclude_keys - The current value of the field.
# Specifies which extra configuration items in the  *list*  in the  ``extraConfigs``  
#     ``field``  should be ignored during deployment. <p>
# 
# If set, the given keys for extra configurations will be ignored during deployment. The
#     key is defined in the  :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfig.key`   *field*
#     .</p>
#
# optional#
sub get_exclude_keys {
   my ($self, %args) = @_;
   return $self->{'exclude_keys'}; 	
}

## @method set_exclude_keys ()
# Sets the given value for 'exclude_keys' property.
# 
# @param exclude_keys  - New value for the field.
# Specifies which extra configuration items in the  *list*  in the  ``extraConfigs``  
#     ``field``  should be ignored during deployment. <p>
# 
# If set, the given keys for extra configurations will be ignored during deployment. The
#     key is defined in the  :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfig.key`   *field*
#     .</p>
#
sub set_exclude_keys {
   my ($self, %args) = @_;
   $self->{'exclude_keys'} = $args{'exclude_keys'}; 
   return;	
}

## @method get_include_keys ()
# Gets the value of 'include_keys' property.
#
# @retval include_keys - The current value of the field.
# Specifies which extra configuration items in the  *list*  in the  ``extraConfigs``  
#     ``field``  should be included during deployment. <p>
# 
# If set, all but the given keys for extra configurations will be ignored during
#     deployment. The key is defined in the 
#     :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfig.key`   *field* .</p>
#
# optional#
sub get_include_keys {
   my ($self, %args) = @_;
   return $self->{'include_keys'}; 	
}

## @method set_include_keys ()
# Sets the given value for 'include_keys' property.
# 
# @param include_keys  - New value for the field.
# Specifies which extra configuration items in the  *list*  in the  ``extraConfigs``  
#     ``field``  should be included during deployment. <p>
# 
# If set, all but the given keys for extra configurations will be ignored during
#     deployment. The key is defined in the 
#     :attr:`Com::Vmware::Vcenter::Ovf::ExtraConfig.key`   *field* .</p>
#
sub set_include_keys {
   my ($self, %args) = @_;
   $self->{'include_keys'} = $args{'include_keys'}; 
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


