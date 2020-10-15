########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Associations.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Tagging::Associations
# The  ``Com::Vmware::Vcenter::Tagging::Associations``   *interface*  provides 
#     *methods*  to list tag associations. This  *interface*  was added in vSphere API
#     7.0.0.0.
#

package Com::Vmware::Vcenter::Tagging::Associations;

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
use Com::Vmware::Vcenter::Tagging::AssociationsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.tagging.associations';


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
# Returns tag associations that match the specified iteration spec. This  *method*  was
# added in vSphere API 7.0.0.0.
#
# @param iterate [OPTIONAL] The specification of a page to be retrieved.
# If  *null* , the first page will be retrieved.
# . The value must be Com::Vmware::Vcenter::Tagging::Associations::IterationSpec or None.
#
# @retval 
# A page of the tag associations matching the iteration spec.
# The return type will be Com::Vmware::Vcenter::Tagging::Associations::ListResult
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  :attr:`Com::Vmware::Vcenter::Tagging::Associations::IterationSpec.marker`  is not
#     a marker returned from an earlier invocation of this {@term operation).
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
sub list {
   my ($self, %args) = @_;
   my $iterate = $args {iterate};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Tagging::Associations service
#########################################################################################

## @class Com::Vmware::Vcenter::Tagging::Associations::LastIterationStatus
#
# The last status for the iterator. A field of this type is returned as part of the
#     result and indicates to the caller of the API whether it can continue to make requests
#     for more data. <p>
# 
# The last status only reports on the state of the iteration at the time data was last
#     returned. As a result, it not does guarantee if the next call will succeed in getting
#     more data or not. </p>
# 
# <p>
# 
# Failures to retrieve results will be returned as Error responses. These last statuses
#     are only returned when the iterator is operating as expected.</p>
# 
# . This  *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Tagging::Associations::LastIterationStatus::READY #
#Iterator has more data pending and is ready to provide it. The caller can request the next
# page of data at any time. <p>
# 
# The number of results returned may be less than the usual size. In other words, the
# iterator may not fill the page. The iterator has returned at least 1 result.</p>
# 
# . This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Tagging::Associations::LastIterationStatus::END_OF_DATA #
#Iterator has finished iterating through its inventory. There are currently no more
# entities to return and the caller can terminate iteration. If the iterator returned some
# data, the marker may be set to allow the iterator to continue from where it left off when
# additional data does become available. This value is used to indicate that all available
# data has been returned by the iterator. This  *constant*  was added in vSphere API
# 7.0.0.0.

package Com::Vmware::Vcenter::Tagging::Associations::LastIterationStatus;

use constant {
    READY =>  'READY',
    END_OF_DATA =>  'END_OF_DATA',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tagging::Associations::LastIterationStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.tagging.associations.last_iteration_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Tagging::Associations::LastIterationStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Tagging::Associations service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Tagging::Associations service
#########################################################################################

## @class Com::Vmware::Vcenter::Tagging::Associations::IterationSpec
#
#
# The  ``Com::Vmware::Vcenter::Tagging::Associations::IterationSpec``   *class* 
#     contains  *fields*  used to break results into pages when listing tags associated to
#     objects see  :func:`Com::Vmware::Vcenter::Tagging::Associations.list` ). This  *class*
#      was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Tagging::Associations::IterationSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tagging::Associations::IterationSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{marker} = $args{'marker'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tagging::Associations::IterationSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tagging.associations.iteration_spec');
   $self->set_binding_field('key' => 'marker', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_marker ()
# Gets the value of 'marker' property.
#
# @retval marker - The current value of the field.
# Marker is an opaque token that allows the caller to request the next page of tag
#     associations. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_marker {
   my ($self, %args) = @_;
   return $self->{'marker'}; 	
}

## @method set_marker ()
# Sets the given value for 'marker' property.
# 
# @param marker  - New value for the field.
# Marker is an opaque token that allows the caller to request the next page of tag
#     associations. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_marker {
   my ($self, %args) = @_;
   $self->{'marker'} = $args{'marker'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Tagging::Associations::Summary
#
#
# The  ``Com::Vmware::Vcenter::Tagging::Associations::Summary``  describes a tag
#     association. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Tagging::Associations::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tagging::Associations::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{tag} = $args{'tag'};
   $self->{object} = $args{'object'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tagging::Associations::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tagging.associations.summary');
   $self->set_binding_field('key' => 'tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'object', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'));
   bless $self, $class;
   return $self;
}

## @method get_tag ()
# Gets the value of 'tag' property.
#
# @retval tag - The current value of the field.
# The identifier of a tag. This  *field*  was added in vSphere API 7.0.0.0.
#
# ID#
sub get_tag {
   my ($self, %args) = @_;
   return $self->{'tag'}; 	
}

## @method set_tag ()
# Sets the given value for 'tag' property.
# 
# @param tag  - New value for the field.
# The identifier of a tag. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_tag {
   my ($self, %args) = @_;
   $self->{'tag'} = $args{'tag'}; 
   return;	
}

## @method get_object ()
# Gets the value of 'object' property.
#
# @retval object - The current value of the field.
# The identifier of an associated object. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# DynamicID#
sub get_object {
   my ($self, %args) = @_;
   return $self->{'object'}; 	
}

## @method set_object ()
# Sets the given value for 'object' property.
# 
# @param object  - New value for the field.
# The identifier of an associated object. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_object {
   my ($self, %args) = @_;
   $self->{'object'} = $args{'object'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Tagging::Associations::ListResult
#
#
# The  ``Com::Vmware::Vcenter::Tagging::Associations::ListResult``   *class*  contains
#     the list of tag associations in a page, as well as related metadata fields. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Tagging::Associations::ListResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tagging::Associations::ListResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{associations} = $args{'associations'};
   $self->{marker} = $args{'marker'};
   $self->{status} = $args{'status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tagging::Associations::ListResult');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tagging.associations.list_result');
   $self->set_binding_field('key' => 'associations', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Tagging', 'type_name' => 'Associations::Summary')));
   $self->set_binding_field('key' => 'marker', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Tagging', 'type_name' => 'Associations::LastIterationStatus'));
   bless $self, $class;
   return $self;
}

## @method get_associations ()
# Gets the value of 'associations' property.
#
# @retval associations - The current value of the field.
# List of tag associations. This  *field*  was added in vSphere API 7.0.0.0.
#
# List#
sub get_associations {
   my ($self, %args) = @_;
   return $self->{'associations'}; 	
}

## @method set_associations ()
# Sets the given value for 'associations' property.
# 
# @param associations  - New value for the field.
# List of tag associations. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_associations {
   my ($self, %args) = @_;
   $self->{'associations'} = $args{'associations'}; 
   return;	
}

## @method get_marker ()
# Gets the value of 'marker' property.
#
# @retval marker - The current value of the field.
# Marker is an opaque data structure that allows the caller to request the next page of
#     tag associations. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_marker {
   my ($self, %args) = @_;
   return $self->{'marker'}; 	
}

## @method set_marker ()
# Sets the given value for 'marker' property.
# 
# @param marker  - New value for the field.
# Marker is an opaque data structure that allows the caller to request the next page of
#     tag associations. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_marker {
   my ($self, %args) = @_;
   $self->{'marker'} = $args{'marker'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The last status for the iterator that indicates whether any more results can be
#     expected if the caller continues to make requests for more data using the iterator.
#     This  *field*  was added in vSphere API 7.0.0.0.
#
# LastIterationStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The last status for the iterator that indicates whether any more results can be
#     expected if the caller continues to make requests for more data using the iterator.
#     This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Tagging::Associations service
#########################################################################################
