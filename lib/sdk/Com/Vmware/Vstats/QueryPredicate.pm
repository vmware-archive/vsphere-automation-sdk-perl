## @class Com::Vmware::Vstats::QueryPredicate
#
# The  ``Com::Vmware::Vstats::QueryPredicate``   *enum*  describes how to query an id
#     present in a  ``Com::Vmware::Vstats::RsrcId`` . <b>Warning:</b> This  *enumeration* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
#
#
# Constant Com::Vmware::Vstats::QueryPredicate::EQUAL #
#Matching id-s by equality. <b>Warning:</b> This  *constant*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::QueryPredicate::ALL #
#Matching all available id-s. <b>Warning:</b> This  *constant*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::QueryPredicate;

use constant {
    EQUAL =>  'EQUAL',
    ALL =>  'ALL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::QueryPredicate enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vstats.query_predicate',
                           'binding_class' => 'Com::Vmware::Vstats::QueryPredicate');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

