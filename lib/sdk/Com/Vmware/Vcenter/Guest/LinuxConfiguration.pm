## @class Com::Vmware::Vcenter::Guest::LinuxConfiguration
#
#
# Guest customization Settings to customize a Linux guest operating system. <p>
# 
# The  ``Com::Vmware::Vcenter::Guest::LinuxConfiguration``   *class*  contains settings
#     that identify a Linux machine in the same way that the  class
#     Com::Vmware::Vcenter::Guest::WindowsConfiguration   *class*  identifies a Windows
#     machine.</p>
# 
# . This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::LinuxConfiguration;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::LinuxConfiguration structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{domain} = $args{'domain'};
   $self->{time_zone} = $args{'time_zone'};
   $self->{script_text} = $args{'script_text'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::LinuxConfiguration');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.linux_configuration');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'HostnameGenerator'));
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'time_zone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'script_text', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The network host name of the Linux virtual machine. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# HostnameGenerator#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# The network host name of the Linux virtual machine. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# The fully qualified domain name. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_domain {
   my ($self, %args) = @_;
   return $self->{'domain'}; 	
}

## @method set_domain ()
# Sets the given value for 'domain' property.
# 
# @param domain  - New value for the field.
# The fully qualified domain name. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}

## @method get_time_zone ()
# Gets the value of 'time_zone' property.
#
# @retval time_zone - The current value of the field.
# The case-sensitive time zone, such as Europe/Sofia. Valid time zone values are based
#     on the tz (time zone) database used by Linux. The values are strings ( *string* ) in
#     the form &quot;Area/Location,&quot; in which Area is a continent or ocean name, and
#     Location is the city, island, or other regional designation. <p>
# 
# See the https://kb.vmware.com/kb/2145518 for a list of supported time zones for
#     different versions in Linux.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_time_zone {
   my ($self, %args) = @_;
   return $self->{'time_zone'}; 	
}

## @method set_time_zone ()
# Sets the given value for 'time_zone' property.
# 
# @param time_zone  - New value for the field.
# The case-sensitive time zone, such as Europe/Sofia. Valid time zone values are based
#     on the tz (time zone) database used by Linux. The values are strings ( *string* ) in
#     the form &quot;Area/Location,&quot; in which Area is a continent or ocean name, and
#     Location is the city, island, or other regional designation. <p>
# 
# See the https://kb.vmware.com/kb/2145518 for a list of supported time zones for
#     different versions in Linux.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_time_zone {
   my ($self, %args) = @_;
   $self->{'time_zone'} = $args{'time_zone'}; 
   return;	
}

## @method get_script_text ()
# Gets the value of 'script_text' property.
#
# @retval script_text - The current value of the field.
# The script to run before and after Linux guest customization.
# The max size of the script is 1500 bytes. As long as the script (shell, perl,
#     python...) has the right &quot;#!&quot; in the header, it is supported. The caller
#     should not assume any environment variables when the script is run. <p>
# 
# The script is invoked by the customization engine using the command line: 1) with
#     argument &quot;precustomization&quot; before customization, 2) with argument
#     &quot;postcustomization&quot; after customization. The script should parse this
#     argument and implement pre-customization or post-customization task code details in
#     the corresponding block. </p>
# 
# <p>
# 
#  A Linux shell script example: </p>
# 
# <p>
# 
#   <code>#!/bin/sh
#  if [ x$1 == x&quot;precustomization&quot; ]; then
#  echo &quot;Do Precustomization tasks&quot;
#  #code for pre-customization actions...
#  elif [ x$1 == x&quot;postcustomization&quot; ]; then
#  echo &quot;Do Postcustomization tasks&quot;
#  #code for post-customization actions...
#  fi</code> </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_script_text {
   my ($self, %args) = @_;
   return $self->{'script_text'}; 	
}

## @method set_script_text ()
# Sets the given value for 'script_text' property.
# 
# @param script_text  - New value for the field.
# The script to run before and after Linux guest customization.
# The max size of the script is 1500 bytes. As long as the script (shell, perl,
#     python...) has the right &quot;#!&quot; in the header, it is supported. The caller
#     should not assume any environment variables when the script is run. <p>
# 
# The script is invoked by the customization engine using the command line: 1) with
#     argument &quot;precustomization&quot; before customization, 2) with argument
#     &quot;postcustomization&quot; after customization. The script should parse this
#     argument and implement pre-customization or post-customization task code details in
#     the corresponding block. </p>
# 
# <p>
# 
#  A Linux shell script example: </p>
# 
# <p>
# 
#   <code>#!/bin/sh
#  if [ x$1 == x&quot;precustomization&quot; ]; then
#  echo &quot;Do Precustomization tasks&quot;
#  #code for pre-customization actions...
#  elif [ x$1 == x&quot;postcustomization&quot; ]; then
#  echo &quot;Do Postcustomization tasks&quot;
#  #code for post-customization actions...
#  fi</code> </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_script_text {
   my ($self, %args) = @_;
   $self->{'script_text'} = $args{'script_text'}; 
   return;	
}


1;


