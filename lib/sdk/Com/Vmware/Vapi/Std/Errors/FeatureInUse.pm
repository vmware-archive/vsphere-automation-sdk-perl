## @class Com::Vmware::Vapi::Std::Errors::FeatureInUse
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::FeatureInUse``   *error*  indicates that an
#     action cannot be completed because a feature is in use. <p>
# 
#  Examples: </p>
# 
# <ul>
#  <li>Trying to disable snapshots on a virtual machine which has a snapshot. </li>
#  <li>Trying to downgrade a license that has licensed features that are in use. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::FeatureInUse;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::FeatureInUse structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::FeatureInUse');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.feature_in_use');
   bless $self, $class;
   return $self;
}


1;


