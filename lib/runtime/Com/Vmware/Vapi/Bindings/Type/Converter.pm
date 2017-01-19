########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file Converter.pm
# Type converter to/from vAPI runtime data model to Perl native data model
#

package Com::Vmware::Vapi::Bindings::Type::Converter;

## @class Converter
# vAPI Interface class is used by perl client side bindings. This
# encapsulates the ApiInterfaceStub instance.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Bindings::Type::PerlToVapiVisitor'.
#

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_debug log_dumper);
use Com::Vmware::Vapi::Bindings::Type::PerlToVapiVisitor;
use Com::Vmware::Vapi::Bindings::Type::VapiToPerlVisitor;

## @method convert_to_perl
# Converts vAPI DataValue to Perl native value
#
# @param
# BindingType.
#
# @return
# Perl Native Value
#
sub convert_to_perl
{
   my (%args) = @_;
   my $bindingType = $args{binding_type};
   my $dataVal  = $args{data_value};
   log_debug (MSG => "Printing recieved input arguments for convert_to_perl()");
   log_dumper (MSG => %args);
   my $visitor = new Com::Vmware::Vapi::Bindings::Type::VapiToPerlVisitor(data_value => $dataVal);
   #log_dumper (MSG => $visitor);
   #log_dumper (MSG => $bindingType);
   $bindingType->accept ($visitor);
   my $value = $visitor->get_out_value();
   log_debug (MSG => "Printing out value of ConvertToPerl");
   log_dumper (MSG => $value);
   return $value;
}

## @method convert_to_vapi
# Converts Perl native value to vAPI DataValue
#
# @param perl_value - Native perl value
# BindingType.
#
# @return
# Vapi Data Value
#
sub convert_to_vapi {
   my (%args) = @_;
   my $bindingType = $args{binding_type};
   my $perlVal  = $args{perl_value};
   my $visitor = new Com::Vmware::Vapi::Bindings::Type::PerlToVapiVisitor(perl_value => $perlVal);
   $bindingType->accept ($visitor);
   my $value = $visitor->get_out_value();
   return $value;
}

1;