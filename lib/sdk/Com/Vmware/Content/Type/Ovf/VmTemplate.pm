## @class Com::Vmware::Content::Type::Ovf::VmTemplate
#
#
# Provide template VM information in an OVF template (see OvfTemplate#type). The
#     template VM provide the information about the operation system, CPU, memory, disks and
#     NICs.

package Com::Vmware::Content::Type::Ovf::VmTemplate;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::VmTemplate structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_name} = $args{'vm_name'};
   $self->{os_type} = $args{'os_type'};
   $self->{os_description} = $args{'os_description'};
   $self->{cpu} = $args{'cpu'};
   $self->{memory} = $args{'memory'};
   $self->{disks} = $args{'disks'};
   $self->{nics} = $args{'nics'};
   $self->{video_cards} = $args{'video_cards'};
   $self->{drives} = $args{'drives'};
   $self->{floppies} = $args{'floppies'};
   $self->{disk_controllers} = $args{'disk_controllers'};
   $self->{usb_controllers} = $args{'usb_controllers'};
   $self->{storage_policies} = $args{'storage_policies'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::VmTemplate');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.vm_template');
   $self->set_binding_field('key' => 'vm_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'os_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'os_description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cpu', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'Cpu')));
   $self->set_binding_field('key' => 'memory', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'Memory')));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'Disk'))));
   $self->set_binding_field('key' => 'nics', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'Nic'))));
   $self->set_binding_field('key' => 'video_cards', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'VideoCard'))));
   $self->set_binding_field('key' => 'drives', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'Drive'))));
   $self->set_binding_field('key' => 'floppies', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'Floppy'))));
   $self->set_binding_field('key' => 'disk_controllers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'DiskController'))));
   $self->set_binding_field('key' => 'usb_controllers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'USBController'))));
   $self->set_binding_field('key' => 'storage_policies', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf::Policy', 'type_name' => 'StoragePolicy'))));
   bless $self, $class;
   return $self;
}

## @method get_vm_name ()
# Gets the value of 'vm_name' property.
#
# @retval vm_name - The current value of the field.
# Name of the VM
#
# String#
sub get_vm_name {
   my ($self, %args) = @_;
   return $self->{'vm_name'}; 	
}

## @method set_vm_name ()
# Sets the given value for 'vm_name' property.
# 
# @param vm_name  - New value for the field.
# Name of the VM
#
sub set_vm_name {
   my ($self, %args) = @_;
   $self->{'vm_name'} = $args{'vm_name'}; 
   return;	
}

## @method get_os_type ()
# Gets the value of 'os_type' property.
#
# @retval os_type - The current value of the field.
# OS type of the VM
#
# Optional#
sub get_os_type {
   my ($self, %args) = @_;
   return $self->{'os_type'}; 	
}

## @method set_os_type ()
# Sets the given value for 'os_type' property.
# 
# @param os_type  - New value for the field.
# OS type of the VM
#
sub set_os_type {
   my ($self, %args) = @_;
   $self->{'os_type'} = $args{'os_type'}; 
   return;	
}

## @method get_os_description ()
# Gets the value of 'os_description' property.
#
# @retval os_description - The current value of the field.
# OS description
#
# Optional#
sub get_os_description {
   my ($self, %args) = @_;
   return $self->{'os_description'}; 	
}

## @method set_os_description ()
# Sets the given value for 'os_description' property.
# 
# @param os_description  - New value for the field.
# OS description
#
sub set_os_description {
   my ($self, %args) = @_;
   $self->{'os_description'} = $args{'os_description'}; 
   return;	
}

## @method get_cpu ()
# Gets the value of 'cpu' property.
#
# @retval cpu - The current value of the field.
# CPU information of the VM
#
# Optional#
sub get_cpu {
   my ($self, %args) = @_;
   return $self->{'cpu'}; 	
}

## @method set_cpu ()
# Sets the given value for 'cpu' property.
# 
# @param cpu  - New value for the field.
# CPU information of the VM
#
sub set_cpu {
   my ($self, %args) = @_;
   $self->{'cpu'} = $args{'cpu'}; 
   return;	
}

## @method get_memory ()
# Gets the value of 'memory' property.
#
# @retval memory - The current value of the field.
# memory information of the VM
#
# Optional#
sub get_memory {
   my ($self, %args) = @_;
   return $self->{'memory'}; 	
}

## @method set_memory ()
# Sets the given value for 'memory' property.
# 
# @param memory  - New value for the field.
# memory information of the VM
#
sub set_memory {
   my ($self, %args) = @_;
   $self->{'memory'} = $args{'memory'}; 
   return;	
}

## @method get_disks ()
# Gets the value of 'disks' property.
#
# @retval disks - The current value of the field.
# All hard disks on the VM
#
# Optional#
sub get_disks {
   my ($self, %args) = @_;
   return $self->{'disks'}; 	
}

## @method set_disks ()
# Sets the given value for 'disks' property.
# 
# @param disks  - New value for the field.
# All hard disks on the VM
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}

## @method get_nics ()
# Gets the value of 'nics' property.
#
# @retval nics - The current value of the field.
# All NICs on the VM
#
# Optional#
sub get_nics {
   my ($self, %args) = @_;
   return $self->{'nics'}; 	
}

## @method set_nics ()
# Sets the given value for 'nics' property.
# 
# @param nics  - New value for the field.
# All NICs on the VM
#
sub set_nics {
   my ($self, %args) = @_;
   $self->{'nics'} = $args{'nics'}; 
   return;	
}

## @method get_video_cards ()
# Gets the value of 'video_cards' property.
#
# @retval video_cards - The current value of the field.
# Video cards of the VM
#
# Optional#
sub get_video_cards {
   my ($self, %args) = @_;
   return $self->{'video_cards'}; 	
}

## @method set_video_cards ()
# Sets the given value for 'video_cards' property.
# 
# @param video_cards  - New value for the field.
# Video cards of the VM
#
sub set_video_cards {
   my ($self, %args) = @_;
   $self->{'video_cards'} = $args{'video_cards'}; 
   return;	
}

## @method get_drives ()
# Gets the value of 'drives' property.
#
# @retval drives - The current value of the field.
# CD / DVD drives of the VM
#
# Optional#
sub get_drives {
   my ($self, %args) = @_;
   return $self->{'drives'}; 	
}

## @method set_drives ()
# Sets the given value for 'drives' property.
# 
# @param drives  - New value for the field.
# CD / DVD drives of the VM
#
sub set_drives {
   my ($self, %args) = @_;
   $self->{'drives'} = $args{'drives'}; 
   return;	
}

## @method get_floppies ()
# Gets the value of 'floppies' property.
#
# @retval floppies - The current value of the field.
# floppy drives of the VM
#
# Optional#
sub get_floppies {
   my ($self, %args) = @_;
   return $self->{'floppies'}; 	
}

## @method set_floppies ()
# Sets the given value for 'floppies' property.
# 
# @param floppies  - New value for the field.
# floppy drives of the VM
#
sub set_floppies {
   my ($self, %args) = @_;
   $self->{'floppies'} = $args{'floppies'}; 
   return;	
}

## @method get_disk_controllers ()
# Gets the value of 'disk_controllers' property.
#
# @retval disk_controllers - The current value of the field.
# Disk Controllers
#
# Optional#
sub get_disk_controllers {
   my ($self, %args) = @_;
   return $self->{'disk_controllers'}; 	
}

## @method set_disk_controllers ()
# Sets the given value for 'disk_controllers' property.
# 
# @param disk_controllers  - New value for the field.
# Disk Controllers
#
sub set_disk_controllers {
   my ($self, %args) = @_;
   $self->{'disk_controllers'} = $args{'disk_controllers'}; 
   return;	
}

## @method get_usb_controllers ()
# Gets the value of 'usb_controllers' property.
#
# @retval usb_controllers - The current value of the field.
# USB Controllers
#
# Optional#
sub get_usb_controllers {
   my ($self, %args) = @_;
   return $self->{'usb_controllers'}; 	
}

## @method set_usb_controllers ()
# Sets the given value for 'usb_controllers' property.
# 
# @param usb_controllers  - New value for the field.
# USB Controllers
#
sub set_usb_controllers {
   my ($self, %args) = @_;
   $self->{'usb_controllers'} = $args{'usb_controllers'}; 
   return;	
}

## @method get_storage_policies ()
# Gets the value of 'storage_policies' property.
#
# @retval storage_policies - The current value of the field.
# Storage policies of the VM.
#
# Optional#
sub get_storage_policies {
   my ($self, %args) = @_;
   return $self->{'storage_policies'}; 	
}

## @method set_storage_policies ()
# Sets the given value for 'storage_policies' property.
# 
# @param storage_policies  - New value for the field.
# Storage policies of the VM.
#
sub set_storage_policies {
   my ($self, %args) = @_;
   $self->{'storage_policies'} = $args{'storage_policies'}; 
   return;	
}


1;


