package Com::Vmware::Vapi::Data::Definition::BooleanDefinition;

use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Data::Definition::DataDefinition);
use Com::Vmware::Vapi::Data::Type;
use Com::Vmware::Vapi::Data::Value::BooleanValue;

sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(type => Com::Vmware::Vapi::Data::Type::BOOLEAN);
   bless $self, $class;
   return ($self);
}

sub new_value {
   my ($self, %args) = @_;
   my $value = $args {value};
   return new Com::Vmware::Vapi::Data::Value::BooleanValue (value => $value);
}

1;