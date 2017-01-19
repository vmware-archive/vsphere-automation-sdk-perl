########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ReferenceType.pm
# The file implements Reference Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::ReferenceType;

## @class ReferenceType
# Representation of Reference Type in Perl Binding
#
# @par Assumptions:
# None.
#

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Bindings::Type::BindingType);

## @method new
# Constructor to initialize the reference type object
#
# @param - module_ctx - Module reference that has the type
# @param - TypeName Fully qualified name of the type reference. i.e.
#            if the type Bar is nested inside type Foo, it would be Foo.Bar
#
# @return
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   $self->{type_name} = $args{type_name};
   $self->{module_ctx} = $args{module_ctx};
   $self->{resolved_type} = $args{resolved_type};
   bless ($self, $class);
   return ($self);
}

sub get_resolved_type {
	my ($self) = @_;
	my $resolvedTypeName = $self->{module_ctx}."::".$self->{type_name};

    if (!$resolvedTypeName->can('new')) {
       my $package = $resolvedTypeName;
       my $packageFile = Com::Vmware::Vapi::Util::Helper::get_package_file_path('name'=> $package);
       require "$packageFile";
       import $package;
    }	
	my $resolvedType = $resolvedTypeName->new();
	my $bindingType = $resolvedType->get_binding_type();
	return $bindingType;	
}

1;