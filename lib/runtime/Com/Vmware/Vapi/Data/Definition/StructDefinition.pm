package Com::Vmware::Vapi::Data::Definition::StructDefinition;

use Com::Vmware::Vapi::Data::Type;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Data::Value::StructValue;

use base qw(Com::Vmware::Vapi::Data::Definition::DataDefinition);


sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(type => Com::Vmware::Vapi::Data::Type::STRUCTURE);
   bless $self, $class;
   return ($self);
}

sub new_value {
   my ($self, %args) = @_;
   my $value = $args {value};
   my $name = $args {name};
   return new Com::Vmware::Vapi::Data::Value::StructValue (name => $name, value => $value);
}

1;