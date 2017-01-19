########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file BindingTypeVisitor.pm
# The file implements the binding classes for visitors.
#

package Com::Vmware::Vapi::Bindings::Type::BindingTypeVisitor;

## @class BindingTypeVisitor
# Defines the binding type visitors for vAPI structures
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Lib::Visitor'.

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

use base qw(Com::Vmware::Vapi::Lib::Visitor);

## @method new
# Constructor to initialize the BindingType visitor
#
# @param
# None.
#
# @return
# Blessed object
#
sub new
{
   my $class = shift;
   my $self = $class->SUPER::new (suffix => 'Type');
   bless ($self, $class);
   return ($self);
}

## @method visit_primitive
# Visit a primitive type perl value for visitor
#
# @return
# None.
#
# @par Side Effects:
# None
#
sub visit_primitive {
   my ($self) = shift;
   return;
}

## @method visit_struct
# Visit a Struct value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_struct {
   my ($self) = shift;
   return;
}

## @method visit_string
# Visit a String value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_string {
   my ($self) = shift;
   return;
}

## @method visit_boolean
# Visit a Boolean value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_boolean {
   my ($self) = shift;
   return;
}

## @method visit_integer
# Visit a Integer value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_integer {
   my ($self) = shift;
   return;
}

## @method visit_double
# Visit a Double value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_double {
   my ($self) = shift;
   return;
}

## @method visit_list
# Visit a List value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_list {
   my ($self) = shift;
   return;
}

## @method visit_enum
# Visit a Enum value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_enum {
   my ($self) = shift;
   return;
}

## @method visit_void
# Visit a Void value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_void {
   my ($self) = shift;
   return;
}

## @method visit_long
# Visit a Long value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_long {
   my ($self) = shift;
   return;
}

## @method visit_blob
# Visit a Blob value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_blob {
   my ($self) = shift;
   return;
}

## @method visit_secret
# Visit a Secret value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_secret {
   my ($self) = shift;
   return;
}

## @method visit_opaque
# Visit a Opaque value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_opaque {
   my ($self) = shift;
   return;
}

## @method visit_date_time
# Visit a DateTime value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_date_time {
   my ($self) = shift;
   return;
}

## @method visit_uri
# Visit a URI value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_uri {
   my ($self) = shift;
   return;
}

## @method visit_reference
# Visit a Reference value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_reference {
   my ($self) = shift;
   return;
}

## @method visit_optional
# Visit a Optional value
#
# @return
# vAPI Data value.
#
# @par Side Effects:
# None
#
sub visit_optional {
   my ($self) = shift;
   return;
}

1;