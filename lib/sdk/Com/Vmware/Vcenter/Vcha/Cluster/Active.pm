########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Active.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Vcha;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vcha::Cluster::Active
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Active``   *interface*  provides 
#     *methods*  to get information related to the active vCenter High Availability (VCHA)
#     node. This  *interface*  was added in vSphere API 6.7.1.
#

package Com::Vmware::Vcenter::Vcha::Cluster::Active;

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
use Com::Vmware::Vcenter::Vcha::Cluster::ActiveStub;

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

## @method get ()
# Retrieves information about the active node of a VCHA cluster. This  *method*  was added
# in vSphere API 6.7.1.
#
# @param vc_spec [OPTIONAL] Contains active node&apos;s management vCenter server credentials.
# If  *null* , then the active vCenter Server instance is assumed to be either
#     self-managed or else in enhanced linked mode and managed by a linked vCenter Server
#     instance.
# . The value must be Com::Vmware::Vcenter::Vcha::CredentialsSpec or None.
#
# @param partial [OPTIONAL] If true, then return only the information that does not require connecting to the
#     Active vCenter Server. 
#  If false or unset, then return all the information.
# If  *null* , then return all the information.
# . The value must be Boolean or None.
#
# @retval 
# Info Information about the VCHA network and placement of the active node.
# The return type will be Com::Vmware::Vcenter::Vcha::Cluster::Active::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the credentials provided for authentincating with the active node&apos;s management
#     vCenter server are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. <ul>
# <li> If  ``partial``  is false or unset, then the operation execution requires the
#     Global.VCServer privilege.</li>
# <li> If  ``partial``  is true, then the operation execution requires the System.Read
#     privilege.</li>
#  </ul>
#
# @throw Com::Vmware::Vapi::Std::Errors::UnverifiedPeer 
# If the SSL certificate of the management vCenter server cannot be validated. 
# The value of the data  *field*  of  class Com::Vmware::Vapi::Std::Errors::Error  will
#     be a  *class*  that contains all the  *fields*  defined in  class
#     Com::Vmware::Vcenter::Vcha::CertificateInfo .
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration 
# If the active node is on more than one datastore.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the active virtual machine is not managed by the specified vCenter server for the
#     active node.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the management interface IP address assignment is not static.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#

sub get {
   my ($self, %args) = @_;
   my $vc_spec = $args {vc_spec};
   my $partial = $args {partial};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::Active service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::Active service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vcha::Cluster::Active service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::Active::Info
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::Active::Info``   *class*  contains the
#     network and placement information of the active node of a VCHA Cluster. This  *class* 
#     was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::Active::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::Active::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{management} = $args{'management'};
   $self->{ha} = $args{'ha'};
   $self->{placement} = $args{'placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::Active::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.active.info');
   $self->set_binding_field('key' => 'management', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpSpec'));
   $self->set_binding_field('key' => 'ha', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpSpec')));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'PlacementInfo')));
   bless $self, $class;
   return $self;
}

## @method get_management ()
# Gets the value of 'management' property.
#
# @retval management - The current value of the field.
# IP specification for the Management network. This  *field*  was added in vSphere API
#     6.7.1.
#
# IpSpec#
sub get_management {
   my ($self, %args) = @_;
   return $self->{'management'}; 	
}

## @method set_management ()
# Sets the given value for 'management' property.
# 
# @param management  - New value for the field.
# IP specification for the Management network. This  *field*  was added in vSphere API
#     6.7.1.
#
sub set_management {
   my ($self, %args) = @_;
   $self->{'management'} = $args{'management'}; 
   return;	
}

## @method get_ha ()
# Gets the value of 'ha' property.
#
# @retval ha - The current value of the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_ha {
   my ($self, %args) = @_;
   return $self->{'ha'}; 	
}

## @method set_ha ()
# Sets the given value for 'ha' property.
# 
# @param ha  - New value for the field.
# IP specification for the HA network. This  *field*  was added in vSphere API 6.7.1.
#
sub set_ha {
   my ($self, %args) = @_;
   $self->{'ha'} = $args{'ha'}; 
   return;	
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Contains the placement information of the active node. This  *field*  was added in
#     vSphere API 6.7.1.
#
# Optional#
sub get_placement {
   my ($self, %args) = @_;
   return $self->{'placement'}; 	
}

## @method set_placement ()
# Sets the given value for 'placement' property.
# 
# @param placement  - New value for the field.
# Contains the placement information of the active node. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vcha::Cluster::Active service
#########################################################################################
