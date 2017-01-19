## @class Com::Vmware::Vcenter::Ovf::OvfWarning
#
#
# The  ``Com::Vmware::Vcenter::Ovf::OvfWarning``   *class*  describes a warning related
#     to accessing, validating, deploying, or exporting an OVF package.

package Com::Vmware::Vcenter::Ovf::OvfWarning;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::OvfWarning structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'category',
         'case_map' => {
               'VALIDATION' => ['issues'],
               'INPUT' => ['name', 'value', 'message'],
               'SERVER' => ['error'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{category} = $args{'category'};
   $self->{issues} = $args{'issues'};
   $self->{name} = $args{'name'};
   $self->{value} = $args{'value'};
   $self->{message} = $args{'message'};
   $self->{error} = $args{'error'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::OvfWarning');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.ovf_warning');
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'OvfMessage::Category'));
   $self->set_binding_field('key' => 'issues', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'ParseIssue'))));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   bless $self, $class;
   return $self;
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# The message category.
#
# Category#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# The message category.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_issues ()
# Gets the value of 'issues' property.
#
# @retval issues - The current value of the field.
#  *List*  of parse issues (see  class Com::Vmware::Vcenter::Ovf::ParseIssue ).
#
# optional#
sub get_issues {
   my ($self, %args) = @_;
   return $self->{'issues'}; 	
}

## @method set_issues ()
# Sets the given value for 'issues' property.
# 
# @param issues  - New value for the field.
#  *List*  of parse issues (see  class Com::Vmware::Vcenter::Ovf::ParseIssue ).
#
sub set_issues {
   my ($self, %args) = @_;
   $self->{'issues'} = $args{'issues'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of input parameter.
#
# optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The name of input parameter.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_value ()
# Gets the value of 'value' property.
#
# @retval value - The current value of the field.
# The value of input parameter.
#
# optional#
sub get_value {
   my ($self, %args) = @_;
   return $self->{'value'}; 	
}

## @method set_value ()
# Sets the given value for 'value' property.
# 
# @param value  - New value for the field.
# The value of input parameter.
#
sub set_value {
   my ($self, %args) = @_;
   $self->{'value'} = $args{'value'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# A localizable message.
#
# optional#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# A localizable message.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}

## @method get_error ()
# Gets the value of 'error' property.
#
# @retval error - The current value of the field.
# Represents a server  class Com::Vmware::Vapi::Std::Errors::Error .
#
# optional#
sub get_error {
   my ($self, %args) = @_;
   return $self->{'error'}; 	
}

## @method set_error ()
# Sets the given value for 'error' property.
# 
# @param error  - New value for the field.
# Represents a server  class Com::Vmware::Vapi::Std::Errors::Error .
#
sub set_error {
   my ($self, %args) = @_;
   $self->{'error'} = $args{'error'}; 
   return;	
}


1;


