## @class Com::Vmware::Vapi::Std::LocalizationParam
#
#
# This  *class*  holds a single message parameter and formatting settings for it. The 
#     *class*  has fields for  *string* ,  *long* ,  *double* , date time and nested
#     messages. Only one will be used depending on the type of data sent. For  *date* , 
#     *double*  and  *long*  it is possible to set additional formatting details. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vapi::Std::LocalizationParam;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::LocalizationParam structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{s} = $args{'s'};
   $self->{dt} = $args{'dt'};
   $self->{i} = $args{'i'};
   $self->{d} = $args{'d'};
   $self->{l} = $args{'l'};
   $self->{format} = $args{'format'};
   $self->{precision} = $args{'precision'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::LocalizationParam');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.localization_param');
   $self->set_binding_field('key' => 's', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'dt', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'i', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'd', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DoubleType()));
   $self->set_binding_field('key' => 'l', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'NestedLocalizableMessage')));
   $self->set_binding_field('key' => 'format', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizationParam::DateTimeFormat')));
   $self->set_binding_field('key' => 'precision', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_s ()
# Gets the value of 's' property.
#
# @retval s - The current value of the field.
# *String*  value associated with the parameter. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_s {
   my ($self, %args) = @_;
   return $self->{'s'}; 	
}

## @method set_s ()
# Sets the given value for 's' property.
# 
# @param s  - New value for the field.
# *String*  value associated with the parameter. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_s {
   my ($self, %args) = @_;
   $self->{'s'} = $args{'s'}; 
   return;	
}

## @method get_dt ()
# Gets the value of 'dt' property.
#
# @retval dt - The current value of the field.
# Date and time value associated with the parameter. Use the  ``format``   *field*  to
#     specify date and time display style. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_dt {
   my ($self, %args) = @_;
   return $self->{'dt'}; 	
}

## @method set_dt ()
# Sets the given value for 'dt' property.
# 
# @param dt  - New value for the field.
# Date and time value associated with the parameter. Use the  ``format``   *field*  to
#     specify date and time display style. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_dt {
   my ($self, %args) = @_;
   $self->{'dt'} = $args{'dt'}; 
   return;	
}

## @method get_i ()
# Gets the value of 'i' property.
#
# @retval i - The current value of the field.
# *long*  value associated with the parameter. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_i {
   my ($self, %args) = @_;
   return $self->{'i'}; 	
}

## @method set_i ()
# Sets the given value for 'i' property.
# 
# @param i  - New value for the field.
# *long*  value associated with the parameter. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_i {
   my ($self, %args) = @_;
   $self->{'i'} = $args{'i'}; 
   return;	
}

## @method get_d ()
# Gets the value of 'd' property.
#
# @retval d - The current value of the field.
# The  *double*  value associated with the parameter. The number of displayed fractional
#     digits is changed via  ``precision``   *field* . This  *field*  was added in vSphere
#     API 7.0.0.0.
#
# Optional#
sub get_d {
   my ($self, %args) = @_;
   return $self->{'d'}; 	
}

## @method set_d ()
# Sets the given value for 'd' property.
# 
# @param d  - New value for the field.
# The  *double*  value associated with the parameter. The number of displayed fractional
#     digits is changed via  ``precision``   *field* . This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_d {
   my ($self, %args) = @_;
   $self->{'d'} = $args{'d'}; 
   return;	
}

## @method get_l ()
# Gets the value of 'l' property.
#
# @retval l - The current value of the field.
# Nested localizable value associated with the parameter. This is useful construct to
#     convert to human readable localized form  *enumerated type*  and  *boolean*  values.
#     It can also be used for proper handling of pluralization and gender forms in
#     localization. Recursive  ``Com::Vmware::Vapi::Std::NestedLocalizableMessage`` 
#     instances can be used for localizing short lists of items. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Optional#
sub get_l {
   my ($self, %args) = @_;
   return $self->{'l'}; 	
}

## @method set_l ()
# Sets the given value for 'l' property.
# 
# @param l  - New value for the field.
# Nested localizable value associated with the parameter. This is useful construct to
#     convert to human readable localized form  *enumerated type*  and  *boolean*  values.
#     It can also be used for proper handling of pluralization and gender forms in
#     localization. Recursive  ``Com::Vmware::Vapi::Std::NestedLocalizableMessage`` 
#     instances can be used for localizing short lists of items. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_l {
   my ($self, %args) = @_;
   $self->{'l'} = $args{'l'}; 
   return;	
}

## @method get_format ()
# Gets the value of 'format' property.
#
# @retval format - The current value of the field.
# Format associated with the date and time value in  ``dt``   *field* . The 
#     *enumeration value*   ``SHORT_DATETIME``  will be used as default. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
# Optional#
sub get_format {
   my ($self, %args) = @_;
   return $self->{'format'}; 	
}

## @method set_format ()
# Sets the given value for 'format' property.
# 
# @param format  - New value for the field.
# Format associated with the date and time value in  ``dt``   *field* . The 
#     *enumeration value*   ``SHORT_DATETIME``  will be used as default. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
sub set_format {
   my ($self, %args) = @_;
   $self->{'format'} = $args{'format'}; 
   return;	
}

## @method get_precision ()
# Gets the value of 'precision' property.
#
# @retval precision - The current value of the field.
# Number of fractional digits to include in formatted  *double*  value. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_precision {
   my ($self, %args) = @_;
   return $self->{'precision'}; 	
}

## @method set_precision ()
# Sets the given value for 'precision' property.
# 
# @param precision  - New value for the field.
# Number of fractional digits to include in formatted  *double*  value. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_precision {
   my ($self, %args) = @_;
   $self->{'precision'} = $args{'precision'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat
#
# The  ``Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat``   *enumerated type*
#     lists possible date and time formatting options. It combines the Unicode CLDR format
#     types - full, long, medium and short with 3 different presentations - date only, time
#     only and combined date and time presentation. This  *enumeration*  was added in
#     vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::SHORT_DATE #
#The date and time value will be formatted as short date, for example <i>2019-01-28</i>.
# This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::MED_DATE #
#The date and time value will be formatted as medium date, for example <i>2019 Jan 28</i>.
# This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::LONG_DATE #
#The date and time value will be formatted as long date, for example <i>2019 Jan 28</i>.
# This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::FULL_DATE #
#The date and time value will be formatted as full date, for example <i>2019 Jan 28,
# Mon</i>. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::SHORT_TIME #
#The date and time value will be formatted as short time, for example <i>12:59</i>. This 
# *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::MED_TIME #
#The date and time value will be formatted as medium time, for example <i>12:59:01</i>.
# This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::LONG_TIME #
#The date and time value will be formatted as long time, for example <i>12:59:01 Z</i>.
# This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::FULL_TIME #
#The date and time value will be formatted as full time, for example <i>12:59:01 Z</i>.
# This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::SHORT_DATE_TIME #
#The date and time value will be formatted as short date and time, for example
# <i>2019-01-28 12:59</i>. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::MED_DATE_TIME #
#The date and time value will be formatted as medium date and time, for example <i>2019 Jan
# 28 12:59:01</i>. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::LONG_DATE_TIME #
#The date and time value will be formatted as long date and time, for example <i>2019 Jan
# 28 12:59:01 Z</i>. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat::FULL_DATE_TIME #
#The date and time value will be formatted as full date and time, for example <i>2019 Jan
# 28, Mon 12:59:01 Z</i>. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat;

use constant {
    SHORT_DATE =>  'SHORT_DATE',
    MED_DATE =>  'MED_DATE',
    LONG_DATE =>  'LONG_DATE',
    FULL_DATE =>  'FULL_DATE',
    SHORT_TIME =>  'SHORT_TIME',
    MED_TIME =>  'MED_TIME',
    LONG_TIME =>  'LONG_TIME',
    FULL_TIME =>  'FULL_TIME',
    SHORT_DATE_TIME =>  'SHORT_DATE_TIME',
    MED_DATE_TIME =>  'MED_DATE_TIME',
    LONG_DATE_TIME =>  'LONG_DATE_TIME',
    FULL_DATE_TIME =>  'FULL_DATE_TIME',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.std.localization_param.date_time_format',
                           'binding_class' => 'Com::Vmware::Vapi::Std::LocalizationParam::DateTimeFormat');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


