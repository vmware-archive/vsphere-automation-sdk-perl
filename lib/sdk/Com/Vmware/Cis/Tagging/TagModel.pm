## @class Com::Vmware::Cis::Tagging::TagModel
#
#
# The  ``Com::Vmware::Cis::Tagging::TagModel``   *class*  defines a tag that can be
#     attached to vSphere objects.

package Com::Vmware::Cis::Tagging::TagModel;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::TagModel structure
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
   $self->{category_id} = $args{'category_id'};
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{used_by} = $args{'used_by'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::TagModel');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.tag_model');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'category_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'used_by', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The unique identifier of the tag.
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
# The unique identifier of the tag.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_category_id ()
# Gets the value of 'category_id' property.
#
# @retval category_id - The current value of the field.
# The identifier of the parent category in which this tag will be created.
#
# ID#
sub get_category_id {
   my ($self, %args) = @_;
   return $self->{'category_id'}; 	
}

## @method set_category_id ()
# Sets the given value for 'category_id' property.
# 
# @param category_id  - New value for the field.
# The identifier of the parent category in which this tag will be created.
#
sub set_category_id {
   my ($self, %args) = @_;
   $self->{'category_id'} = $args{'category_id'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The display name of the tag.
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
# The display name of the tag.
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
# The description of the tag.
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
# The description of the tag.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_used_by ()
# Gets the value of 'used_by' property.
#
# @retval used_by - The current value of the field.
# The  *set*  of users that can use this tag. To add users to this, you need to have the
#     edit privilege on the tag. Similarly, to unsubscribe from this tag, you need the edit
#     privilege on the tag. You should not modify other users subscription from this  *set*
#     .
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
# The  *set*  of users that can use this tag. To add users to this, you need to have the
#     edit privilege on the tag. Similarly, to unsubscribe from this tag, you need the edit
#     privilege on the tag. You should not modify other users subscription from this  *set*
#     .
#
sub set_used_by {
   my ($self, %args) = @_;
   $self->{'used_by'} = $args{'used_by'}; 
   return;	
}


1;


