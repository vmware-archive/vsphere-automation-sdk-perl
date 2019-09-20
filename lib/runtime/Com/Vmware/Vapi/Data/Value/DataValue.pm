package Com::Vmware::Vapi::Data::Value::DataValue;

use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# A piece of introspectable value in vAPI infrastructure
#

sub new
{
   my ($class, %args) = @_;
   my $self = {};
   $self-> {type} = $args {data_type};
   $self-> {value} = $args {data_value};
   $self-> {name} = $args {name};
   bless ($self, $class);

   return ($self);
}

sub accept {
   my ($self, %args) = @_;
   my $visitor = $args{visitor};
   $visitor->visit(vapi_data_object => $self);
}

sub get_value {
   my ($self, %args) = @_;
   return $self->{value};
}

sub get_name {
   my ($self, %args) = @_;
   return $self->{name};
}

1;