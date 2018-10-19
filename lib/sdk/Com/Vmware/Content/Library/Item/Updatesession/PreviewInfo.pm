## @class Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo
#
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo``   *class* 
#     contains information about the files being uploaded in the update session. This 
#     *class*  was added in vSphere API 6.7 U1.

package Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'state',
         'case_map' => {
               'AVAILABLE' => ['certificate_info', 'warnings'],
               'UNAVAILABLE' => [],
               'NOT_APPLICABLE' => [],
               'PREPARING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{state} = $args{'state'};
   $self->{certificate_info} = $args{'certificate_info'};
   $self->{warnings} = $args{'warnings'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.updatesession.preview_info');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'PreviewInfo::State'));
   $self->set_binding_field('key' => 'certificate_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'CertificateInfo')));
   $self->set_binding_field('key' => 'warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'PreviewWarningInfo'))));
   bless $self, $class;
   return $self;
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Indicates the state of the preview of the update session. This  *field*  was added in
#     vSphere API 6.7 U1.
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# Indicates the state of the preview of the update session. This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_certificate_info ()
# Gets the value of 'certificate_info' property.
#
# @retval certificate_info - The current value of the field.
# The certificate information of the signed update session content. This  *field*  was
#     added in vSphere API 6.7 U1.
#
# Optional#
sub get_certificate_info {
   my ($self, %args) = @_;
   return $self->{'certificate_info'}; 	
}

## @method set_certificate_info ()
# Sets the given value for 'certificate_info' property.
# 
# @param certificate_info  - New value for the field.
# The certificate information of the signed update session content. This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_certificate_info {
   my ($self, %args) = @_;
   $self->{'certificate_info'} = $args{'certificate_info'}; 
   return;	
}

## @method get_warnings ()
# Gets the value of 'warnings' property.
#
# @retval warnings - The current value of the field.
# The list of warnings raised for this update session. Any warning which is not ignored
#     by the client will, by default, fail the update session during session complete
#     operation. This  *field*  was added in vSphere API 6.7 U1.
#
# optional#
sub get_warnings {
   my ($self, %args) = @_;
   return $self->{'warnings'}; 	
}

## @method set_warnings ()
# Sets the given value for 'warnings' property.
# 
# @param warnings  - New value for the field.
# The list of warnings raised for this update session. Any warning which is not ignored
#     by the client will, by default, fail the update session during session complete
#     operation. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_warnings {
   my ($self, %args) = @_;
   $self->{'warnings'} = $args{'warnings'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State``  
#     *enumerated type*  defines the state of the update session&apos;s preview. This 
#     *enumeration*  was added in vSphere API 6.7 U1.
#
#
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State::UNAVAILABLE #
#There are no files in the update session OR a preview is not possible for the files
# currently in the update session. However, preview may be possible after metadata files
# such as OVF descriptor are added to the session. In this case the state will transition to
#  ``PREPARING`` . This  *constant*  was added in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State::NOT_APPLICABLE #
#Preview is not possible for this update session. This state is reached when there are no
# metadata files in the update session and user invokes a session complete operation. This 
# *constant*  was added in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State::PREPARING #
#A preview is being prepared for the files currently in the update session. This state is
# reached when the applicable metadata files are added to the update session but their
# content is not fully uploaded yet. For OVF item type, this state indicates that the OVF
# descriptor file is currently being uploaded. This  *constant*  was added in vSphere API
# 6.7 U1.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State::AVAILABLE #
#Preview is available for this update session. It is possible to review certificate details
# and warnings, if any. This state is reached when the applicable metadata files in the
# session have been fully uploaded. This  *constant*  was added in vSphere API 6.7 U1.

package Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State;

use constant {
    UNAVAILABLE =>  'UNAVAILABLE',
    NOT_APPLICABLE =>  'NOT_APPLICABLE',
    PREPARING =>  'PREPARING',
    AVAILABLE =>  'AVAILABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.updatesession.preview_info.state',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::PreviewInfo::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


