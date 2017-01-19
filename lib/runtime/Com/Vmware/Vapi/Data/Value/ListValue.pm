package Com::Vmware::Vapi::Data::Value::ListValue;
use strict;

use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Data::Value::DataValue);
use Com::Vmware::Vapi::Data::Type;

#
# Base class for all primitive DataValues
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(data_type => Com::Vmware::Vapi::Data::Type->LIST);
   $self->{value} = [];
   bless ($self, $class);      
   return ($self);
}

sub set_field {
   my ($self, %args) = @_;
   my $field = $args {field};
   my $value = $args {value};
   $self->{fields}->{$field} = $value;
}

sub add {
   my ($self, %args) = @_;
   my $value = $args {value};   
   my @values = @{$self->{value}}; 
   push (@values, $value);
   $self->{value} = \@values;
   #log_dumper (MSG => $self->{value});
}

1;