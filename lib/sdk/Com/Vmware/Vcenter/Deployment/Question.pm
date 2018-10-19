########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Question.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Deployment::Question
# The  ``Com::Vmware::Vcenter::Deployment::Question``   *interface*  provides  *methods*
#     to get the question raised during deployment and to answer them. This  *interface* 
#     was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Deployment::Question;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Vcenter::Deployment::QuestionStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method get ()
# Get the question that was raised during the configuration. This  *method*  was added in
# vSphere API 6.7.
#
# @retval 
# Info structure containing the question.
# The return type will be Com::Vmware::Vcenter::Deployment::Question::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is not in QUESTION_RAISED state.
#
# @throw Com::Vmware::Vapi::Std::Errors::InternalServerError 
# if questions could not be retrieved although the appliance is in QUESTION_RAISED
#     state.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method answer ()
# Supply answer to the raised question. This  *method*  was added in vSphere API 6.7.
#
# @param spec [REQUIRED] AnswerSpec with the answer to the raised question.
# . The value must be Com::Vmware::Vcenter::Deployment::Question::AnswerSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is NOT in QUESTION_RAISED state.
#
# @throw Com::Vmware::Vapi::Std::Errors::InternalServerError 
# if answer file could not be created.
#

sub answer {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'answer',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'answer',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Deployment::Question service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Question::QuestionType
#
# The  ``Com::Vmware::Vcenter::Deployment::Question::QuestionType``   *enumerated type* 
#     defines the type of the question raised. This  *enumeration*  was added in vSphere API
#     6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::Question::QuestionType::YES_NO #
#Question with answer values Yes/No. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Deployment::Question::QuestionType::OK_CANCEL #
#Question with answer values Ok/Cancel. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Deployment::Question::QuestionType::ABORT_RETRY_IGNORE #
#Question with answer values Abort/Retry/Ignore. This  *constant*  was added in vSphere API
# 6.7.

package Com::Vmware::Vcenter::Deployment::Question::QuestionType;

use constant {
    YES_NO =>  'YES_NO',
    OK_CANCEL =>  'OK_CANCEL',
    ABORT_RETRY_IGNORE =>  'ABORT_RETRY_IGNORE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Question::QuestionType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.question.question_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::Question::QuestionType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment::Question service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment::Question service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Question::Question
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Question::Question``   *class*  contains 
#     *fields*  to describe a deployment question. This  *class*  was added in vSphere API
#     6.7.

package Com::Vmware::Vcenter::Deployment::Question::Question;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Question::Question structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{question} = $args{'question'};
   $self->{type} = $args{'type'};
   $self->{default_answer} = $args{'default_answer'};
   $self->{possible_answers} = $args{'possible_answers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Question::Question');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.question.question');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'question', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Question::QuestionType'));
   $self->set_binding_field('key' => 'default_answer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'possible_answers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Id of the question raised. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Id of the question raised. This  *field*  was added in vSphere API 6.7.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_question ()
# Gets the value of 'question' property.
#
# @retval question - The current value of the field.
# Message describing the question. This  *field*  was added in vSphere API 6.7.
#
# LocalizableMessage#
sub get_question {
   my ($self, %args) = @_;
   return $self->{'question'}; 	
}

## @method set_question ()
# Sets the given value for 'question' property.
# 
# @param question  - New value for the field.
# Message describing the question. This  *field*  was added in vSphere API 6.7.
#
sub set_question {
   my ($self, %args) = @_;
   $self->{'question'} = $args{'question'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the question raised. This  *field*  was added in vSphere API 6.7.
#
# QuestionType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the question raised. This  *field*  was added in vSphere API 6.7.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_default_answer ()
# Gets the value of 'default_answer' property.
#
# @retval default_answer - The current value of the field.
# Default answer value. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_default_answer {
   my ($self, %args) = @_;
   return $self->{'default_answer'}; 	
}

## @method set_default_answer ()
# Sets the given value for 'default_answer' property.
# 
# @param default_answer  - New value for the field.
# Default answer value. This  *field*  was added in vSphere API 6.7.
#
sub set_default_answer {
   my ($self, %args) = @_;
   $self->{'default_answer'} = $args{'default_answer'}; 
   return;	
}

## @method get_possible_answers ()
# Gets the value of 'possible_answers' property.
#
# @retval possible_answers - The current value of the field.
# Possible answers values. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_possible_answers {
   my ($self, %args) = @_;
   return $self->{'possible_answers'}; 	
}

## @method set_possible_answers ()
# Sets the given value for 'possible_answers' property.
# 
# @param possible_answers  - New value for the field.
# Possible answers values. This  *field*  was added in vSphere API 6.7.
#
sub set_possible_answers {
   my ($self, %args) = @_;
   $self->{'possible_answers'} = $args{'possible_answers'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Question::Info
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Question::Info``   *class*  contains 
#     *fields*  to describe questions raised during the deployment process. This  *class* 
#     was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Question::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Question::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{questions} = $args{'questions'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Question::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.question.info');
   $self->set_binding_field('key' => 'questions', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Question::Question')));
   bless $self, $class;
   return $self;
}

## @method get_questions ()
# Gets the value of 'questions' property.
#
# @retval questions - The current value of the field.
# One or more questions raised during the deployment. This  *field*  was added in
#     vSphere API 6.7.
#
# List#
sub get_questions {
   my ($self, %args) = @_;
   return $self->{'questions'}; 	
}

## @method set_questions ()
# Sets the given value for 'questions' property.
# 
# @param questions  - New value for the field.
# One or more questions raised during the deployment. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_questions {
   my ($self, %args) = @_;
   $self->{'questions'} = $args{'questions'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Question::AnswerSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Question::AnswerSpec``   *class*  contains 
#     *fields*  to describe the answer to a raised question. This  *class*  was added in
#     vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Question::AnswerSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Question::AnswerSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{question_id} = $args{'question_id'};
   $self->{answer_val} = $args{'answer_val'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Question::AnswerSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.question.answer_spec');
   $self->set_binding_field('key' => 'question_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'answer_val', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_question_id ()
# Gets the value of 'question_id' property.
#
# @retval question_id - The current value of the field.
# Id of the question being answered. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_question_id {
   my ($self, %args) = @_;
   return $self->{'question_id'}; 	
}

## @method set_question_id ()
# Sets the given value for 'question_id' property.
# 
# @param question_id  - New value for the field.
# Id of the question being answered. This  *field*  was added in vSphere API 6.7.
#
sub set_question_id {
   my ($self, %args) = @_;
   $self->{'question_id'} = $args{'question_id'}; 
   return;	
}

## @method get_answer_val ()
# Gets the value of 'answer_val' property.
#
# @retval answer_val - The current value of the field.
# The answer value. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_answer_val {
   my ($self, %args) = @_;
   return $self->{'answer_val'}; 	
}

## @method set_answer_val ()
# Sets the given value for 'answer_val' property.
# 
# @param answer_val  - New value for the field.
# The answer value. This  *field*  was added in vSphere API 6.7.
#
sub set_answer_val {
   my ($self, %args) = @_;
   $self->{'answer_val'} = $args{'answer_val'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Deployment::Question service
#########################################################################################
