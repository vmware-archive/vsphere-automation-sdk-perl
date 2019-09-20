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
#     Platform Service Controller (PSC). <b>Warning:</b> This  *interface*  is available as
#     technical preview. It may be changed in a future release.
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
# Creates a new hybrid link between the local and foreign PSC. <b>Warning:</b> This 
# *method*  is available as technical preview. It may be changed in a future release.
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
# If the values of any of the  *fields*  of the  ``spec``   *parameter*  are not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# If the PSC or the VC version is not supported.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user is not authorized.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnverifiedPeer 
# If the SSL certificate of the foreign PSC cannot be validated by comparing with the
#     thumbprint provided in 
#     :attr:`Com::Vmware::Vcenter::Hvc::Links::CreateSpec.ssl_thumbprint`  or if 
#     :attr:`Com::Vmware::Vcenter::Hvc::Links::CreateSpec.ssl_thumbprint`  is  *null* . The
#     value of the {@link UnverifiedPeer#data)  *field*  will be a  *class*  that contains
#     all the  *fields*  defined in  class Com::Vmware::Vcenter::Hvc::Links::CertificateInfo
#     .
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
# Deletes an existing hybrid link. <b>Warning:</b> This  *method*  is available as technical
# preview. It may be changed in a future release.
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
# Enumerates the list of registered hybrid links. <b>Warning:</b> This  *method*  is
# available as technical preview. It may be changed in a future release.
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
#     about the hybrid link. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

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
# Unique identifier for the link. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# Unique identifier for the link. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
#     used for the hybrid link creation. <b>Warning:</b> This  *class*  is available as
#     technical preview. It may be changed in a future release.

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
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{admin_groups} = $args{'admin_groups'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.create_spec');
   $self->set_binding_field('key' => 'psc_hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'admin_groups', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_psc_hostname ()
# Gets the value of 'psc_hostname' property.
#
# @retval psc_hostname - The current value of the field.
# The PSC hostname for the domain to be linked. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
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
# The PSC hostname for the domain to be linked. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
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
# The HTTPS port of the PSC to be linked. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# The HTTPS port of the PSC to be linked. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# The domain to which the PSC belongs. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# The domain to which the PSC belongs. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# The administrator username of the PSC. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# The administrator username of the PSC. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# The administrator password of the PSC. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# The administrator password of the PSC. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# The ssl thumbprint of the server. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# Optional#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# The ssl thumbprint of the server. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_admin_groups ()
# Gets the value of 'admin_groups' property.
#
# @retval admin_groups - The current value of the field.
# List of groups to be added to enable administrator access to. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_admin_groups {
   my ($self, %args) = @_;
   return $self->{'admin_groups'}; 	
}

## @method set_admin_groups ()
# Sets the given value for 'admin_groups' property.
# 
# @param admin_groups  - New value for the field.
# List of groups to be added to enable administrator access to. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_admin_groups {
   my ($self, %args) = @_;
   $self->{'admin_groups'} = $args{'admin_groups'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Hvc::Links::CertificateInfo
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::CertificateInfo``   *class*  contains
#     information about the SSL certificate for a destination PSC endpoint. <b>Warning:</b>
#     This  *class*  is available as technical preview. It may be changed in a future
#     release.

package Com::Vmware::Vcenter::Hvc::Links::CertificateInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::CertificateInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::CertificateInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.certificate_info');
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# The SHA-256 thumbprint of the SSL certificate for the destination PSC endpoint.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# The SHA-256 thumbprint of the SSL certificate for the destination PSC endpoint.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Hvc::Links::Credentials
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Credentials``   *interface*  specifies user
#     credentials to make a successful connection to remote endpoint. <b>Warning:</b> This 
#     *class*  is available as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Hvc::Links::Credentials;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Credentials structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{user_name} = $args{'user_name'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Credentials');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.credentials');
   $self->set_binding_field('key' => 'user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_user_name ()
# Gets the value of 'user_name' property.
#
# @retval user_name - The current value of the field.
# Name of the user to authenticate. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# String#
sub get_user_name {
   my ($self, %args) = @_;
   return $self->{'user_name'}; 	
}

## @method set_user_name ()
# Sets the given value for 'user_name' property.
# 
# @param user_name  - New value for the field.
# Name of the user to authenticate. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_user_name {
   my ($self, %args) = @_;
   $self->{'user_name'} = $args{'user_name'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password for the user. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
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
# Password for the user. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
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
