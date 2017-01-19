package Com::Vmware::Vapi::Lib::Visitor;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# Convenience class for visitors used in vAPI Perl runtime
#

#
# @param suffix The suffix string that should be removed from
#               class name during the dispatch
#

sub new
{
   my ($class, %args) = @_;
   my $self = {};
   $self->{_suffix} = $args{suffix};
   bless ($self, $class);
   return ($self);
}

#
# Dispatch the call to the appropriate method based
# on the type of the input argument
#
# @param value The object to be used for dispatch
#        

sub visit {	
   my ($self, %args) = @_;
   my $bindingType = $args{binding_type};
   my $methodName = "visit_".$bindingType->get_method_type();
   $self->$methodName(binding_type => $bindingType);
   return $self->{_definition};
}

1;