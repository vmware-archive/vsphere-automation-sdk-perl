package Com::Vmware::Vapi::Data::Value::PrimitiveValue;

use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Data::Value::DataValue);

#
# Base class for all primitive DataValues
#

sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new (data_type => $args{data_type});
   $self->{value} = undef;
   bless ($self, $class);      
   
   return ($self);
}

1;