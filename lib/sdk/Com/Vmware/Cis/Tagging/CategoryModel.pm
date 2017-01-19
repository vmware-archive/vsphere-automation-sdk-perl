## @class Com::Vmware::Cis::Tagging::CategoryModel
#
#
# The  ``Com::Vmware::Cis::Tagging::CategoryModel``   *class*  defines a category that
#     is used to group one or more tags.

package Com::Vmware::Cis::Tagging::CategoryModel;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::CategoryModel structure
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
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{cardinality} = $args{'cardinality'};
   $self->{associable_types} = $args{'associable_types'};
   $self->{used_by} = $args{'used_by'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::CategoryModel');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.category_model');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cardinality', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'CategoryModel::Cardinality'));
   $self->set_binding_field('key' => 'associable_types', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'used_by', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The unique identifier of the category.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The unique identifier of the category.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The display name of the category.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The display name of the category.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# The description of the category.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# The description of the category.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_cardinality ()
# Gets the value of 'cardinality' property.
#
# @retval cardinality - The current value of the field.
# The associated cardinality (SINGLE, MULTIPLE) of the category.
#
# Cardinality#
sub get_cardinality {
   my ($self, %args) = @_;
   return $self->{'cardinality'}; 	
}

## @method set_cardinality ()
# Sets the given value for 'cardinality' property.
# 
# @param cardinality  - New value for the field.
# The associated cardinality (SINGLE, MULTIPLE) of the category.
#
sub set_cardinality {
   my ($self, %args) = @_;
   $self->{'cardinality'} = $args{'cardinality'}; 
   return;	
}

## @method get_associable_types ()
# Gets the value of 'associable_types' property.
#
# @retval associable_types - The current value of the field.
# The types of objects that the tags in this category can be attached to. If the  *set* 
#     is empty, then tags can be attached to all types of objects. This field works only for
#     objects that reside in Inventory Service (IS). For non IS objects, this check is not
#     performed today and hence a tag can be attached to any non IS object.
#
# Set#
sub get_associable_types {
   my ($self, %args) = @_;
   return $self->{'associable_types'}; 	
}

## @method set_associable_types ()
# Sets the given value for 'associable_types' property.
# 
# @param associable_types  - New value for the field.
# The types of objects that the tags in this category can be attached to. If the  *set* 
#     is empty, then tags can be attached to all types of objects. This field works only for
#     objects that reside in Inventory Service (IS). For non IS objects, this check is not
#     performed today and hence a tag can be attached to any non IS object.
#
sub set_associable_types {
   my ($self, %args) = @_;
   $self->{'associable_types'} = $args{'associable_types'}; 
   return;	
}

## @method get_used_by ()
# Gets the value of 'used_by' property.
#
# @retval used_by - The current value of the field.
# The  *set*  of users that can use this category. To add users to this, you need to
#     have the edit privilege on the category. Similarly, to unsubscribe from this category,
#     you need the edit privilege on the category. You should not modify other users
#     subscription from this  *set* .
#
# Set#
sub get_used_by {
   my ($self, %args) = @_;
   return $self->{'used_by'}; 	
}

## @method set_used_by ()
# Sets the given value for 'used_by' property.
# 
# @param used_by  - New value for the field.
# The  *set*  of users that can use this category. To add users to this, you need to
#     have the edit privilege on the category. Similarly, to unsubscribe from this category,
#     you need the edit privilege on the category. You should not modify other users
#     subscription from this  *set* .
#
sub set_used_by {
   my ($self, %args) = @_;
   $self->{'used_by'} = $args{'used_by'}; 
   return;	
}


1;


## @class Com::Vmware::Cis::Tagging::CategoryModel::Cardinality
#
# The  ``Com::Vmware::Cis::Tagging::CategoryModel::Cardinality``   *enumerated type* 
#     defines the number of tags in a category that can be assigned to an object.
#
#
#
# Constant Com::Vmware::Cis::Tagging::CategoryModel::Cardinality::SINGLE #
#An object can only be assigned one of the tags in this category. For example, if a
# category is &quot;Operating System&quot;, then different tags of this category would be
# &quot;Windows&quot;, &quot;Linux&quot;, and so on. In this case a VM object can be
# assigned only one of these tags and hence the cardinality of the associated category here
# is single.
#
# Constant Com::Vmware::Cis::Tagging::CategoryModel::Cardinality::MULTIPLE #
#An object can be assigned several of the tags in this category. For example, if a category
# is &quot;Server&quot;, then different tags of this category would be
# &quot;AppServer&quot;, &quot;DatabaseServer&quot; and so on. In this case a VM object can
# be assigned more than one of the above tags and hence the cardinality of the associated
# category here is multiple.

package Com::Vmware::Cis::Tagging::CategoryModel::Cardinality;

use constant {
    SINGLE =>  'SINGLE',
    MULTIPLE =>  'MULTIPLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::CategoryModel::Cardinality enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.cis.tagging.category_model.cardinality',
                           'binding_class' => 'Com::Vmware::Cis::Tagging::CategoryModel::Cardinality');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


