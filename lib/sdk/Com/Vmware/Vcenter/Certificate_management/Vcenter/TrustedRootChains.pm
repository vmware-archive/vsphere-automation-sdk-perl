########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TrustedRootChains.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Certificate_management;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains
# The  ``Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains``  
#     *interface*  provides  *methods*  to create, modify, delete and read trusted root
#     certificate chains. This  *interface*  was added in vSphere API 6.7.2.
#

package Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains;

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
use Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChainsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.certificate_management.vcenter.trusted_root_chains';


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

## @method list ()
# Returns summary information for each trusted root certificate chain. This  *method*  was
# added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @retval 
# List of trusted root certificate chains summaries.
# The return type will be Array of
# Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method create ()
# Creates a new trusted root certificate chain from the CreateSpec. This  *method*  was
# added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are CertificateManagement.Manage, CertificateManagement.Administer.
#
# @param spec [REQUIRED] The information needed to create a trusted root certificate chain.
# . The value must be
# Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::CreateSpec.
#
# @retval 
# The unique identifier for the new trusted root chain.
# The return type will be String
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a trusted root certificate chain exists with id in given spec.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``CertificateManagement.Manage``  and 
#     ``CertificateManagement.Administer`` . </li>
# </ul>
#
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method get ()
# Retrieve a trusted root certificate chain for a given identifier. This  *method*  was
# added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param chain [REQUIRED] Unique identifier for a trusted root cert chain.
# . The value must be String.
#
# @retval 
# TrustedRootChain.
# The return type will be
# Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a trusted root certificate chain does not exist for given id.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $chain = $args {chain};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method delete ()
# Deletes trusted root certificate chain for a given identifier. This  *method*  was added
# in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are CertificateManagement.Manage, CertificateManagement.Administer.
#
# @param chain [REQUIRED] Unique identifier for a trusted root cert chain.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a trusted root certificate chain does not exist for given id.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``CertificateManagement.Manage``  and 
#     ``CertificateManagement.Administer`` . </li>
# </ul>
#
sub delete {
   my ($self, %args) = @_;
   my $chain = $args {chain};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains service
#########################################################################################

## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Info``  
#     *class*  contains information for a trusted root certificate chain. This  *class*  was
#     added in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cert_chain} = $args{'cert_chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.certificate_management.vcenter.trusted_root_chains.info');
   $self->set_binding_field('key' => 'cert_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Certificate_management', 'type_name' => 'X509CertChain'));
   bless $self, $class;
   return $self;
}

## @method get_cert_chain ()
# Gets the value of 'cert_chain' property.
#
# @retval cert_chain - The current value of the field.
# A certificate chain in base64 encoding. This  *field*  was added in vSphere API 6.7.2.
#
# X509CertChain#
sub get_cert_chain {
   my ($self, %args) = @_;
   return $self->{'cert_chain'}; 	
}

## @method set_cert_chain ()
# Sets the given value for 'cert_chain' property.
# 
# @param cert_chain  - New value for the field.
# A certificate chain in base64 encoding. This  *field*  was added in vSphere API 6.7.2.
#
sub set_cert_chain {
   my ($self, %args) = @_;
   $self->{'cert_chain'} = $args{'cert_chain'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Summary`` 
#     *class*  contains a trusted root certificate chain summary suitable for UI
#     presentation. This  *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{chain} = $args{'chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.certificate_management.vcenter.trusted_root_chains.summary');
   $self->set_binding_field('key' => 'chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_chain ()
# Gets the value of 'chain' property.
#
# @retval chain - The current value of the field.
# Unique identifier for chain. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_chain {
   my ($self, %args) = @_;
   return $self->{'chain'}; 	
}

## @method set_chain ()
# Sets the given value for 'chain' property.
# 
# @param chain  - New value for the field.
# Unique identifier for chain. This  *field*  was added in vSphere API 6.7.2.
#
sub set_chain {
   my ($self, %args) = @_;
   $self->{'chain'} = $args{'chain'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::CreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::CreateSpec``
#     *class*  contains information to create a trusted root certificate chain. This 
#     *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cert_chain} = $args{'cert_chain'};
   $self->{chain} = $args{'chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.certificate_management.vcenter.trusted_root_chains.create_spec');
   $self->set_binding_field('key' => 'cert_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Certificate_management', 'type_name' => 'X509CertChain'));
   $self->set_binding_field('key' => 'chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_cert_chain ()
# Gets the value of 'cert_chain' property.
#
# @retval cert_chain - The current value of the field.
# Certificate chain in base64 encoding. This  *field*  was added in vSphere API 6.7.2.
#
# X509CertChain#
sub get_cert_chain {
   my ($self, %args) = @_;
   return $self->{'cert_chain'}; 	
}

## @method set_cert_chain ()
# Sets the given value for 'cert_chain' property.
# 
# @param cert_chain  - New value for the field.
# Certificate chain in base64 encoding. This  *field*  was added in vSphere API 6.7.2.
#
sub set_cert_chain {
   my ($self, %args) = @_;
   $self->{'cert_chain'} = $args{'cert_chain'}; 
   return;	
}

## @method get_chain ()
# Gets the value of 'chain' property.
#
# @retval chain - The current value of the field.
# Unique identifier for this trusted root. Client can specify at creation as long as it
#     is unique, otherwise one will be generated. An example of a client providing the
#     identifier would be if this trusted root is associated with a VC trust. In this case
#     the identifier would be the domain id. This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_chain {
   my ($self, %args) = @_;
   return $self->{'chain'}; 	
}

## @method set_chain ()
# Sets the given value for 'chain' property.
# 
# @param chain  - New value for the field.
# Unique identifier for this trusted root. Client can specify at creation as long as it
#     is unique, otherwise one will be generated. An example of a client providing the
#     identifier would be if this trusted root is associated with a VC trust. In this case
#     the identifier would be the domain id. This  *field*  was added in vSphere API 6.7.2.
#
sub set_chain {
   my ($self, %args) = @_;
   $self->{'chain'} = $args{'chain'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Certificate_management::Vcenter::TrustedRootChains service
#########################################################################################
