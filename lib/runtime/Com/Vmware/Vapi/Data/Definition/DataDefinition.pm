package Com::Vmware::Vapi::Data::Definition::DataDefinition;

use Data::Dumper;
use Com::Vmware::Vapi::Data::Type;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{type} = $args{type};
   bless( $self, $class );
   return ($self);
}

sub valid_instance_of {
   my ( $self, %args ) = @_;
   my $value = $args{value};
   return $self->validate( value => $value );
}

sub validate {
   my ( $self, %args ) = @_;
   my $value = $args{value};
   if ( !defined $value ) {
      return "vapi.data.validate.mismatch";
   }
   if ( $value->{type} ne $self->{type} ) {
      return "vapi.data.validate.mismatch";
   }

   return undef;
}

sub accept {
   my ( $self, %args ) = @_;
   my $visitor = $args{visitor};
   $visitor->visit( vapi_data_object => $self );
}

1;
