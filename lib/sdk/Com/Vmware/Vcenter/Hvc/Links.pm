########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Links.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Hvc::Links
# The  ``Com::Vmware::Vcenter::Hvc::Links``   *interface*  provides  *methods*  to
#     create, delete, get information, and list hybrid links between the local and foreign
#     Platform Service Controller (PSC).
#

package Com::Vmware::Vcenter::Hvc::Links;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Vcenter::Hvc::LinksStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method create ()
# Creates a new hybrid link between the local and foreign PSC.
#
# @param spec [REQUIRED] Specification for the new link to be created.
# . The value must be Com::Vmware::Vcenter::Hvc::Links::CreateSpec.
#
# @retval 
# The identifier of the newly linked domain.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.Links).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# If the link already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the spec is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# If the PSC or the VC version is not supported.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user is not authorized.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#

sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method delete ()
# Deletes an existing hybrid link.
#
# @param link [REQUIRED] Identifier of the hybrid link.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.Links).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the hybrid link associated with  ``link``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user is not authorized.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#

sub delete {
   my ($self, %args) = @_;
   my $link = $args {link};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method list ()
# Enumerates the list of registered hybrid links.
#
# @retval 
# The  *list*  of hybrid link information.
# The return type will be Array of Com::Vmware::Vcenter::Hvc::Links::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Hvc::Links service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Hvc::Links service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Hvc::Links service
#########################################################################################

## @class Com::Vmware::Vcenter::Hvc::Links::Summary
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Summary``   *class*  contains information
#     about the hybrid link.

package Com::Vmware::Vcenter::Hvc::Links::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{link} = $args{'link'};
   $self->{display_name} = $args{'display_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.summary');
   $self->set_binding_field('key' => 'link', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_link ()
# Gets the value of 'link' property.
#
# @retval link - The current value of the field.
# Unique identifier for the link.
#
# ID#
sub get_link {
   my ($self, %args) = @_;
   return $self->{'link'}; 	
}

## @method set_link ()
# Sets the given value for 'link' property.
# 
# @param link  - New value for the field.
# Unique identifier for the link.
#
sub set_link {
   my ($self, %args) = @_;
   $self->{'link'} = $args{'link'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# The display name is set to the domain name which was set during create.
#
# String#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# The display name is set to the domain name which was set during create.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Hvc::Links::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::CreateSpec``   *class*  is the specification
#     used for the hybrid link creation.

package Com::Vmware::Vcenter::Hvc::Links::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{psc_hostname} = $args{'psc_hostname'};
   $self->{port} = $args{'port'};
   $self->{domain_name} = $args{'domain_name'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.create_spec');
   $self->set_binding_field('key' => 'psc_hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_psc_hostname ()
# Gets the value of 'psc_hostname' property.
#
# @retval psc_hostname - The current value of the field.
# The PSC hostname for the domain to be linked.
#
# String#
sub get_psc_hostname {
   my ($self, %args) = @_;
   return $self->{'psc_hostname'}; 	
}

## @method set_psc_hostname ()
# Sets the given value for 'psc_hostname' property.
# 
# @param psc_hostname  - New value for the field.
# The PSC hostname for the domain to be linked.
#
sub set_psc_hostname {
   my ($self, %args) = @_;
   $self->{'psc_hostname'} = $args{'psc_hostname'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# The HTTPS port of the PSC to be linked.
#
# Optional#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# The HTTPS port of the PSC to be linked.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_domain_name ()
# Gets the value of 'domain_name' property.
#
# @retval domain_name - The current value of the field.
# The domain to which the PSC belongs.
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
# The domain to which the PSC belongs.
#
sub set_domain_name {
   my ($self, %args) = @_;
   $self->{'domain_name'} = $args{'domain_name'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# The administrator username of the PSC.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# The administrator username of the PSC.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# The administrator password of the PSC.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# The administrator password of the PSC.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Hvc::Links service
#########################################################################################
