## @class Com::Vmware::Vcenter::Guest::WindowsConfiguration
#
#
# The  ``Com::Vmware::Vcenter::Guest::WindowsConfiguration``   *class*  specifies the
#     settings for customizing a windows guest operating system. This  *class*  was added in
#     vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::WindowsConfiguration;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::WindowsConfiguration structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{reboot} = $args{'reboot'};
   $self->{sysprep} = $args{'sysprep'};
   $self->{sysprep_xml} = $args{'sysprep_xml'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::WindowsConfiguration');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.windows_configuration');
   $self->set_binding_field('key' => 'reboot', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'WindowsConfiguration::RebootOption')));
   $self->set_binding_field('key' => 'sysprep', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'WindowsSysprep')));
   $self->set_binding_field('key' => 'sysprep_xml', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_reboot ()
# Gets the value of 'reboot' property.
#
# @retval reboot - The current value of the field.
# A value specifying the action that should be taken after customization. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_reboot {
   my ($self, %args) = @_;
   return $self->{'reboot'}; 	
}

## @method set_reboot ()
# Sets the given value for 'reboot' property.
# 
# @param reboot  - New value for the field.
# A value specifying the action that should be taken after customization. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_reboot {
   my ($self, %args) = @_;
   $self->{'reboot'} = $args{'reboot'}; 
   return;	
}

## @method get_sysprep ()
# Gets the value of 'sysprep' property.
#
# @retval sysprep - The current value of the field.
# Customization settings like user details, administrator details, etc for the windows
#     guest operating system. Exactly one of  ``sysprep``  or  ``sysprepXml``  must be
#     specified. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_sysprep {
   my ($self, %args) = @_;
   return $self->{'sysprep'}; 	
}

## @method set_sysprep ()
# Sets the given value for 'sysprep' property.
# 
# @param sysprep  - New value for the field.
# Customization settings like user details, administrator details, etc for the windows
#     guest operating system. Exactly one of  ``sysprep``  or  ``sysprepXml``  must be
#     specified. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_sysprep {
   my ($self, %args) = @_;
   $self->{'sysprep'} = $args{'sysprep'}; 
   return;	
}

## @method get_sysprep_xml ()
# Gets the value of 'sysprep_xml' property.
#
# @retval sysprep_xml - The current value of the field.
# All settings specified in a XML format. This is the content of a typical answer.xml
#     file that is used by System administrators during the Windows image customization.
#     Check
#     https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs
#     Exactly one of  ``sysprep``  or  ``sysprepXml``  must be specified. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
# Optional#
sub get_sysprep_xml {
   my ($self, %args) = @_;
   return $self->{'sysprep_xml'}; 	
}

## @method set_sysprep_xml ()
# Sets the given value for 'sysprep_xml' property.
# 
# @param sysprep_xml  - New value for the field.
# All settings specified in a XML format. This is the content of a typical answer.xml
#     file that is used by System administrators during the Windows image customization.
#     Check
#     https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs
#     Exactly one of  ``sysprep``  or  ``sysprepXml``  must be specified. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
sub set_sysprep_xml {
   my ($self, %args) = @_;
   $self->{'sysprep_xml'} = $args{'sysprep_xml'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption
#
# The  ``Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption``   *enumerated
#     type*  specifies what should be done to the guest after the customization. This 
#     *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption::REBOOT #
#Reboot the guest after customization. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption::NO_REBOOT #
#Take no action. Leave the guest OS running after customization. This option can be used to
# look at values for debugging purposes. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption::SHUTDOWN #
#Shutdown the guest after customization. This  *constant*  was added in vSphere API
# 7.0.0.0.

package Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption;

use constant {
    REBOOT =>  'REBOOT',
    NO_REBOOT =>  'NO_REBOOT',
    SHUTDOWN =>  'SHUTDOWN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.windows_configuration.reboot_option',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::WindowsConfiguration::RebootOption');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


