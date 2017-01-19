########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ExceptionBase.pm
# This file is for the ExceptionBase class and its all sub classes
#

## @class Com::Vmware::Vapi::Util::ExceptionBase
#
# This class defines a super class for all vAPI Perl exception exceptions.
# Any arbitrarily deep class hierarchies can be created when it is needed.
# The more specific subclass can be derived from the other subclass
# or base exception via using the keyword 'isa' in declaration.
#
# @par Assumptions:
# None
#
# @par Dependencies:
# None

package Com::Vmware::Vapi::Util::ExceptionBase;

use strict;

use Exception::Class (

	#
	# The parent class for all specific vAPI Perl exceptions
	#
	ExceptionBase => { description => 'ExceptionBase - ', },

	#
	# vAPI Perl exception for Log Management objects
	#
	LogManagerException => {
		isa         => 'ExceptionBase',
		description => 'LogManagerException - ',
	},

	#
	# vAPI Perl exception for getting options
	#
	FailedToGetOptionVal => {
		isa         => 'ExceptionBase',
		description => 'FailedToGetOptionVal - ',
	},

	#
	# vAPI Perl exception for invalid option value
	#
	InvalidOptionVal => {
		isa         => 'ExceptionBase',
		description => 'InvalidOptionVal - ',
	},

	#
	# vAPI Perl exception for invalid parameter to method/function
	#
	InvalidParameter => {
		isa         => 'ExceptionBase',
		description => 'InvalidParameter - ',
	},

	#
	# vAPI Perl exception for permission
	#
	NoPermission => {
		isa         => 'ExceptionBase',
		description => 'NoPermission - ',
	},

	#
	# vAPI Perl exception for I/O
	#
	IOException => {
		isa         => 'ExceptionBase',
		description => 'IOException - ',
	},

	#
	# vAPI Perl exception for file not found
	#
	FileNotFoundException => {
		isa         => 'IOException',
		description => "FileNotFoundException - ",
	},

	#
	# vAPI Perl exception for object not found
	#
	ObjectNotFound => {
		isa         => 'ExceptionBase',
		description => 'ObjectNotFound - ',
	},

	#
	# vAPI Perl exception for abstract method not implemented
	#
	MethodNotImplemented => {
		isa         => 'ExceptionBase',
		description => 'MethodNotImplemented - ',
	},

	#
	# vAPI Perl exception for Configuration File Reader
	#
	ConfigReaderException => {
		isa         => 'ExceptionBase',
		description => 'ConfigReaderException - ',
	},

	#
	# vAPI Perl exception if class attribute is not defined
	#
	VariableNotDefined => {
		isa         => 'ExceptionBase',
		description => 'VariableNotDefined - ',
	},

	#
	# vAPI Perl exception if module can't be loaded
	#
	ModuleNotLoaded => {
		isa         => 'ExceptionBase',
		description => 'ModuleNotLoaded - ',
	},

	#
	# Method not found in the perl module
	#
	MethodNameNotFound => {
		isa         => 'ExceptionBase',
		description => 'MethodNameNotFound - ',
	},

	#
	# vAPI Perl exception for Logger class
	#
	LoggerException => {
		isa         => 'ExceptionBase',
		description => 'LoggerException - ',
	},

	#
	# IllegalStateException exception
	#
	IllegalStateException => {
		isa         => 'ExceptionBase',
		description => 'IllegalStateException - ',
	},

	#
	# Credentials exception
	#
	CredentialException => {
		isa         => 'ExceptionBase',
		description => 'ICredentialException - ',
	},

	#
	# vAPI Perl exception for Transport Protocol Layer
	#
	TransportProtocolException => {
		isa         => 'ExceptionBase',
		description => 'TransportProtocolException - ',
	},

	#
	# Unsupported protocol type exception
	#
	UnsupportedProtocolTypeException => {
		isa         => 'TransportProtocolException',
		description => 'UnsupportedProtocolTypeException - ',
	},

	#
	# InvalidCertificateException exception
	#
	InvalidCertificateException => {
		isa         => 'TransportProtocolException',
		description => 'InvalidCertificateException - ',
	},

	#
	# InvalidCertificateFormatException exception
	#
	InvalidCertificateFormatException => {
		isa         => 'TransportProtocolException',
		description => 'InvalidCertificateFormatException - ',
	},

	#
	# CryptographicException exception
	#
	CryptographicException => {
		isa         => 'TransportProtocolException',
		description => 'InvalidCertificateFormatException - ',
	},

	#
	# CertificateDecodeException exception
	#
	CertificateDecodeException => {
		isa         => 'CryptographicException',
		description => 'CertificateDecodeException - ',
	},

	#
	# vAPI Perl exception for Bindings class
	#
	BindingsException => {
		isa         => 'ExceptionBase',
		description => 'BindingsException - ',
	},

	#
	# vAPI Perl exception for BindingsType class
	#
	BindingsTypeException => {
		isa         => 'BindingsException',
		description => 'BindingsTypeException - ',
	},

	#
	# vAPI Perl exception for BindingsStringType class
	#
	BindingsStringTypeException => {
		isa         => 'BindingsTypeException',
		description => 'BindingsStringTypeException - ',
	},

	#
	# JsonInvalidRequestException exception
	#
	JsonInvalidRequestException => {
		isa         => 'ExceptionBase',
		description => 'JsonInvalidRequestException - ',
	},

	#
	# JsonInvalidResponseException exception
	#
	JsonInvalidResponseException => {
		isa         => 'ExceptionBase',
		description => 'JsonInvalidResponseException - ',
	},

	#
	# JsonInvalidMethodParamsException exception
	#
	JsonInvalidMethodParamsException => {
		isa         => 'ExceptionBase',
		description => 'JsonInvalidMethodParamsException - ',
	},

	#
	# ArgumentException exception
	#
	ArgumentException => {
		isa         => 'ExceptionBase',
		description => 'ArgumentException - ',
	},
	
	
	#
	# NullPointerException exception
	#
	NullPointerException => {
		isa         => 'ExceptionBase',
		description => 'NullPointerException - ',
	},
);

1;
