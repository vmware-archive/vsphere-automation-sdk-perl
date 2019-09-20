## @class Com::Vmware::Content::Type::Ovf::VideoCard
#
#
# Provide video card information in a template VM.

package Com::Vmware::Content::Type::Ovf::VideoCard;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::VideoCard structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{render_type} = $args{'render_type'};
   $self->{video_ram_size} = $args{'video_ram_size'};
   $self->{graphics_memory_size} = $args{'graphics_memory_size'};
   $self->{enable3d} = $args{'enable3d'};
   $self->{num_displays} = $args{'num_displays'};
   $self->{use_auto_detect} = $args{'use_auto_detect'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::VideoCard');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.video_card');
   $self->set_binding_field('key' => 'render_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'video_ram_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'graphics_memory_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'enable3d', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'num_displays', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'use_auto_detect', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_render_type ()
# Gets the value of 'render_type' property.
#
# @retval render_type - The current value of the field.
# Render type
#
# Optional#
sub get_render_type {
   my ($self, %args) = @_;
   return $self->{'render_type'}; 	
}

## @method set_render_type ()
# Sets the given value for 'render_type' property.
# 
# @param render_type  - New value for the field.
# Render type
#
sub set_render_type {
   my ($self, %args) = @_;
   $self->{'render_type'} = $args{'render_type'}; 
   return;	
}

## @method get_video_ram_size ()
# Gets the value of 'video_ram_size' property.
#
# @retval video_ram_size - The current value of the field.
# video RAM size in KB
#
# Optional#
sub get_video_ram_size {
   my ($self, %args) = @_;
   return $self->{'video_ram_size'}; 	
}

## @method set_video_ram_size ()
# Sets the given value for 'video_ram_size' property.
# 
# @param video_ram_size  - New value for the field.
# video RAM size in KB
#
sub set_video_ram_size {
   my ($self, %args) = @_;
   $self->{'video_ram_size'} = $args{'video_ram_size'}; 
   return;	
}

## @method get_graphics_memory_size ()
# Gets the value of 'graphics_memory_size' property.
#
# @retval graphics_memory_size - The current value of the field.
# graphics memory size in KB
#
# Optional#
sub get_graphics_memory_size {
   my ($self, %args) = @_;
   return $self->{'graphics_memory_size'}; 	
}

## @method set_graphics_memory_size ()
# Sets the given value for 'graphics_memory_size' property.
# 
# @param graphics_memory_size  - New value for the field.
# graphics memory size in KB
#
sub set_graphics_memory_size {
   my ($self, %args) = @_;
   $self->{'graphics_memory_size'} = $args{'graphics_memory_size'}; 
   return;	
}

## @method get_enable3d ()
# Gets the value of 'enable3d' property.
#
# @retval enable3d - The current value of the field.
# True if 3D is enabled
#
# Optional#
sub get_enable3d {
   my ($self, %args) = @_;
   return $self->{'enable3d'}; 	
}

## @method set_enable3d ()
# Sets the given value for 'enable3d' property.
# 
# @param enable3d  - New value for the field.
# True if 3D is enabled
#
sub set_enable3d {
   my ($self, %args) = @_;
   $self->{'enable3d'} = $args{'enable3d'}; 
   return;	
}

## @method get_num_displays ()
# Gets the value of 'num_displays' property.
#
# @retval num_displays - The current value of the field.
# number of displayes
#
# Optional#
sub get_num_displays {
   my ($self, %args) = @_;
   return $self->{'num_displays'}; 	
}

## @method set_num_displays ()
# Sets the given value for 'num_displays' property.
# 
# @param num_displays  - New value for the field.
# number of displayes
#
sub set_num_displays {
   my ($self, %args) = @_;
   $self->{'num_displays'} = $args{'num_displays'}; 
   return;	
}

## @method get_use_auto_detect ()
# Gets the value of 'use_auto_detect' property.
#
# @retval use_auto_detect - The current value of the field.
# True if use auto detect
#
# Optional#
sub get_use_auto_detect {
   my ($self, %args) = @_;
   return $self->{'use_auto_detect'}; 	
}

## @method set_use_auto_detect ()
# Sets the given value for 'use_auto_detect' property.
# 
# @param use_auto_detect  - New value for the field.
# True if use auto detect
#
sub set_use_auto_detect {
   my ($self, %args) = @_;
   $self->{'use_auto_detect'} = $args{'use_auto_detect'}; 
   return;	
}


1;


