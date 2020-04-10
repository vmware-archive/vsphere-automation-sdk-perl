########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Access.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespaces::Access
# The  ``Com::Vmware::Vcenter::Namespaces::Access``   *interface*  provides  *methods* 
#     to manage access control of subjects on namespaces.
#

package Com::Vmware::Vcenter::Namespaces::Access;

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
use Com::Vmware::Vcenter::Namespaces::AccessStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespaces.access';


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
# Set up access control for the subject on given domain on the namespace.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @param domain [REQUIRED] The domain of the subject.
# . The value must be String.
#
# @param subject [REQUIRED] The principal for this operation.
# . The value must be String.
#
# @param type [REQUIRED] The type of subject (user or group).
# . The value must be Com::Vmware::Vcenter::Namespaces::Access::SubjectType.
#
# @param spec [REQUIRED] Information about the access control to be created.
# . The value must be Com::Vmware::Vcenter::Namespaces::Access::CreateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the specified principal on given domain is already associated with a role on the
#     namespace.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the namespace is marked for deletion or the associated cluster is being disabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``namespace``  cannot be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Configure privilege or the namespace identifier
#     begins with &quot;vmware-system&quot; prefix.
#
sub create {
   my ($self, %args) = @_;
   my $namespace = $args {namespace};
   my $domain = $args {domain};
   my $subject = $args {subject};
   my $type = $args {type};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Remove access control of the subject on given domain from the namespace.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @param domain [REQUIRED] The domain of the subject.
# . The value must be String.
#
# @param subject [REQUIRED] The principal for this operation.
# . The value must be String.
#
# @param type [REQUIRED] The type of subject (user or group).
# . The value must be Com::Vmware::Vcenter::Namespaces::Access::SubjectType.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the namespace is marked for deletion or the associated cluster is being disabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``namespace``  cannot be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified principal on given domain is not associated with the namespace.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Configure privilege or the namespace identifier
#     begins with &quot;vmware-system&quot; prefix.
#
sub delete {
   my ($self, %args) = @_;
   my $namespace = $args {namespace};
   my $domain = $args {domain};
   my $subject = $args {subject};
   my $type = $args {type};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method set ()
# Set new access control on the namespace for the subject on given domain.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @param domain [REQUIRED] The domain of the subject.
# . The value must be String.
#
# @param subject [REQUIRED] The principal for this operation.
# . The value must be String.
#
# @param type [REQUIRED] The type of subject (user or group).
# . The value must be Com::Vmware::Vcenter::Namespaces::Access::SubjectType.
#
# @param spec [REQUIRED] Information about the new access control to be assigned.
# . The value must be Com::Vmware::Vcenter::Namespaces::Access::SetSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the namespace is marked for deletion or the associated cluster is being disabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``namespace``  cannot be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified principal on given domain is not associated with the namespace.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Configure privilege or the namespace identifier
#     begins with &quot;vmware-system&quot; prefix.
#
sub set {
   my ($self, %args) = @_;
   my $namespace = $args {namespace};
   my $domain = $args {domain};
   my $subject = $args {subject};
   my $type = $args {type};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method get ()
# Get the information about the access control of the subject on given domain on the
# namespace.
#
# @param namespace [REQUIRED] Identifier for the namespace.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.namespaces.Instance).
# . The value must be str.
#
# @param domain [REQUIRED] The domain of the subject.
# . The value must be String.
#
# @param subject [REQUIRED] The principal for this operation.
# . The value must be String.
#
# @param type [REQUIRED] The type of subject (user or group).
# . The value must be Com::Vmware::Vcenter::Namespaces::Access::SubjectType.
#
# @retval 
# Information about the subject including the type and the role on the namespace.
# The return type will be Com::Vmware::Vcenter::Namespaces::Access::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``namespace``  cannot be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified principal on given domain is not associated with the namespace.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub get {
   my ($self, %args) = @_;
   my $namespace = $args {namespace};
   my $domain = $args {domain};
   my $subject = $args {subject};
   my $type = $args {type};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespaces::Access service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespaces::Access::Role
#
# The  ``Com::Vmware::Vcenter::Namespaces::Access::Role``   *enumerated type*  lists the
#     default roles which can be associated with a subject on a domain on the namespace.
#
#
#
# Constant Com::Vmware::Vcenter::Namespaces::Access::Role::EDIT #
#This role allows modification of the namespace.
#
# Constant Com::Vmware::Vcenter::Namespaces::Access::Role::VIEW #
#This is a read-only role on the namespace.

package Com::Vmware::Vcenter::Namespaces::Access::Role;

use constant {
    EDIT =>  'EDIT',
    VIEW =>  'VIEW',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Access::Role enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespaces.access.role',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespaces::Access::Role');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Namespaces::Access::SubjectType
#
# The  ``Com::Vmware::Vcenter::Namespaces::Access::SubjectType``   *enumerated type* 
#     lists the types of subjects who can be associated with a 
#     ``Com::Vmware::Vcenter::Namespaces::Access::Role``  on the namespace.
#
#
#
# Constant Com::Vmware::Vcenter::Namespaces::Access::SubjectType::USER #
#Single user.
#
# Constant Com::Vmware::Vcenter::Namespaces::Access::SubjectType::GROUP #
#Group of users.

package Com::Vmware::Vcenter::Namespaces::Access::SubjectType;

use constant {
    USER =>  'USER',
    GROUP =>  'GROUP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Access::SubjectType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespaces.access.subject_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespaces::Access::SubjectType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespaces::Access service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespaces::Access service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespaces::Access::Info
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Access::Info``   *class*  contains the
#     information about the access control of the subject on given domain on the namespace.

package Com::Vmware::Vcenter::Namespaces::Access::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Access::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{role} = $args{'role'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Access::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.access.info');
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Access::Role'));
   bless $self, $class;
   return $self;
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# Role of the subject on the namespace.
#
# Role#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# Role of the subject on the namespace.
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Access::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Access::CreateSpec``   *class*  contains the
#     specification required to create access control on the namespace.

package Com::Vmware::Vcenter::Namespaces::Access::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Access::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{role} = $args{'role'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Access::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.access.create_spec');
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Access::Role'));
   bless $self, $class;
   return $self;
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# Role to be assigned.
#
# Role#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# Role to be assigned.
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespaces::Access::SetSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::Access::SetSpec``   *class*  contains the
#     specification required to set new access control on the namespace.

package Com::Vmware::Vcenter::Namespaces::Access::SetSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::Access::SetSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{role} = $args{'role'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::Access::SetSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.access.set_spec');
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespaces', 'type_name' => 'Access::Role'));
   bless $self, $class;
   return $self;
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# Role to be assigned.
#
# Role#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# Role to be assigned.
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespaces::Access service
#########################################################################################
