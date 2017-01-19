
####################################################
# Copyright 2016 VMware, Inc.  All rights reserved.
####################################################
#
# @file VmHelper.pm
# The file implements VmHelper perl module.
#
# @copy 2016, VMware Inc.
#

#
# @class VmHelper
# Helper class with methods to get identifier of a vm
#
package Vcenter::Helpers::VmHelper;

#
# Perl Core Modules
#
use strict;

#
# vApi runtime libraries
#
use Com::Vmware::Vcenter::VM;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Returns the identifier of a vm
#
# Note: The method assumes that there is only one vm with the specified name.
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param vmName name of the virtual machine
# @return the identifier of a virtual machine with the specified name
#
sub getVM {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $vmName            = $args{'vmName'};

   # Get the VM
   my $vm_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::VM',
      'stub_config'  => $sessionStubConfig
   );
   my @vms          = ($vmName);
   my $vmFilterSpec = new Com::Vmware::Vcenter::VM::FilterSpec();
   $vmFilterSpec->set_names( 'names' => \@vms );
   my $vmList = $vm_service->list( 'filter' => $vmFilterSpec );
   if ( scalar(@$vmList) == 0 ) {
      log_info( MSG => "VM with name '" . $vmName . "' not found" );
      exit();
   }
   return $vmList->[0]->get_vm();
}

1;
