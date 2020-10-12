########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Kms.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Trusted_infrastructure;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms``  
#     *interface*  contains information necessary to connect to the hosts running Key
#     Provider Service. This  *interface*  was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::KmsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_hosts.kms';


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

## @method get ()
# Returns the connection info about the Key Provider Service running on the specified host.
# This  *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ReadTrustedHosts, System.View.
#
# @param host [REQUIRED] @{link com.vmware.vcenter.Host} id.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @retval 
# The  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Info 
#     instance which contains the information necessary to connect to the Key Provider
#     Service.
# The return type will be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if service&apos;s TLS certificate chain is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``host``  doesn&apos;t match to any Host.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if connection to  ``host``  failed.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``TrustedAdmin.ReadTrustedHosts`` . </li>
# <li> The resource  ``HostSystem``  referenced by the  *parameter*   ``host``  requires
#      ``System.View`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $host = $args {host};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns a list of the hosts running a Key Provider Service matching the specified  class
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec .
# This  *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ReadTrustedHosts, System.View.
#
# @param spec [OPTIONAL] Return details about Key Provider Services matching the filter.
# If {@term.unset} return all registered Key Provider Services.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec or
# None.
#
# @param projection [OPTIONAL] The type of the returned summary - brief, normal, or full.
# If {@term.unset} a normal projection will be used.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType or
# None.
#
# @retval 
# List of  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Summary  of
#     Key Provider Services.
# The return type will be Array of
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the response data will exceed the message limit.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``TrustedAdmin.ReadTrustedHosts`` . </li>
# <li> The resource  ``HostSystem``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec.hosts`
#      requires  ``System.View`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec.clusters`
#      requires  ``System.View`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   my $spec = $args {spec};
   my $projection = $args {projection};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType
#
# The connection information could include the certificates or be a shorter summary.
#     This  *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType::FULL #
#The full connection information, including certificates. This  *constant*  was added in
# vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType::NORMAL #
#A summary containing only the hostname, port, and the group which determines the
# Attestation Services this Key Provider Service can communicate with. This  *constant*  was
# added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType::BRIEF #
#A brief summary, containing only the hostname for the Key Provider Service. This 
# *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType;

use constant {
    FULL =>  'FULL',
    NORMAL =>  'NORMAL',
    BRIEF =>  'BRIEF',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_hosts.kms.summary_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::SummaryType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Summary`` 
#     *class*  contains all the stored information about a Key Provider Service. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Summary structure
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
         'discriminant_name' => 'summary_type',
         'case_map' => {
               'BRIEF' => ['host', 'address'],
               'NORMAL' => ['host', 'address', 'group', 'cluster'],
               'FULL' => ['host', 'address', 'group', 'cluster', 'trusted_CA'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{summary_type} = $args{'summary_type'};
   $self->{host} = $args{'host'};
   $self->{address} = $args{'address'};
   $self->{group} = $args{'group'};
   $self->{cluster} = $args{'cluster'};
   $self->{trusted_CA} = $args{'trusted_CA'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_hosts.kms.summary');
   $self->set_binding_field('key' => 'summary_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts', 'type_name' => 'Kms::SummaryType'));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress')));
   $self->set_binding_field('key' => 'group', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'trusted_CA', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain')));
   bless $self, $class;
   return $self;
}

## @method get_summary_type ()
# Gets the value of 'summary_type' property.
#
# @retval summary_type - The current value of the field.
# Defines the verbosity of the summary. This  *field*  was added in vSphere API 7.0.0.0.
#
# SummaryType#
sub get_summary_type {
   my ($self, %args) = @_;
   return $self->{'summary_type'}; 	
}

## @method set_summary_type ()
# Sets the given value for 'summary_type' property.
# 
# @param summary_type  - New value for the field.
# Defines the verbosity of the summary. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_summary_type {
   my ($self, %args) = @_;
   $self->{'summary_type'} = $args{'summary_type'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# The trusted ESX on which the service runs. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# optional#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# The trusted ESX on which the service runs. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_group ()
# Gets the value of 'group' property.
#
# @retval group - The current value of the field.
# The group ID determines which Attestation Service instances this Key Provider Service
#     can communicate with. This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_group {
   my ($self, %args) = @_;
   return $self->{'group'}; 	
}

## @method set_group ()
# Sets the given value for 'group' property.
# 
# @param group  - New value for the field.
# The group ID determines which Attestation Service instances this Key Provider Service
#     can communicate with. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_group {
   my ($self, %args) = @_;
   $self->{'group'} = $args{'group'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# The opaque string identifier of the cluster in which the Key Provider Service is part
#     of. This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# The opaque string identifier of the cluster in which the Key Provider Service is part
#     of. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_trusted_CA ()
# Gets the value of 'trusted_CA' property.
#
# @retval trusted_CA - The current value of the field.
# The service&apos;s TLS certificate chain. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# optional#
sub get_trusted_CA {
   my ($self, %args) = @_;
   return $self->{'trusted_CA'}; 	
}

## @method set_trusted_CA ()
# Sets the given value for 'trusted_CA' property.
# 
# @param trusted_CA  - New value for the field.
# The service&apos;s TLS certificate chain. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_trusted_CA {
   my ($self, %args) = @_;
   $self->{'trusted_CA'} = $args{'trusted_CA'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Info``  
#     *class*  contains all the stored information about a Key Provider Service. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{host} = $args{'host'};
   $self->{address} = $args{'address'};
   $self->{group} = $args{'group'};
   $self->{cluster} = $args{'cluster'};
   $self->{trusted_CA} = $args{'trusted_CA'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_hosts.kms.info');
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'));
   $self->set_binding_field('key' => 'group', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'trusted_CA', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain'));
   bless $self, $class;
   return $self;
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# The trusted ESX on which the service runs. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# ID#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# The trusted ESX on which the service runs. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
#
# NetworkAddress#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_group ()
# Gets the value of 'group' property.
#
# @retval group - The current value of the field.
# The group ID determines which Attestation Service instances this Key Provider Service
#     can communicate with. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_group {
   my ($self, %args) = @_;
   return $self->{'group'}; 	
}

## @method set_group ()
# Sets the given value for 'group' property.
# 
# @param group  - New value for the field.
# The group ID determines which Attestation Service instances this Key Provider Service
#     can communicate with. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_group {
   my ($self, %args) = @_;
   $self->{'group'} = $args{'group'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# The opaque string identifier of the cluster in which the Key Provider Service is part
#     of. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# The opaque string identifier of the cluster in which the Key Provider Service is part
#     of. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_trusted_CA ()
# Gets the value of 'trusted_CA' property.
#
# @retval trusted_CA - The current value of the field.
# The service&apos;s TLS certificate chain. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# X509CertChain#
sub get_trusted_CA {
   my ($self, %args) = @_;
   return $self->{'trusted_CA'}; 	
}

## @method set_trusted_CA ()
# Sets the given value for 'trusted_CA' property.
# 
# @param trusted_CA  - New value for the field.
# The service&apos;s TLS certificate chain. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_trusted_CA {
   my ($self, %args) = @_;
   $self->{'trusted_CA'} = $args{'trusted_CA'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec``
#     *class*  contains the data necessary for identifying a Key Provider Service. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hosts} = $args{'hosts'};
   $self->{clusters} = $args{'clusters'};
   $self->{address} = $args{'address'};
   $self->{groups} = $args{'groups'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_hosts.kms.filter_spec');
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'clusters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'))));
   $self->set_binding_field('key' => 'groups', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# A set of host IDs by which to filter the services. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
# Optional#
sub get_hosts {
   my ($self, %args) = @_;
   return $self->{'hosts'}; 	
}

## @method set_hosts ()
# Sets the given value for 'hosts' property.
# 
# @param hosts  - New value for the field.
# A set of host IDs by which to filter the services. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}

## @method get_clusters ()
# Gets the value of 'clusters' property.
#
# @retval clusters - The current value of the field.
# A set of cluster IDs by which to filter the services. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Optional#
sub get_clusters {
   my ($self, %args) = @_;
   return $self->{'clusters'}; 	
}

## @method set_clusters ()
# Sets the given value for 'clusters' property.
# 
# @param clusters  - New value for the field.
# A set of cluster IDs by which to filter the services. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_clusters {
   my ($self, %args) = @_;
   $self->{'clusters'} = $args{'clusters'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_groups ()
# Gets the value of 'groups' property.
#
# @retval groups - The current value of the field.
# The group determines reports issued by which Attestation Service instances this Key
#     Provider Service can accept. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_groups {
   my ($self, %args) = @_;
   return $self->{'groups'}; 	
}

## @method set_groups ()
# Sets the given value for 'groups' property.
# 
# @param groups  - New value for the field.
# The group determines reports issued by which Attestation Service instances this Key
#     Provider Service can accept. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_groups {
   my ($self, %args) = @_;
   $self->{'groups'} = $args{'groups'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_hosts::Kms service
#########################################################################################
