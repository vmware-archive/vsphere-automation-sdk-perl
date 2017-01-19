## @class Com::Vmware::Vcenter::Ovf::UnknownSectionParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::UnknownSectionParams``   *class*  contains a  *list*
#      of unknown, non-required sections. <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::UnknownSectionParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::UnknownSectionParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{unknown_sections} = $args{'unknown_sections'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::UnknownSectionParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.unknown_section_params');
   $self->set_binding_field('key' => 'unknown_sections', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'UnknownSection'))));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_unknown_sections ()
# Gets the value of 'unknown_sections' property.
#
# @retval unknown_sections - The current value of the field.
#  *List*  of unknown, non-required sections.
#
# optional#
sub get_unknown_sections {
   my ($self, %args) = @_;
   return $self->{'unknown_sections'}; 	
}

## @method set_unknown_sections ()
# Sets the given value for 'unknown_sections' property.
# 
# @param unknown_sections  - New value for the field.
#  *List*  of unknown, non-required sections.
#
sub set_unknown_sections {
   my ($self, %args) = @_;
   $self->{'unknown_sections'} = $args{'unknown_sections'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


