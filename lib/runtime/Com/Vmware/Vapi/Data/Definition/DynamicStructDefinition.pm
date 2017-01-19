package Com::Vmware::Vapi::Data::Definition::DynamicStructDefinition;

use Com::Vmware::Vapi::Data::Type;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

use base qw(Com::Vmware::Vapi::Data::Definition::DataDefinition);


sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(type => Com::Vmware::Vapi::Data::Type::DYNAMIC_STRUCTURE);
   bless $self, $class;
   return ($self);
}

1;