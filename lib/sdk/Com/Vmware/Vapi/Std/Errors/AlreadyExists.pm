## @class Com::Vmware::Vapi::Std::Errors::AlreadyExists
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::AlreadyExists``   *error*  indicates that an
#     attempt was made to create an entity but the entity already exists. Typically the
#     entity has a name or identifier that is required to be unique in some context, but
#     there is already an entity with that name or identifier in that context. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Trying to create a new tag category when a tag category with the specified name
#     already exists.</li>
# <li>Trying to create a new tag in tag category when a tag with the specified name
#     already exists the tag category.</li>
# <li>Trying to create a LUN with a specific UUID on a node (for replication purposes)
#     when a LUN with that UUID already exists on the node.</li>
# <li>Trying to create a file in a directory or move or copy a file to a directory when
#     a file with that name already exists in the directory. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::AlreadyExists;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::AlreadyExists structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::AlreadyExists');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.already_exists');
   bless $self, $class;
   return $self;
}


1;


