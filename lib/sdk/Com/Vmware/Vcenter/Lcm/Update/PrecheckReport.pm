########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file PrecheckReport.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Lcm;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Update::PrecheckReport
# The  ``Com::Vmware::Vcenter::Lcm::Update::PrecheckReport``   *interface*  generates
#     precheck report for a vCenter Server instance against a target update version.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for precheck report

package Com::Vmware::Vcenter::Lcm::Update::PrecheckReport;

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
use Com::Vmware::Vcenter::Lcm::Update::PrecheckReportStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.lcm.update.precheck_report';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';

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

## @method create_task ()
# Creates a vCenter Server pre-update compatibility check report for the pending update
# version. The report can be exported and downloaded in CSV format. <p>
# 
# The result of this operation can be queried by calling the null  *method*  where  ``task``
#  is the response of this operation.</p>
#
# @param version [REQUIRED] Pending update version for which pre-update compatibility check will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.lcm.update.pending).
# . The value must be str.
#
# @retval 
# The precheck report, which contains a link to download the CSV report as well
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no pending update assosiated with the  ``version``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if a precheck is already in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is some unknown internal error. The accompanying error message will give more
#     details about the error.
#
sub create_task {
   my ($self, %args) = @_;
   my $version = $args {version};

   $self->validate_args (method_name => 'create$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'create$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Update::PrecheckReport service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Update::PrecheckReport service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Update::PrecheckReport service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::ReportSummary
#
#
# The  ``Summary``   *Class*  contains the summary of precheck report.

package Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::ReportSummary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::ReportSummary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{error_count} = $args{'error_count'};
   $self->{warning_count} = $args{'warning_count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::ReportSummary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.update.precheck_report.report_summary');
   $self->set_binding_field('key' => 'error_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'warning_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_error_count ()
# Gets the value of 'error_count' property.
#
# @retval error_count - The current value of the field.
# Number of errors detected by precheck process
#
# long#
sub get_error_count {
   my ($self, %args) = @_;
   return $self->{'error_count'}; 	
}

## @method set_error_count ()
# Sets the given value for 'error_count' property.
# 
# @param error_count  - New value for the field.
# Number of errors detected by precheck process
#
sub set_error_count {
   my ($self, %args) = @_;
   $self->{'error_count'} = $args{'error_count'}; 
   return;	
}

## @method get_warning_count ()
# Gets the value of 'warning_count' property.
#
# @retval warning_count - The current value of the field.
# Number of warnings detected by precheck process
#
# long#
sub get_warning_count {
   my ($self, %args) = @_;
   return $self->{'warning_count'}; 	
}

## @method set_warning_count ()
# Sets the given value for 'warning_count' property.
# 
# @param warning_count  - New value for the field.
# Number of warnings detected by precheck process
#
sub set_warning_count {
   my ($self, %args) = @_;
   $self->{'warning_count'} = $args{'warning_count'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Report
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Report``   *class*  contains
#     estimates of how long it will take an update as well as a list of possible warnings
#     and errors with applying the update.

package Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Report;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Report structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{date_created} = $args{'date_created'};
   $self->{estimated_time_to_update} = $args{'estimated_time_to_update'};
   $self->{issues} = $args{'issues'};
   $self->{summary} = $args{'summary'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Report');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.update.precheck_report.report');
   $self->set_binding_field('key' => 'date_created', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'estimated_time_to_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'issues', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Notifications')));
   $self->set_binding_field('key' => 'summary', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'PrecheckReport::ReportSummary'));
   bless $self, $class;
   return $self;
}

## @method get_date_created ()
# Gets the value of 'date_created' property.
#
# @retval date_created - The current value of the field.
# Time when this precheck report was generated
#
# DateTime#
sub get_date_created {
   my ($self, %args) = @_;
   return $self->{'date_created'}; 	
}

## @method set_date_created ()
# Sets the given value for 'date_created' property.
# 
# @param date_created  - New value for the field.
# Time when this precheck report was generated
#
sub set_date_created {
   my ($self, %args) = @_;
   $self->{'date_created'} = $args{'date_created'}; 
   return;	
}

## @method get_estimated_time_to_update ()
# Gets the value of 'estimated_time_to_update' property.
#
# @retval estimated_time_to_update - The current value of the field.
# Rough estimate of time to update vCenter Server in minutes.
#
# Optional#
sub get_estimated_time_to_update {
   my ($self, %args) = @_;
   return $self->{'estimated_time_to_update'}; 	
}

## @method set_estimated_time_to_update ()
# Sets the given value for 'estimated_time_to_update' property.
# 
# @param estimated_time_to_update  - New value for the field.
# Rough estimate of time to update vCenter Server in minutes.
#
sub set_estimated_time_to_update {
   my ($self, %args) = @_;
   $self->{'estimated_time_to_update'} = $args{'estimated_time_to_update'}; 
   return;	
}

## @method get_issues ()
# Gets the value of 'issues' property.
#
# @retval issues - The current value of the field.
# Lists of the issues and warnings
#
# Optional#
sub get_issues {
   my ($self, %args) = @_;
   return $self->{'issues'}; 	
}

## @method set_issues ()
# Sets the given value for 'issues' property.
# 
# @param issues  - New value for the field.
# Lists of the issues and warnings
#
sub set_issues {
   my ($self, %args) = @_;
   $self->{'issues'} = $args{'issues'}; 
   return;	
}

## @method get_summary ()
# Gets the value of 'summary' property.
#
# @retval summary - The current value of the field.
# A summary of the report consist of count of warnings and errors returned by running
#     the precheck.
#
# ReportSummary#
sub get_summary {
   my ($self, %args) = @_;
   return $self->{'summary'}; 	
}

## @method set_summary ()
# Sets the given value for 'summary' property.
# 
# @param summary  - New value for the field.
# A summary of the report consist of count of warnings and errors returned by running
#     the precheck.
#
sub set_summary {
   my ($self, %args) = @_;
   $self->{'summary'} = $args{'summary'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Result
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Result``   *class*  contains
#     the precheck report and a link to download the CSV report.

package Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Result;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Result structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{report} = $args{'report'};
   $self->{csv_report} = $args{'csv_report'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Update::PrecheckReport::Result');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.update.precheck_report.result');
   $self->set_binding_field('key' => 'report', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Update', 'type_name' => 'PrecheckReport::Report'));
   $self->set_binding_field('key' => 'csv_report', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_report ()
# Gets the value of 'report' property.
#
# @retval report - The current value of the field.
# The report generated by running the precheck.
#
# Report#
sub get_report {
   my ($self, %args) = @_;
   return $self->{'report'}; 	
}

## @method set_report ()
# Sets the given value for 'report' property.
# 
# @param report  - New value for the field.
# The report generated by running the precheck.
#
sub set_report {
   my ($self, %args) = @_;
   $self->{'report'} = $args{'report'}; 
   return;	
}

## @method get_csv_report ()
# Gets the value of 'csv_report' property.
#
# @retval csv_report - The current value of the field.
# The identifier of CSV formatted precheck report. null provides location where the CSV
#     report can be downloaded from based on the  ``csvReport`` .
#
# Optional#
sub get_csv_report {
   my ($self, %args) = @_;
   return $self->{'csv_report'}; 	
}

## @method set_csv_report ()
# Sets the given value for 'csv_report' property.
# 
# @param csv_report  - New value for the field.
# The identifier of CSV formatted precheck report. null provides location where the CSV
#     report can be downloaded from based on the  ``csvReport`` .
#
sub set_csv_report {
   my ($self, %args) = @_;
   $self->{'csv_report'} = $args{'csv_report'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Update::PrecheckReport service
#########################################################################################
