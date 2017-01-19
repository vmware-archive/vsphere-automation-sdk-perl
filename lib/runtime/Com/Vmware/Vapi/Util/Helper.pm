########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file Helper.pm
# This file is for the Helper class for vApi perl runtime
#

package Com::Vmware::Vapi::Util::Helper;

use Com::Vmware::Vapi::Util::Logger  qw(log_info log_framework get_instance);
use strict;

sub get_package_name {
	my (%args) = @_;
	my $package = $args{'name'};
	#
	# From: com.vmware.vapi
	# To: com::Vmware::Vapi
	#
	( $package =~ s/\.([a-z])/'::' . uc($1)/eg );
	#
	# From: com::Vmware::Vapi::Dynamic_struct::Sample_my_struct
	# To:
	# com::Vmware::Vapi::Dynamic_struct
	# Sample_my_struct
	#	
	$package =~ /(.*)::(.*)$/;
	$package = $1;
	my $last = $2;
	
	#
	# From: Sample_my_struct
	# To: SampleMyStruct
	#	
	($last =~ s/_([a-z]*)/ucfirst($1)/eg);
	
	#
	# Com::Vmware::Vapi::Dynamic_struct::SampleMyStruct
	#
	$package .= "::" . $last; 
	$package = ucfirst($package);
	#print "\n $args{'name'}";
	#print "\n $package";
	return $package;
}

sub get_package_file_path {
	my (%args) = @_;
	my $package = $args{'name'};
	(my $pkg = $package) =~ s|::|/|g; # require need a path
	#log_framework(MSG=>$pkg);
    return "$pkg.pm";
}

1;
