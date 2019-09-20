## @class Com::Vmware::Vcenter::Ovf::OvfParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::OvfParams``   *class*  defines the common  *fields* 
#     for all OVF deployment parameters. OVF parameters serve several purposes: <ul>
#  <li>Describe information about a given OVF package. </li>
# <li>Describe default deployment configuration. </li>
# <li>Describe possible deployment values based on the deployment environment. </li>
# <li>Provide deployment-specific configuration. </li>
# </ul> Each OVF parameters  *class*  specifies a particular configurable aspect of OVF
#     deployment. An aspect has both a query-model and a deploy-model. The query-model is
#     used when the OVF package is queried, and the deploy-model is used when deploying an
#     OVF package. <p>
# 
# Most OVF parameter  *classes*  provide both informational and deployment parameters.
#     However, some are purely informational (for example, download size) and some are
#     purely deployment parameters (for example, the flag to indicate whether registration
#     as a vCenter extension is accepted). </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::OvfParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::OvfParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::OvfParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.ovf_params');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
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


