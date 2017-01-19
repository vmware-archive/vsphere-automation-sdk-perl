package Com::Vmware::Vapi::Data::Value::StructValue;

use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Data::Value::DataValue);
use Com::Vmware::Vapi::Data::Type;

#
# Base class for all primitive DataValues
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(data_type => Com::Vmware::Vapi::Data::Type->STRUCTURE);
   $self->{fields} = $args{value};
   $self->{name} = $args{name};
   bless ($self, $class);      
   return ($self);
}

## @method set_field
# Sets the value for the given field
#
# @param field - field name
# @param value - field value
#
# @return
# None
#
sub set_field {
   my ($self, %args) = @_;
   my $field = $args {field};
   $value = $args {value};
   $self->{fields}->{$field} = $value;
}

## @method get_field
# Gets the given field value
#
# @param field - field name
#
# @return
# Returns field value
#
sub get_field {
   my ($self, %args) = @_;
   my $field = $args {field};
   return $self->{fields}->{$field};
}

## @method has_field
# Tells whether given field is exist or not
#
# @param field - field name
#
# @return
# Returns 1 if field exists otherwise 0
#
sub has_field {
   my ($self, %args) = @_;
   my $field = $args {field};
   
   if (defined ($self->{fields}->{$field})) {
      return 1;
   }
   
   return 0;
}

## @method get_field_names
# Returns the list of field names present in this StructValue
#
# @param
# None.
#
# @return
# List of field names
#
sub get_field_names {
   my $self = shift;
   my $fields = $self->{fields};
   my @keys = keys(%$fields);
   return @keys;
}

## @method get_name
# Returns the name of the StructValue
#
# @param
# None.
#
# @return
# Structure name
#
sub get_name {
   my $self = shift;
   return $self->{name};
}

1;