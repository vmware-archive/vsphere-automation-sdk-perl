## @class Com::Vmware::Content::Library::OptimizationInfo
#
#
# The  ``Com::Vmware::Content::Library::OptimizationInfo``   *class*  defines different
#     optimizations and optimization parameters applied to particular library.

package Com::Vmware::Content::Library::OptimizationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::OptimizationInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{optimize_remote_publishing} = $args{'optimize_remote_publishing'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::OptimizationInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.optimization_info');
   $self->set_binding_field('key' => 'optimize_remote_publishing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_optimize_remote_publishing ()
# Gets the value of 'optimize_remote_publishing' property.
#
# @retval optimize_remote_publishing - The current value of the field.
# If set to  ``true``  then library would be optimized for remote publishing. <p>
# 
# Turn it on if remote publishing is dominant use case for this library. Remote
#     publishing means here that publisher and subscribers are not the part of the same 
#     ``Vcenter``  SSO domain. </p>
# 
# <p>
# 
# Any optimizations could be done as result of turning on this optimization during
#     library creation. For example, library content could be stored in different format but
#     optimizations are not limited to just storage format. </p>
# 
# <p>
# 
# Note, that value of this toggle could be set only during creation of the library and
#     you would need to migrate your library in case you need to change this value (optimize
#     the library for different use case).</p>
#
# optional#
sub get_optimize_remote_publishing {
   my ($self, %args) = @_;
   return $self->{'optimize_remote_publishing'}; 	
}

## @method set_optimize_remote_publishing ()
# Sets the given value for 'optimize_remote_publishing' property.
# 
# @param optimize_remote_publishing  - New value for the field.
# If set to  ``true``  then library would be optimized for remote publishing. <p>
# 
# Turn it on if remote publishing is dominant use case for this library. Remote
#     publishing means here that publisher and subscribers are not the part of the same 
#     ``Vcenter``  SSO domain. </p>
# 
# <p>
# 
# Any optimizations could be done as result of turning on this optimization during
#     library creation. For example, library content could be stored in different format but
#     optimizations are not limited to just storage format. </p>
# 
# <p>
# 
# Note, that value of this toggle could be set only during creation of the library and
#     you would need to migrate your library in case you need to change this value (optimize
#     the library for different use case).</p>
#
sub set_optimize_remote_publishing {
   my ($self, %args) = @_;
   $self->{'optimize_remote_publishing'} = $args{'optimize_remote_publishing'}; 
   return;	
}


1;


