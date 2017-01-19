## @class Com::Vmware::Vcenter::Ovf::ParseIssue
#
#
# The  ``Com::Vmware::Vcenter::Ovf::ParseIssue``   *class*  contains the information
#     about the issue found when parsing an OVF package during deployment or exporting an
#     OVF package including: <ul>
# <li>Parsing and validation error on OVF descriptor (which is an XML document),
#     manifest and certificate files. </li>
# <li>OVF descriptor generating and device error. </li>
# <li>Unexpected server error. </li>
# </ul>

package Com::Vmware::Vcenter::Ovf::ParseIssue;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ParseIssue structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{category} = $args{'category'};
   $self->{file} = $args{'file'};
   $self->{line_number} = $args{'line_number'};
   $self->{column_number} = $args{'column_number'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::ParseIssue');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.parse_issue');
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'ParseIssue::Category'));
   $self->set_binding_field('key' => 'file', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'line_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'column_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# The category of the parse issue.
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
# The category of the parse issue.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_file ()
# Gets the value of 'file' property.
#
# @retval file - The current value of the field.
# The name of the file in which the parse issue was found.
#
# String#
sub get_file {
   my ($self, %args) = @_;
   return $self->{'file'}; 	
}

## @method set_file ()
# Sets the given value for 'file' property.
# 
# @param file  - New value for the field.
# The name of the file in which the parse issue was found.
#
sub set_file {
   my ($self, %args) = @_;
   $self->{'file'} = $args{'file'}; 
   return;	
}

## @method get_line_number ()
# Gets the value of 'line_number' property.
#
# @retval line_number - The current value of the field.
# The line number of the line in the file (see 
#     :attr:`Com::Vmware::Vcenter::Ovf::ParseIssue.file` ) where the parse issue was found
#     (or -1 if not applicable).
#
# long#
sub get_line_number {
   my ($self, %args) = @_;
   return $self->{'line_number'}; 	
}

## @method set_line_number ()
# Sets the given value for 'line_number' property.
# 
# @param line_number  - New value for the field.
# The line number of the line in the file (see 
#     :attr:`Com::Vmware::Vcenter::Ovf::ParseIssue.file` ) where the parse issue was found
#     (or -1 if not applicable).
#
sub set_line_number {
   my ($self, %args) = @_;
   $self->{'line_number'} = $args{'line_number'}; 
   return;	
}

## @method get_column_number ()
# Gets the value of 'column_number' property.
#
# @retval column_number - The current value of the field.
# The position in the line (see 
#     :attr:`Com::Vmware::Vcenter::Ovf::ParseIssue.line_number` ) (or -1 if not applicable).
#
# long#
sub get_column_number {
   my ($self, %args) = @_;
   return $self->{'column_number'}; 	
}

## @method set_column_number ()
# Sets the given value for 'column_number' property.
# 
# @param column_number  - New value for the field.
# The position in the line (see 
#     :attr:`Com::Vmware::Vcenter::Ovf::ParseIssue.line_number` ) (or -1 if not applicable).
#
sub set_column_number {
   my ($self, %args) = @_;
   $self->{'column_number'} = $args{'column_number'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# A localizable message describing the parse issue.
#
# LocalizableMessage#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# A localizable message describing the parse issue.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::ParseIssue::Category
#
# The  ``Com::Vmware::Vcenter::Ovf::ParseIssue::Category``   *enumerated type*  defines
#     the categories of issues that can be found when parsing files inside an OVF package
#     (see  class Com::Vmware::Vcenter::Ovf::ParseIssue ) including OVF descriptor (which is
#     an XML document), manifest and certificate files, or exporting an OVF package.
#
#
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::VALUE_ILLEGAL #
#Illegal value error. For example, the value is malformed, not a number, or outside of the
# given range, and so on.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::ATTRIBUTE_REQUIRED #
#Required attribute error. It indicates that a required attribute is missing from an
# element in the OVF descriptor.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::ATTRIBUTE_ILLEGAL #
#Illegal attribute error. It indicates that an illegal attribute is set for an element in
# the OVF descriptor. For example, empty disks do not use format, parentRef, and
# populatedSize attributes, if these attributes are present in an empty disk element then
# will get this pasrse issue.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::ELEMENT_REQUIRED #
#Required element error. It indicates that a required element is missing from the OVF
# descriptor.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::ELEMENT_ILLEGAL #
#Illegal element error. It indicates that an element is present in a location which is not
# allowed, or found multiple elements but only one is allowed at the location in the OVF
# descriptor.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::ELEMENT_UNKNOWN #
#Unknown element error. It indicates that an element is unsupported when parsing an OVF
# descriptor.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::SECTION_UNKNOWN #
#Section unknown error. It indicates that a section is unsupported when parsing an OVF
# descriptor.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::SECTION_RESTRICTION #
#Section restriction error. It indicates that a section appears in place in the OVF
# descriptor where it is not allowed, a section appears fewer times than is required, or a
# section appears more times than is allowed.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::PARSE_ERROR #
#OVF package parsing error, including: <ul>
#  <li>OVF descriptor parsing errors, for example, syntax errors or schema errors. </li>
# <li>Manifest file parsing and verification errors. </li>
# <li>Certificate file parsing and verification errors. </li>
# </ul>
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::GENERATE_ERROR #
#OVF descriptor (which is an XML document) generating error, for example, well-formedness
# errors as well as unexpected processing conditions.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::VALIDATION_ERROR #
#An issue with the manifest and signing.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::EXPORT_ERROR #
#Issue during OVF export, for example, malformed deviceId, controller not found, or file
# backing for a device not found.
#
# Constant Com::Vmware::Vcenter::Ovf::ParseIssue::Category::INTERNAL_ERROR #
#Server encountered an unexpected error which prevented it from fulfilling the request.

package Com::Vmware::Vcenter::Ovf::ParseIssue::Category;

use constant {
    VALUE_ILLEGAL =>  'VALUE_ILLEGAL',
    ATTRIBUTE_REQUIRED =>  'ATTRIBUTE_REQUIRED',
    ATTRIBUTE_ILLEGAL =>  'ATTRIBUTE_ILLEGAL',
    ELEMENT_REQUIRED =>  'ELEMENT_REQUIRED',
    ELEMENT_ILLEGAL =>  'ELEMENT_ILLEGAL',
    ELEMENT_UNKNOWN =>  'ELEMENT_UNKNOWN',
    SECTION_UNKNOWN =>  'SECTION_UNKNOWN',
    SECTION_RESTRICTION =>  'SECTION_RESTRICTION',
    PARSE_ERROR =>  'PARSE_ERROR',
    GENERATE_ERROR =>  'GENERATE_ERROR',
    VALIDATION_ERROR =>  'VALIDATION_ERROR',
    EXPORT_ERROR =>  'EXPORT_ERROR',
    INTERNAL_ERROR =>  'INTERNAL_ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ParseIssue::Category enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.ovf.parse_issue.category',
                           'binding_class' => 'Com::Vmware::Vcenter::Ovf::ParseIssue::Category');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


