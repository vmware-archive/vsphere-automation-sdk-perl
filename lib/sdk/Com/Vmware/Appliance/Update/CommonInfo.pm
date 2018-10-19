## @class Com::Vmware::Appliance::Update::CommonInfo
#
#
# The  ``Com::Vmware::Appliance::Update::CommonInfo``   *class*  defines common update
#     information. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::CommonInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::CommonInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{priority} = $args{'priority'};
   $self->{severity} = $args{'severity'};
   $self->{update_type} = $args{'update_type'};
   $self->{release_date} = $args{'release_date'};
   $self->{reboot_required} = $args{'reboot_required'};
   $self->{size} = $args{'size'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::CommonInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.common_info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'priority', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Priority'));
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Severity'));
   $self->set_binding_field('key' => 'update_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Category'));
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'reboot_required', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the update. The short information what this update is. E.g.
#     &quot;Update2 for vCenter Server Appliance 6.5&quot;. This  *field*  was added in
#     vSphere API 6.7.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the update. The short information what this update is. E.g.
#     &quot;Update2 for vCenter Server Appliance 6.5&quot;. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_priority ()
# Gets the value of 'priority' property.
#
# @retval priority - The current value of the field.
# Update priority. This  *field*  was added in vSphere API 6.7.
#
# Priority#
sub get_priority {
   my ($self, %args) = @_;
   return $self->{'priority'}; 	
}

## @method set_priority ()
# Sets the given value for 'priority' property.
# 
# @param priority  - New value for the field.
# Update priority. This  *field*  was added in vSphere API 6.7.
#
sub set_priority {
   my ($self, %args) = @_;
   $self->{'priority'} = $args{'priority'}; 
   return;	
}

## @method get_severity ()
# Gets the value of 'severity' property.
#
# @retval severity - The current value of the field.
# Update severity. This  *field*  was added in vSphere API 6.7.
#
# Severity#
sub get_severity {
   my ($self, %args) = @_;
   return $self->{'severity'}; 	
}

## @method set_severity ()
# Sets the given value for 'severity' property.
# 
# @param severity  - New value for the field.
# Update severity. This  *field*  was added in vSphere API 6.7.
#
sub set_severity {
   my ($self, %args) = @_;
   $self->{'severity'} = $args{'severity'}; 
   return;	
}

## @method get_update_type ()
# Gets the value of 'update_type' property.
#
# @retval update_type - The current value of the field.
# Update category. This  *field*  was added in vSphere API 6.7.
#
# Category#
sub get_update_type {
   my ($self, %args) = @_;
   return $self->{'update_type'}; 	
}

## @method set_update_type ()
# Sets the given value for 'update_type' property.
# 
# @param update_type  - New value for the field.
# Update category. This  *field*  was added in vSphere API 6.7.
#
sub set_update_type {
   my ($self, %args) = @_;
   $self->{'update_type'} = $args{'update_type'}; 
   return;	
}

## @method get_release_date ()
# Gets the value of 'release_date' property.
#
# @retval release_date - The current value of the field.
# Update release date. This  *field*  was added in vSphere API 6.7.
#
# DateTime#
sub get_release_date {
   my ($self, %args) = @_;
   return $self->{'release_date'}; 	
}

## @method set_release_date ()
# Sets the given value for 'release_date' property.
# 
# @param release_date  - New value for the field.
# Update release date. This  *field*  was added in vSphere API 6.7.
#
sub set_release_date {
   my ($self, %args) = @_;
   $self->{'release_date'} = $args{'release_date'}; 
   return;	
}

## @method get_reboot_required ()
# Gets the value of 'reboot_required' property.
#
# @retval reboot_required - The current value of the field.
# Flag indicating whether reboot is required after update. This  *field*  was added in
#     vSphere API 6.7.
#
# boolean#
sub get_reboot_required {
   my ($self, %args) = @_;
   return $self->{'reboot_required'}; 	
}

## @method set_reboot_required ()
# Sets the given value for 'reboot_required' property.
# 
# @param reboot_required  - New value for the field.
# Flag indicating whether reboot is required after update. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_reboot_required {
   my ($self, %args) = @_;
   $self->{'reboot_required'} = $args{'reboot_required'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# Download Size of update in Megabytes. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# Download Size of update in Megabytes. This  *field*  was added in vSphere API 6.7.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Update::CommonInfo::Priority
#
# The  ``Com::Vmware::Appliance::Update::CommonInfo::Priority``   *enumerated type* 
#     defines the update installation priority recommendations. This  *enumeration*  was
#     added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Priority::HIGH #
#Install ASAP. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Priority::MEDIUM #
#Install at the earliest convenience. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Priority::LOW #
#Install at your discretion. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::CommonInfo::Priority;

use constant {
    HIGH =>  'HIGH',
    MEDIUM =>  'MEDIUM',
    LOW =>  'LOW',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::CommonInfo::Priority enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.update.common_info.priority',
                           'binding_class' => 'Com::Vmware::Appliance::Update::CommonInfo::Priority');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Appliance::Update::CommonInfo::Severity
#
# The  ``Com::Vmware::Appliance::Update::CommonInfo::Severity``   *enumerated type* 
#     defines the severity of the issues fixed in the update. This  *enumeration*  was added
#     in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Severity::CRITICAL #
#Vulnerabilities that can be exploited by an unauthenticated attacker from the Internet or
# those that break the guest/host Operating System isolation. The exploitation results in
# the complete compromise of confidentiality, integrity, and availability of user data
# and/or processing resources without user interaction. Exploitation could be leveraged to
# propagate an Internet worm or execute arbitrary code between Virtual Machines and/or the
# Host Operating System. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Severity::IMPORTANT #
#Vulnerabilities that are not rated critical but whose exploitation results in the complete
# compromise of confidentiality and/or integrity of user data and/or processing resources
# through user assistance or by authenticated attackers. This rating also applies to those
# vulnerabilities which could lead to the complete compromise of availability when
# exploitation is by a remote unauthenticated attacker from the Internet or through a breach
# of virtual machine isolation. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Severity::MODERATE #
#Vulnerabilities where the ability to exploit is mitigated to a significant degree by
# configuration or difficulty of exploitation, but in certain deployment scenarios could
# still lead to the compromise of confidentiality, integrity, or availability of user data
# and/or processing resources. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Severity::LOW #
#All other issues that have a security impact. Vulnerabilities where exploitation is
# believed to be extremely difficult, or where successful exploitation would have minimal
# impact. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::CommonInfo::Severity;

use constant {
    CRITICAL =>  'CRITICAL',
    IMPORTANT =>  'IMPORTANT',
    MODERATE =>  'MODERATE',
    LOW =>  'LOW',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::CommonInfo::Severity enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.update.common_info.severity',
                           'binding_class' => 'Com::Vmware::Appliance::Update::CommonInfo::Severity');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Appliance::Update::CommonInfo::Category
#
# The  ``Com::Vmware::Appliance::Update::CommonInfo::Category``   *enumerated type* 
#     defines update type. This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Category::SECURITY #
#Fixes vulnerabilities, doesn&apos;t change functionality. This  *constant*  was added in
# vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Category::FIX #
#Fixes bugs/vulnerabilities, doesn&apos;t change functionality. This  *constant*  was added
# in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Category::UPDATE #
#Changes product functionality. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::CommonInfo::Category::UPGRADE #
#Introduces new features, significantly changes product functionality. This  *constant* 
# was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::CommonInfo::Category;

use constant {
    SECURITY =>  'SECURITY',
    FIX =>  'FIX',
    UPDATE =>  'UPDATE',
    UPGRADE =>  'UPGRADE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::CommonInfo::Category enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.update.common_info.category',
                           'binding_class' => 'Com::Vmware::Appliance::Update::CommonInfo::Category');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


