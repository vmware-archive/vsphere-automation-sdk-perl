package Com::Vmware::Vapi::Data::Value::ErrorValue;

use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Data::Value::DataValue);
use Com::Vmware::Vapi::Data::Type;

#
# Base class for all primitive DataValues
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(data_type => Com::Vmware::Vapi::Data::Type->ERROR);
   $self->{fields} = $args{value};
   $self->{name} = $args{name};
   bless ($self, $class);      
   return ($self);
}

sub set_field {
   my ($self, %args) = @_;
   my $field = $args {field};
   $value = $args {value};
   $self->{fields}->{$field} = $value;
}

sub get_field {
   my ($self, %args) = @_;
   my $field = $args {field};
   return $self->{fields}->{$field};
}

sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'};
}

1;
