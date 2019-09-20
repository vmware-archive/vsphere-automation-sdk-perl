## @class Com::Vmware::Vapi::Std::Interposition::InvocationResult
#
#
# Information about the result from an interposed operation invocation. All POST
#     interposers will receive an instance of this structure.

package Com::Vmware::Vapi::Std::Interposition::InvocationResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Interposition::InvocationResult structure
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
         'discriminant_name' => 'result_type',
         'case_map' => {
               'NORMAL_RESULT' => ['output'],
               'ERROR_RESULT' => ['error'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{result_type} = $args{'result_type'};
   $self->{output} = $args{'output'};
   $self->{error} = $args{'error'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Interposition::InvocationResult');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.interposition.invocation_result');
   $self->set_binding_field('key' => 'result_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Interposition', 'type_name' => 'InvocationResult::ResultType'));
   $self->set_binding_field('key' => 'output', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::OpaqueType()));
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DynamicStructType()));
   bless $self, $class;
   return $self;
}

## @method get_result_type ()
# Gets the value of 'result_type' property.
#
# @retval result_type - The current value of the field.
# Type of the invocation result.
#
# ResultType#
sub get_result_type {
   my ($self, %args) = @_;
   return $self->{'result_type'}; 	
}

## @method set_result_type ()
# Sets the given value for 'result_type' property.
# 
# @param result_type  - New value for the field.
# Type of the invocation result.
#
sub set_result_type {
   my ($self, %args) = @_;
   $self->{'result_type'} = $args{'result_type'}; 
   return;	
}

## @method get_output ()
# Gets the value of 'output' property.
#
# @retval output - The current value of the field.
# Normal result value.
#
# optional#
sub get_output {
   my ($self, %args) = @_;
   return $self->{'output'}; 	
}

## @method set_output ()
# Sets the given value for 'output' property.
# 
# @param output  - New value for the field.
# Normal result value.
#
sub set_output {
   my ($self, %args) = @_;
   $self->{'output'} = $args{'output'}; 
   return;	
}

## @method get_error ()
# Gets the value of 'error' property.
#
# @retval error - The current value of the field.
# Error result value.
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
# Error result value.
#
sub set_error {
   my ($self, %args) = @_;
   $self->{'error'} = $args{'error'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType
#
# Type of the invocation result.
#
#
#
# Constant Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType::NORMAL_RESULT #
#Normal invocation result.
#
# Constant Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType::ERROR_RESULT #
#Error invocation result.

package Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType;

use constant {
    NORMAL_RESULT =>  'NORMAL_RESULT',
    ERROR_RESULT =>  'ERROR_RESULT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.std.interposition.invocation_result.result_type',
                           'binding_class' => 'Com::Vmware::Vapi::Std::Interposition::InvocationResult::ResultType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


