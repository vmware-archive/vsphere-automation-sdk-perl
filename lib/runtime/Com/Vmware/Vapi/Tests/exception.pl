#!/usr/bin/perl
#
# This is sample and tests as well for Exception handling in vAPI Perl SDK
#

use Com::Vmware::Vapi::Util::ExceptionBase;

sub bindingMethod () {
	throw  BindingsStringTypeException ("Throwing BindingsStringTypeException.\n\n");
}

sub baseMethod () {
	throw  ExceptionBase ("Throwing Base Exception.\n\n");
}

sub main () {
	
	eval {
		#bindingMethod ();
		baseMethod ();
	};
	#
	# General catch block - Not Recommended
	# 
	if ($@) {
		print "Caught General Exception.\n";
		print $@;
	}
	#
	# Catching Logger Exception - not expected to get this
	#
	if ( my $e = Exception::Class->caught('LoggerException') ) {
        print "Caught LoggerExcetion.\n";
		print $e;
    }
    #
    # Catching the right exception 
    #
    if ( my $e = Exception::Class->caught('BindingsStringTypeException') ) {
        print "Caught BindingsStringTypeException.\n";
		print $e;
    }
    #
    # Catching the parent exception 
    #
    if ( my $e = Exception::Class->caught('BindingsTypeException') ) {
        print "Caught BindingsTypeException.\n";
		print $e;
    }
	#
    # Catching the base exception 
    #
    if ( my $e = Exception::Class->caught('ExceptionBase') ) {
        print "Caught ExceptionBase.\n";
		print $e;
		throw $e;
    }
}

main();