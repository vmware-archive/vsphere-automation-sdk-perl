########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file InteropReport.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Lcm;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Discovery::InteropReport
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::InteropReport``   *interface*  provides 
#     *methods*  to report the interoperability between a vCenter Server release version and
#     the other installed VMware products registered in the vCenter Server instance.
#

package Com::Vmware::Vcenter::Lcm::Discovery::InteropReport;

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
use Com::Vmware::Vcenter::Lcm::Discovery::InteropReportStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.lcm.discovery.interop_report';

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
# Creates interoperability report between a vCenter Server release version and all
# registered products with the vCenter Server instance. <p>
# 
# The result of this operation can be queried by calling the null  *method*  where  ``task``
#  is the response of this operation.</p>
#
# @param spec [OPTIONAL] 
# Specifies the target version against this interoperability check report will be
#     generated. If  *null*  the report will be generated for the currently installed
#     version of the vCenter server.
# . The value must be Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Spec or None.
#
# @retval 
# The interoperability report.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub create_task {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'create$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReleaseInfo
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReleaseInfo``   *class* 
#     contains a product release information.

package Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReleaseInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReleaseInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{note} = $args{'note'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReleaseInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.interop_report.release_info');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'note', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# The version of the release.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# The version of the release.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_note ()
# Gets the value of 'note' property.
#
# @retval note - The current value of the field.
# A link to the release notes of the release.
#
# Optional#
sub get_note {
   my ($self, %args) = @_;
   return $self->{'note'}; 	
}

## @method set_note ()
# Sets the given value for 'note' property.
# 
# @param note  - New value for the field.
# A link to the release notes of the release.
#
sub set_note {
   my ($self, %args) = @_;
   $self->{'note'} = $args{'note'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportRow
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportRow``   *class* 
#     contains the interoperability between a given product and the target product.

package Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportRow;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportRow structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{product} = $args{'product'};
   $self->{compatible} = $args{'compatible'};
   $self->{compatible_releases} = $args{'compatible_releases'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportRow');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.interop_report.report_row');
   $self->set_binding_field('key' => 'product', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Discovery', 'type_name' => 'Product'));
   $self->set_binding_field('key' => 'compatible', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'compatible_releases', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Discovery', 'type_name' => 'InteropReport::ReleaseInfo')));
   bless $self, $class;
   return $self;
}

## @method get_product ()
# Gets the value of 'product' property.
#
# @retval product - The current value of the field.
# The product to compare to the target product.
#
# Product#
sub get_product {
   my ($self, %args) = @_;
   return $self->{'product'}; 	
}

## @method set_product ()
# Sets the given value for 'product' property.
# 
# @param product  - New value for the field.
# The product to compare to the target product.
#
sub set_product {
   my ($self, %args) = @_;
   $self->{'product'} = $args{'product'}; 
   return;	
}

## @method get_compatible ()
# Gets the value of 'compatible' property.
#
# @retval compatible - The current value of the field.
# Defines whether the product is compatible against the target product.
#
# boolean#
sub get_compatible {
   my ($self, %args) = @_;
   return $self->{'compatible'}; 	
}

## @method set_compatible ()
# Sets the given value for 'compatible' property.
# 
# @param compatible  - New value for the field.
# Defines whether the product is compatible against the target product.
#
sub set_compatible {
   my ($self, %args) = @_;
   $self->{'compatible'} = $args{'compatible'}; 
   return;	
}

## @method get_compatible_releases ()
# Gets the value of 'compatible_releases' property.
#
# @retval compatible_releases - The current value of the field.
# A list of compatible releases of the product with the target product.
#
# List#
sub get_compatible_releases {
   my ($self, %args) = @_;
   return $self->{'compatible_releases'}; 	
}

## @method set_compatible_releases ()
# Sets the given value for 'compatible_releases' property.
# 
# @param compatible_releases  - New value for the field.
# A list of compatible releases of the product with the target product.
#
sub set_compatible_releases {
   my ($self, %args) = @_;
   $self->{'compatible_releases'} = $args{'compatible_releases'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportSummary
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportSummary``   *class* 
#     contains a summary of the 
#     :attr:`Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Report.products` . It
#     consists of the count of compatible and incompatible products to the target product.

package Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportSummary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportSummary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{compatible_count} = $args{'compatible_count'};
   $self->{incompatible_count} = $args{'incompatible_count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::ReportSummary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.interop_report.report_summary');
   $self->set_binding_field('key' => 'compatible_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'incompatible_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_compatible_count ()
# Gets the value of 'compatible_count' property.
#
# @retval compatible_count - The current value of the field.
# Number of compatible products.
#
# long#
sub get_compatible_count {
   my ($self, %args) = @_;
   return $self->{'compatible_count'}; 	
}

## @method set_compatible_count ()
# Sets the given value for 'compatible_count' property.
# 
# @param compatible_count  - New value for the field.
# Number of compatible products.
#
sub set_compatible_count {
   my ($self, %args) = @_;
   $self->{'compatible_count'} = $args{'compatible_count'}; 
   return;	
}

## @method get_incompatible_count ()
# Gets the value of 'incompatible_count' property.
#
# @retval incompatible_count - The current value of the field.
# Number of incompatible products.
#
# long#
sub get_incompatible_count {
   my ($self, %args) = @_;
   return $self->{'incompatible_count'}; 	
}

## @method set_incompatible_count ()
# Sets the given value for 'incompatible_count' property.
# 
# @param incompatible_count  - New value for the field.
# Number of incompatible products.
#
sub set_incompatible_count {
   my ($self, %args) = @_;
   $self->{'incompatible_count'} = $args{'incompatible_count'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Report
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Report``   *class* 
#     contains the interoperability report between the target product and the other
#     registered products in the vCenter Server instance.

package Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Report;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Report structure
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
   $self->{target_product} = $args{'target_product'};
   $self->{products} = $args{'products'};
   $self->{issues} = $args{'issues'};
   $self->{summary} = $args{'summary'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Report');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.interop_report.report');
   $self->set_binding_field('key' => 'date_created', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'target_product', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Discovery', 'type_name' => 'Product'));
   $self->set_binding_field('key' => 'products', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Discovery', 'type_name' => 'InteropReport::ReportRow')));
   $self->set_binding_field('key' => 'issues', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Notifications')));
   $self->set_binding_field('key' => 'summary', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Discovery', 'type_name' => 'InteropReport::ReportSummary'));
   bless $self, $class;
   return $self;
}

## @method get_date_created ()
# Gets the value of 'date_created' property.
#
# @retval date_created - The current value of the field.
# Time when the report is created.
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
# Time when the report is created.
#
sub set_date_created {
   my ($self, %args) = @_;
   $self->{'date_created'} = $args{'date_created'}; 
   return;	
}

## @method get_target_product ()
# Gets the value of 'target_product' property.
#
# @retval target_product - The current value of the field.
# A product against the other products are compared to. Only vCenter Server is
#     supported.
#
# Product#
sub get_target_product {
   my ($self, %args) = @_;
   return $self->{'target_product'}; 	
}

## @method set_target_product ()
# Sets the given value for 'target_product' property.
# 
# @param target_product  - New value for the field.
# A product against the other products are compared to. Only vCenter Server is
#     supported.
#
sub set_target_product {
   my ($self, %args) = @_;
   $self->{'target_product'} = $args{'target_product'}; 
   return;	
}

## @method get_products ()
# Gets the value of 'products' property.
#
# @retval products - The current value of the field.
# Interoperability matrix for the supplied target product and the other registered
#     products.
#
# List#
sub get_products {
   my ($self, %args) = @_;
   return $self->{'products'}; 	
}

## @method set_products ()
# Sets the given value for 'products' property.
# 
# @param products  - New value for the field.
# Interoperability matrix for the supplied target product and the other registered
#     products.
#
sub set_products {
   my ($self, %args) = @_;
   $self->{'products'} = $args{'products'}; 
   return;	
}

## @method get_issues ()
# Gets the value of 'issues' property.
#
# @retval issues - The current value of the field.
# Lists of issues encountered during report creation.
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
# Lists of issues encountered during report creation.
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
# A summary of the interoperability matrix.
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
# A summary of the interoperability matrix.
#
sub set_summary {
   my ($self, %args) = @_;
   $self->{'summary'} = $args{'summary'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Result
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Result``   *class* 
#     contains the result of interoperability report creation operation.

package Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Result;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Result structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Result');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.interop_report.result');
   $self->set_binding_field('key' => 'report', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm::Discovery', 'type_name' => 'InteropReport::Report'));
   $self->set_binding_field('key' => 'csv_report', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_report ()
# Gets the value of 'report' property.
#
# @retval report - The current value of the field.
# The interoperability report.
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
# The interoperability report.
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
# The identifier of CSV formatted interopability report. <p>
# 
# null provides location where the CSV report can be downloaded from based on the 
#     ``csvReport`` .</p>
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
# The identifier of CSV formatted interopability report. <p>
# 
# null provides location where the CSV report can be downloaded from based on the 
#     ``csvReport`` .</p>
#
sub set_csv_report {
   my ($self, %args) = @_;
   $self->{'csv_report'} = $args{'csv_report'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Spec
#
#
# Configuration of report generation.

package Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Spec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{target_version} = $args{'target_version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::InteropReport::Spec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.interop_report.spec');
   $self->set_binding_field('key' => 'target_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_target_version ()
# Gets the value of 'target_version' property.
#
# @retval target_version - The current value of the field.
# The vCenter Server version. <p>
# 
# It is used for checking against the other products registered with that instance of
#     vCenter Server.</p>
#
# String#
sub get_target_version {
   my ($self, %args) = @_;
   return $self->{'target_version'}; 	
}

## @method set_target_version ()
# Sets the given value for 'target_version' property.
# 
# @param target_version  - New value for the field.
# The vCenter Server version. <p>
# 
# It is used for checking against the other products registered with that instance of
#     vCenter Server.</p>
#
sub set_target_version {
   my ($self, %args) = @_;
   $self->{'target_version'} = $args{'target_version'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Discovery::InteropReport service
#########################################################################################
