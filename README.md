# VMware vSphere Automation SDK for Perl
## Table of Contents
- [Abstract](#abstract)
- [Supported vCenter Releases](#supported-onprem-vcenter-releases)
- [Quick Start Guide](#quick-start-guide)
  - [Supported Platforms](#supported-platforms)
  - [Supported Perl Versions](#supported-perl-versions)
  - [Setting up a vSphere Test Environment](#setting-up-a-vsphere-test-environment)
  - [Download and Installation Instructions](#download-and-installation-instructions)
  - [How to run the samples?](#how-to-run-the-samples)
- [API Documentation](#api-documentation)
- [Repository Administrator Resources](#repository-administrator-resources)
  - [Board Members](#board-members)
  - [Approval of Additions](#approval-of-additions)
- [VMware Resources](#vmware-resources)

## Abstract
This document for the vSphere Automation SDK for perl describes -
   1. How to run the samples in this repository
   2. The procedure for contributing new samples

## Supported OnPrem vCenter Releases:
vCenter 6.0, 6.5, 6.7, 6.7U1 and 7.0

Please refer to the notes in each sample for detailed compatibility information.

## Introduction
The VMware vSphere Automation SDKs provide support for your client application infrastructure with services to perform management operations in your vSphere environment. The vSphere Automation SDK for Perl also contains samples that demonstrate how the libraries work with other vSphere APIs.

## Quick Start Guide
This document will walk you through getting up and running with the Perl SDK Samples.
Prior to running the samples you will need to setup a vCenter test environment and
install local perl packages, the following steps will take you through this process.

**Prerequisites in case of windows platform-**

* Download the latest ActiveState Perl 64-bits (https://www.activestate.com/activeperl/downloads) or Strawberry Perl (http://strawberryperl.com/).
* Need to install few required CPAN modules using below commands:

```cmd
ppm install XML::LibXML UUID UUID::Random Crypt::OpenSSL::RSA Exception::Class Crypt::X509 Data::Compare Text::Template
```

**Prerequisites in case of RHEL platform-**

* Need to install few required CPAN modules using below commands:

```cmd
yum install perl-XML-LibXML perl-Crypt-OpenSSL-RSA uuid
cpan install Text::Template UUID::Random Exception::Class Crypt::X509 Data::Compare Date::Format List::MoreUtils
```

**Prerequisites in case of SLES platform-**

* Need to download modules (Data::Compare, Exception::Class, UUID, UUID::Random, Crypt::X509, Crypt::OpenSSL::RSA, XML::LibXML, Text::Template, LWP::Protocol::https and List::MoreUtils) from CPAN site (http://search.cpan.org/) and follow below mentioned steps:

```cmd
$tar -zxvf downloaded_module.tar.gz
$cd extracted_folder_name
$./ Makefile.pl
$make
$make install
```

**Prerequisites in case of Ubuntu platform-**

* Need to install few required CPAN modules using below commands:

```cmd
For Ubuntu-16.04 and Ubuntu-15.10 64 bits-
$sudo apt-get install libcrypt-openssl-rsa-perl libcrypt-x509-perl libuuid-perl libexception-class-perl libtext-template-perl libxml-libxml-perl libdata-compare-perl liblist-moreutils-perl
```
```cmd
cpan install UUID::Random LWP::Protocol::https
```

For more info, please refer to https://www.vmware.com/support/developer/viperltoolkit/


### Supported Platforms
    * Red Hat Enterprise Linux (RHEL) 7.1/7.2/7.3 (Server) 64 bit
    * Red Hat Enterprise Linux (RHEL) 6.6 (Server) 64 bit
    * SLES 12 64 bit
    * SLES 11 SP3 64 bit
    * Ubuntu 16.04 (LTS) 64bit
    * Ubuntu 15.10 (LTS) 64bit
    * Windows 10 64 bit

### Supported Perl Versions
    * Linux: Perl 5.10+
    * Windows: ActivePerl 5.14+
               Strawberry Perl 5.24.1.1+

### Setting up a vSphere Test Environment
**NOTE:** The samples are intended to be run against a freshly installed **non-Production** vSphere setup as the scripts may make changes to the test environment and in some cases can destroy items when needed.

To run the samples a vSphere test environment is required with the following configuration
* 1 vCenter Server
* 2 ESX hosts
* 1 NFS Datastore with at least 3GB of free capacity

Apart from the above, each individual sample may require additional setup. Please refer to the sample parameters for more information on that.

### Download and Installation Instructions
1. Please pick up one of the supported linux/windows platform from the
[Supported Platforms](#supported-platforms) list.
2. Install all required perl modules (prerequisites) as per your choosen platform.
3. Download and extract the vSphere Automation SDK for Perl zip file to the location of your choosing
4. Set PERL5LIB env variable or perl include path using these commands:
```cmd
   * On windows platform:
     set PERL5LIB=%PERL5LIB%;SDK-root-directory-path\lib;SDK-root-directory-path\lib\runtime;SDK-root-directory-path\lib\sdk;SDK-root-directory-path\samples
   * On other plateforms:
     export PERL5LIB=$PERL5LIB:SDK-root-directory-path/lib:SDK-root-directory-path/lib/sdk:SDK-root-directory-path/lib/runtime:SDK-root-directory-path/samples
```

### How to run the samples?
The samples directory in this distribution has sample scripts, showing how
to call the VMware-vSphere-Automation-SDK-Perl API.

Use a command like the following to get list of VMs present in vCenter.

    $ cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm

    $ perl list_vms.pl --server https://vCenter_server_ip --username 'user name' --password 'password'

## API Documentation

### vSphere API Documentation

* [vSphere 7.0 (latest)](https://vmware.github.io/vsphere-automation-sdk-perl/vsphere/7.0.0.1/index.html)
* Previous releases:    [6.7.0](https://vmware.github.io/vsphere-automation-sdk-perl/vsphere/6.7.0)    [6.5.0](https://vmware.github.io/vsphere-automation-sdk-perl/vsphere/6.5.0)    [6.7.1](https://vmware.github.io/vsphere-automation-sdk-perl/vsphere/6.7.1/)

## Repository Administrator Resources
### Board Members

Board members are volunteers from the SDK community and VMware staff members, board members are not held responsible for any issues which may occur from running of samples from this repository.

Members:
* Anusha Hegde (VMware)

### Approval of Additions
Items added to the repository, including items from the Board members, require 2 votes from the board members before being added to the repository. The approving members will have ideally downloaded and tested the item. When two “Approved for Merge” comments are added from board members, the pull can then be committed to the repository.

## VMware Resources

* [vSphere Automation SDK Overview](http://pubs.vmware.com/vsphere-65/index.jsp#com.vmware.vapi.progguide.doc/GUID-AF73991C-FC1C-47DF-8362-184B6544CFDE.html)
* [VMware Code](https://code.vmware.com/home)
* [VMware Developer Community](https://communities.vmware.com/community/vmtn/developer)
* VMware vSphere [REST API Reference documentation](https://code.vmware.com/apis/366/vsphere-automation)
* [VMware Perl forum](https://code.vmware.com/forums/7562/vsphere-automation-sdk-for-perl)
