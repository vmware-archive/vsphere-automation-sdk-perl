########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file TypeUtil.pm
# The file converts a BindingType object to DataDefinition object
#

package Com::Vmware::Vapi::Bindings::Type::TypeUtil;

## @class TypeUtil
# vAPI Interface class is used by the python client side bindings. This
# encapsulates the ApiInterfaceStub instance
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Bindings::Type::DataDefinitionBuilder'.
#

our @ISA = qw(Exporter);
our @EXPORT = qw(convert_to_data_definition);

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::DataDefinitionBuilder;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

## @method convert_to_data_definition
# Converts a BindingType object to DataDefinition object
#
# @param
# binding_type - Binding type of value
#
# @return
# DataDefinition
#
sub convert_to_data_definition {
   my (%args) = @_;
   my $seenStructures = \[];
   my $bindingType = $args{binding_type};
   my $ctx = "";
   my $visitor = new Com::Vmware::Vapi::Bindings::Type::DataDefinitionBuilder (ctx => $ctx, seen_structures => $seenStructures);
   $bindingType->accept($visitor);
   return $visitor->get_out_value();
}

1;