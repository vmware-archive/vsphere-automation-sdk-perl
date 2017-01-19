## @class Com::Vmware::Vcenter::Ovf::Property
#
#
# The  ``Com::Vmware::Vcenter::Ovf::Property``   *class*  contains the information about
#     a property in an OVF package. <p>
# 
# A property is uniquely identified by its [classid.]id[.instanceid] fully-qualified
#     name (see  :attr:`Com::Vmware::Vcenter::Ovf::Property.class_id` , 
#     :attr:`Com::Vmware::Vcenter::Ovf::Property.id` , and 
#     :attr:`Com::Vmware::Vcenter::Ovf::Property.instance_id` ). If multiple properties in
#     an OVF package have the same fully-qualified name, then the property is excluded and
#     cannot be set. We do warn about this during import. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::Property;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::Property structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{class_id} = $args{'class_id'};
   $self->{id} = $args{'id'};
   $self->{instance_id} = $args{'instance_id'};
   $self->{category} = $args{'category'};
   $self->{ui_optional} = $args{'ui_optional'};
   $self->{label} = $args{'label'};
   $self->{description} = $args{'description'};
   $self->{type} = $args{'type'};
   $self->{value} = $args{'value'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::Property');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.property');
   $self->set_binding_field('key' => 'class_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'instance_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ui_optional', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_class_id ()
# Gets the value of 'class_id' property.
#
# @retval class_id - The current value of the field.
# The classId of this OVF property.
#
# optional#
sub get_class_id {
   my ($self, %args) = @_;
   return $self->{'class_id'}; 	
}

## @method set_class_id ()
# Sets the given value for 'class_id' property.
# 
# @param class_id  - New value for the field.
# The classId of this OVF property.
#
sub set_class_id {
   my ($self, %args) = @_;
   $self->{'class_id'} = $args{'class_id'}; 
   return;	
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The identifier of this OVF property.
#
# optional#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The identifier of this OVF property.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_instance_id ()
# Gets the value of 'instance_id' property.
#
# @retval instance_id - The current value of the field.
# The instanceId of this OVF property.
#
# optional#
sub get_instance_id {
   my ($self, %args) = @_;
   return $self->{'instance_id'}; 	
}

## @method set_instance_id ()
# Sets the given value for 'instance_id' property.
# 
# @param instance_id  - New value for the field.
# The instanceId of this OVF property.
#
sub set_instance_id {
   my ($self, %args) = @_;
   $self->{'instance_id'} = $args{'instance_id'}; 
   return;	
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# If this is set to a non-empty string, this property starts a new category.
#
# optional#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# If this is set to a non-empty string, this property starts a new category.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_ui_optional ()
# Gets the value of 'ui_optional' property.
#
# @retval ui_optional - The current value of the field.
# Whether a category is UI optional. This is only used if this property starts a new
#     category (see  :attr:`Com::Vmware::Vcenter::Ovf::Property.category` ). <p>
# 
# The value is stored in an optional attribute vmw:uioptional to the ovf:Category
#     element. The default value is false. If this value is true, the properties within this
#     category are optional. The UI renders this as a group with a check box, and the group
#     is grayed out until the check box is selected. When the check box is selected, the
#     input values are read and used in deployment. If properties within the same category
#     specify conflicting values the default is used. Only implemented in vSphere Web Client
#     5.1 and later as of Nov 2012.</p>
#
# optional#
sub get_ui_optional {
   my ($self, %args) = @_;
   return $self->{'ui_optional'}; 	
}

## @method set_ui_optional ()
# Sets the given value for 'ui_optional' property.
# 
# @param ui_optional  - New value for the field.
# Whether a category is UI optional. This is only used if this property starts a new
#     category (see  :attr:`Com::Vmware::Vcenter::Ovf::Property.category` ). <p>
# 
# The value is stored in an optional attribute vmw:uioptional to the ovf:Category
#     element. The default value is false. If this value is true, the properties within this
#     category are optional. The UI renders this as a group with a check box, and the group
#     is grayed out until the check box is selected. When the check box is selected, the
#     input values are read and used in deployment. If properties within the same category
#     specify conflicting values the default is used. Only implemented in vSphere Web Client
#     5.1 and later as of Nov 2012.</p>
#
sub set_ui_optional {
   my ($self, %args) = @_;
   $self->{'ui_optional'} = $args{'ui_optional'}; 
   return;	
}

## @method get_label ()
# Gets the value of 'label' property.
#
# @retval label - The current value of the field.
# The display name of this OVF property.
#
# optional#
sub get_label {
   my ($self, %args) = @_;
   return $self->{'label'}; 	
}

## @method set_label ()
# Sets the given value for 'label' property.
# 
# @param label  - New value for the field.
# The display name of this OVF property.
#
sub set_label {
   my ($self, %args) = @_;
   $self->{'label'} = $args{'label'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# A description of this OVF property.
#
# optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# A description of this OVF property.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of this OVF property. Refer to the configuration of a virtual
#     appliance/virtual machine for the valid values.
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
# The type of this OVF property. Refer to the configuration of a virtual
#     appliance/virtual machine for the valid values.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_value ()
# Gets the value of 'value' property.
#
# @retval value - The current value of the field.
# The OVF property value. This contains the default value from ovf:defaultValue if
#     ovf:value is not present when read.
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
# The OVF property value. This contains the default value from ovf:defaultValue if
#     ovf:value is not present when read.
#
sub set_value {
   my ($self, %args) = @_;
   $self->{'value'} = $args{'value'}; 
   return;	
}


1;


