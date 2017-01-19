package Com::Vmware::Vapi::Data::Value::StringValue;

use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Data::Value::PrimitiveValue);
use Com::Vmware::Vapi::Data::Type;

#
# Base class for all primitive DataValues
#

sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new (data_type => Com::Vmware::Vapi::Data::Type->STRING);
   $self->{value} = $args{value};
   bless ($self, $class);      
   
   return ($self);
}

1;