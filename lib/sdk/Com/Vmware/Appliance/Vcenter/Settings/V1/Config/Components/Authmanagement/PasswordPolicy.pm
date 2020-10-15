## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::PasswordPolicy
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::PasswordPolicy``
#       *class*  This structure represents the configuration in Password Policy.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::PasswordPolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::PasswordPolicy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{special_chars} = $args{'special_chars'};
   $self->{alpha_chars} = $args{'alpha_chars'};
   $self->{uppercase_chars} = $args{'uppercase_chars'};
   $self->{lowercase_chars} = $args{'lowercase_chars'};
   $self->{numeric_chars} = $args{'numeric_chars'};
   $self->{adj_identical_chars} = $args{'adj_identical_chars'};
   $self->{password_reuse} = $args{'password_reuse'};
   $self->{max_life} = $args{'max_life'};
   $self->{max_length} = $args{'max_length'};
   $self->{min_length} = $args{'min_length'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::PasswordPolicy');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.authmanagement.password_policy');
   $self->set_binding_field('key' => 'special_chars', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'alpha_chars', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'uppercase_chars', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'lowercase_chars', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'numeric_chars', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'adj_identical_chars', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'password_reuse', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'max_life', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'max_length', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'min_length', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_special_chars ()
# Gets the value of 'special_chars' property.
#
# @retval special_chars - The current value of the field.
# Minimum special characters.
#
# Long#
sub get_special_chars {
   my ($self, %args) = @_;
   return $self->{'special_chars'}; 	
}

## @method set_special_chars ()
# Sets the given value for 'special_chars' property.
# 
# @param special_chars  - New value for the field.
# Minimum special characters.
#
sub set_special_chars {
   my ($self, %args) = @_;
   $self->{'special_chars'} = $args{'special_chars'}; 
   return;	
}

## @method get_alpha_chars ()
# Gets the value of 'alpha_chars' property.
#
# @retval alpha_chars - The current value of the field.
# Minimum alphabetic characters.
#
# Long#
sub get_alpha_chars {
   my ($self, %args) = @_;
   return $self->{'alpha_chars'}; 	
}

## @method set_alpha_chars ()
# Sets the given value for 'alpha_chars' property.
# 
# @param alpha_chars  - New value for the field.
# Minimum alphabetic characters.
#
sub set_alpha_chars {
   my ($self, %args) = @_;
   $self->{'alpha_chars'} = $args{'alpha_chars'}; 
   return;	
}

## @method get_uppercase_chars ()
# Gets the value of 'uppercase_chars' property.
#
# @retval uppercase_chars - The current value of the field.
# Minimum uppercase characters.
#
# Long#
sub get_uppercase_chars {
   my ($self, %args) = @_;
   return $self->{'uppercase_chars'}; 	
}

## @method set_uppercase_chars ()
# Sets the given value for 'uppercase_chars' property.
# 
# @param uppercase_chars  - New value for the field.
# Minimum uppercase characters.
#
sub set_uppercase_chars {
   my ($self, %args) = @_;
   $self->{'uppercase_chars'} = $args{'uppercase_chars'}; 
   return;	
}

## @method get_lowercase_chars ()
# Gets the value of 'lowercase_chars' property.
#
# @retval lowercase_chars - The current value of the field.
# Minimum lowercase characters.
#
# Long#
sub get_lowercase_chars {
   my ($self, %args) = @_;
   return $self->{'lowercase_chars'}; 	
}

## @method set_lowercase_chars ()
# Sets the given value for 'lowercase_chars' property.
# 
# @param lowercase_chars  - New value for the field.
# Minimum lowercase characters.
#
sub set_lowercase_chars {
   my ($self, %args) = @_;
   $self->{'lowercase_chars'} = $args{'lowercase_chars'}; 
   return;	
}

## @method get_numeric_chars ()
# Gets the value of 'numeric_chars' property.
#
# @retval numeric_chars - The current value of the field.
# Minimum numeric characters.
#
# Long#
sub get_numeric_chars {
   my ($self, %args) = @_;
   return $self->{'numeric_chars'}; 	
}

## @method set_numeric_chars ()
# Sets the given value for 'numeric_chars' property.
# 
# @param numeric_chars  - New value for the field.
# Minimum numeric characters.
#
sub set_numeric_chars {
   my ($self, %args) = @_;
   $self->{'numeric_chars'} = $args{'numeric_chars'}; 
   return;	
}

## @method get_adj_identical_chars ()
# Gets the value of 'adj_identical_chars' property.
#
# @retval adj_identical_chars - The current value of the field.
# Maximum adjacent identical characters.
#
# Long#
sub get_adj_identical_chars {
   my ($self, %args) = @_;
   return $self->{'adj_identical_chars'}; 	
}

## @method set_adj_identical_chars ()
# Sets the given value for 'adj_identical_chars' property.
# 
# @param adj_identical_chars  - New value for the field.
# Maximum adjacent identical characters.
#
sub set_adj_identical_chars {
   my ($self, %args) = @_;
   $self->{'adj_identical_chars'} = $args{'adj_identical_chars'}; 
   return;	
}

## @method get_password_reuse ()
# Gets the value of 'password_reuse' property.
#
# @retval password_reuse - The current value of the field.
# Previous password reuse restriction.
#
# Long#
sub get_password_reuse {
   my ($self, %args) = @_;
   return $self->{'password_reuse'}; 	
}

## @method set_password_reuse ()
# Sets the given value for 'password_reuse' property.
# 
# @param password_reuse  - New value for the field.
# Previous password reuse restriction.
#
sub set_password_reuse {
   my ($self, %args) = @_;
   $self->{'password_reuse'} = $args{'password_reuse'}; 
   return;	
}

## @method get_max_life ()
# Gets the value of 'max_life' property.
#
# @retval max_life - The current value of the field.
# Maximum lifetime.
#
# Long#
sub get_max_life {
   my ($self, %args) = @_;
   return $self->{'max_life'}; 	
}

## @method set_max_life ()
# Sets the given value for 'max_life' property.
# 
# @param max_life  - New value for the field.
# Maximum lifetime.
#
sub set_max_life {
   my ($self, %args) = @_;
   $self->{'max_life'} = $args{'max_life'}; 
   return;	
}

## @method get_max_length ()
# Gets the value of 'max_length' property.
#
# @retval max_length - The current value of the field.
# Maximum length.
#
# Long#
sub get_max_length {
   my ($self, %args) = @_;
   return $self->{'max_length'}; 	
}

## @method set_max_length ()
# Sets the given value for 'max_length' property.
# 
# @param max_length  - New value for the field.
# Maximum length.
#
sub set_max_length {
   my ($self, %args) = @_;
   $self->{'max_length'} = $args{'max_length'}; 
   return;	
}

## @method get_min_length ()
# Gets the value of 'min_length' property.
#
# @retval min_length - The current value of the field.
# Minimum length.
#
# Long#
sub get_min_length {
   my ($self, %args) = @_;
   return $self->{'min_length'}; 	
}

## @method set_min_length ()
# Sets the given value for 'min_length' property.
# 
# @param min_length  - New value for the field.
# Minimum length.
#
sub set_min_length {
   my ($self, %args) = @_;
   $self->{'min_length'} = $args{'min_length'}; 
   return;	
}


1;


