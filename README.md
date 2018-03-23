# VMware vSphere Automation SDK for Perl
## Table of Contents
* [Abstract](#abstract)
- [Quick Start Guide](#quick-start-guide)
  - [Prerequisites](#prerequisites)
  - [Supported Platforms](#supported-platforms)
  - [Supported Perl Versions](#supported-perl-versions)
  - [What's in the SDK Package?](#whats-in-the-sdk-package)
  - [Download and Installation Instructions](#download-and-installation-instructions)
  - [How to run the samples?](#how-to-run-the-samples)
- [API Documentation](#api-documentation)
- [Submitting samples](#submitting-samples)
  - [Required Information](#required-information)
  - [Suggested Information](#suggested-information)
  - [Contribution Process](#contribution-process)
- [Resource Maintenance](#resource-maintenance)
  - [Maintenance Ownership](#maintenance-ownership)
  - [Filing Issues](#filing-issues)
  - [Resolving Issues](#resolving-issues)
  - [VMware Sample Exchange](#vmware-sample-exchange)
- [Repository Administrator Resources](#repository-administrator-resources)
  - [Board Members](#board-members)
  - [Approval of Additions](#approval-of-additions)
- [VMware Resources](#vmware-resources)
## Abstract
This document for the vSphere Automation SDK for perl describes -
   1. How to run the samples in this repository
   2. The procedure for contributing new samples.

## Supported vCenter Releases:
vCenter 6.0 and 6.5. 
Certain APIs and samples that are introduced in 6.5 release, such as vCenter, Virtual Machine and Appliance Management. Please refer to the notes in each sample for detailed compatibility information. 

## Introduction
The VMware vSphere Automation SDKs provide support for your client application infrastructure with services to perform management operations in your vSphere environment. The vSphere Automation SDK for Perl also contains samples that demonstrate how the libraries work with other vSphere APIs.

The version 6.5 SDK enables programmatic access to the following services:

    * Service discovery using Lookup Service
    * Authentication (Single Sign-On)
    * Session management
    * Tagging
    * Content Library
    * Virtual Machines

## Prerequisites

**In case of windows platform-**

1. Download the latest ActiveState Perl 64-bits (https://www.activestate.com/activeperl/downloads) or Strawberry Perl (http://strawberryperl.com/).
2. Need to install few required CPAN modules using below commands:

```cmd
  ppm install XML::LibXML
  ppm install UUID::Random
  ppm install Crypt::OpenSSL::RSA
  ppm install Exception::Class
  ppm install Crypt::X509
  ppm install Data::Compare
```

3. Download and install the vSphere SDK for Perl 6.5 (VMware-vSphere-Perl-SDK-6.X.X-XXXXX.XXXX.x86_64.exe) from (https://code.vmware.com/web/sdk/65/vsphere-perl).
4. Need to copy python27.dll from vSphere_SDK_install_directory/bin to vSphere_SDK_install_directory/Perl/lib/VMware.

**In case of RHEL platform-**

1. Need to install few required CPAN modules using below commands:

```cmd
yum install e2fsprogs-devel libuuid-devel openssl-devel perl-devel
yum install glibc.i686 zlib.i686
yum install perl-XML-LibXML libncurses.so.5 perl-Crypt-SSLeay perl-Time-Piece
```

2. $rm -rf /usr/lib64/perl5/auto/Crypt/OpenSSL/RSA/RSA.so
3. perl -MCPAN -e 'install Crypt::OpenSSL::RSA'
4. perl -MCPAN -e 'install Data::Compare'
5. Download the vSphere SDK for Perl 6.5 (VMware-vSphere-Perl-SDK-6.X.X-XXXXX.XXXX.x86_64.tar.gz) from (https://code.vmware.com/web/sdk/65/vsphere-perl) and follow below mentioned steps to install.

```cmd
Untar the vSphere SDK for Perl 6.5 binary that you downloaded.
$tar –zxvf VMware-vSphere-Perl-SDK-6.X.X-XXXXX.XXXX.x86_64.tar.gz
A vmware-vsphere-vcli-distrib directory is created.
Log in as superuser and run the installer.
$cd vmware-vsphere-cli-distrib
$./vmware-install.pl
To accept the license terms, enter yes and press Enter.
To install Perl modules locally, enter yes and press Enter.
Specify an installation directory, or press Enter to accept the default, which is /usr/bin.
```

**In case of SLES platform-**

1. Need to install few required CPAN modules using below commands:

```cmd
yast -i openssl-devel libuuid-devel libuuid-devel-32bit e2fsprogs-devel
```

2. Need to download modules Data::Compare, LWP::Protocol::https-6.06 and Net::Https 6.06 from CPAN site (http://search.cpan.org/) and follow below mentioned steps:

```cmd
$tar -zxvf downloaded_module.tar.gz
$cd extracted_folder_name
$./ Makefile.pl
$make
$make install
```

3. Download the vSphere SDK for Perl 6.5 (VMware-vSphere-Perl-SDK-6.X.X-XXXXX.XXXX.x86_64.tar.gz) from (https://code.vmware.com/web/sdk/65/vsphere-perl) and follow below mentioned steps to install.

```cmd
Untar the vSphere SDK for Perl 6.5 binary that you downloaded.
$tar –zxvf VMware-vSphere-Perl-SDK-6.X.X-XXXXX.XXXX.x86_64.tar.gz
A vmware-vsphere-vcli-distrib directory is created.
Log in as superuser and run the installer.
$cd vmware-vsphere-cli-distrib
$./vmware-install.pl
To accept the license terms, enter yes and press Enter.
To install Perl modules from CPAN, enter yes and press Enter.
Specify an installation directory, or press Enter to accept the default, which is /usr/bin.
```

**In case of Ubuntu platform-**

1. Need to install few required CPAN modules using below commands:

```cmd
For Ubuntu-15.10 64 bits-
$sudo apt-get install lib32z1 lib32ncurses5 uuid uuid-dev perl libssl-dev perldoc libxml-libxml-perl libcrypt-ssleay-perl libdata-compare-perl libsoap-lite-perl

For Ubuntu-16.04 64 bits-
$sudo apt-get install lib32z1 lib32ncurses5 uuid uuid-dev libssl-dev perl-doc libxml-libxml-perl libcrypt-ssleay-perl libsoap-lite-perl libdata-compare-perl libmodule-build-perl
```

2. Download the vSphere SDK for Perl 6.5 (VMware-vSphere-Perl-SDK-6.X.X-XXXXX.XXXX.x86_64.tar.gz) from (https://code.vmware.com/web/sdk/65/vsphere-perl) and follow below mentioned steps to install.

```cmd
Untar the vSphere SDK for Perl 6.5 binary that you downloaded.
$tar –zxvf VMware-vSphere-Perl-SDK-6.X.X-XXXXX.XXXX.x86_64.tar.gz
A vmware-vsphere-vcli-distrib directory is created.
Log in as superuser and run the installer.
$cd vmware-vsphere-cli-distrib
$./vmware-install.pl
To accept the license terms, enter yes and press Enter.
To install Perl modules from CPAN, enter yes and press Enter.
Specify an installation directory, or press Enter to accept the default, which is /usr/bin.
```


For more info, please refer to https://www.vmware.com/support/developer/viperltoolkit/


## Supported Platforms
    * Red Hat Enterprise Linux (RHEL) 7 (Server) 64 bit
    * Red Hat Enterprise Linux (RHEL) 6.6 (Server) 64 bit
    * SLES 12 64 bit
    * SLES 11 SP3 64 bit
    * Ubuntu 16.04 (LTS) 64bit
    * Ubuntu 15.10 (LTS) 64bit
    * Windows 10 64 bit

## Supported Perl Versions
    * Linux: Perl 5.10+
    * Windows: ActivePerl 5.14+
               Strawberry Perl 5.24.1.1+

## What's in the SDK Package?
The vsphere-automation-sdk-perl-master.zip file contains the
following:

+vsphere-automation-sdk-perl-master

    +bin
    +doc
    +lib
        +runtime
        +sdk
        +README.md
    +samples
    +sample-template
    +CONTRIBUTING.md
    +README.md
    +LICENSE

## Download and Installation Instructions
1. Please pick up one of the supported linux/windows platform from the
[Supported Platforms](#supported-platforms) list.
2. Follow [Prerequisites](#prerequisites) section to install all required module. 
3. Load the GitHub repository page: https://github.com/vmware/vsphere-automation-sdk-perl-samples to download the repository
4. Click on the green “Clone or Download” button and then click “Download ZIP”
5. Once downloaded, extract the zip file to the location of your choosing
6. At this point, you now have a local copy of the repository

7. Set PERL5LIB env variable or perl include path using these commands:
```cmd
   * On windows platform:
     set PERL5LIB=%PERL5LIB%;SDK-root-directory-path\lib\runtime;SDK-root-directory-path\lib\sdk;SDK-root-directory-path\samples
   * On other plateforms:
     export PERL5LIB=$PERL5LIB:SDK-root-directory-path/lib/sdk:SDK-root-directory-path/lib/runtime:SDK-root-directory-path/samples
```
## How to run the samples?
The samples directory in this distribution has sample scripts, showing how
to call the VMware-vSphere-Automation-SDK-Perl API.

Use a command like the following to get list of VMs present in vCenter.

    $ cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm

    $ perl list_vms.pl --server https://vCenter_server_ip --username 'user name' --password 'password'

## API Documentation
The API documentation can be found [here] (doc/client.zip)

## Submitting samples

### Developer Certificate of Origin

Before you start working with this project, please read our [Developer Certificate of Origin](https://cla.vmware.com/dco). All contributions to this repository must be signed as described on that page. Your signature certifies that you wrote the patch or have the right to pass it on as an open-source patch.

### Required Information
The following information must be included in the README.md or in the sample docstring in case README already exists in same folder.
* Author Name
  * This can include full name, email address or other identifiable piece of information that would allow interested parties to contact author with questions.
* Date
  * Date the sample was originally written
* Minimal/High Level Description
  * What does the sample do ?
* Any KNOWN limitations or dependencies

### Suggested Information
The following information should be included when possible. Inclusion of information provides valuable information to consumers of the resource.
* vSphere version against which the sample was developed/tested
* SDK version against which the sample was developed/tested
* Perl version against which the sample was developed/tested

### Contribution Process

* Follow the [GitHub process](https://help.github.com/articles/fork-a-repo)
  * Please use one branch per sample or change-set
  * Please use one commit and pull request per sample
  * Please post the sample output along with the pull request
  * If you include a license with your sample, use the project license

## Resource Maintenance
### Maintenance Ownership
Ownership of any and all submitted samples are maintained by the submitter.
### Filing Issues
Any bugs or other issues should be filed within GitHub by way of the repository’s Issue Tracker.
### Resolving Issues
Any community member can resolve issues within the repository, however only the board member can approve the update. Once approved, assuming the resolution involves a pull request, only a board member will be able to merge and close the request.

### VMware Sample Exchange
It is highly recommended to add any and all submitted samples to the VMware Sample Exchange:  <https://code.vmware.com/samples>

Sample Exchange can be allowed to access your GitHub resources, by way of a linking process, where they can be indexed and searched by the community. There are VMware social media accounts which will advertise resources posted to the site and there's no additional accounts needed, as the VMware Sample Exchange uses MyVMware credentials.     

## Repository Administrator Resources
### Board Members

Board members are volunteers from the SDK community and VMware staff members, board members are not held responsible for any issues which may occur from running of samples from this repository.

Members:
* Kapil Yadav (VMware)
* Steve Trefethen (VMware)

### Approval of Additions
Items added to the repository, including items from the Board members, require 2 votes from the board members before being added to the repository. The approving members will have ideally downloaded and tested the item. When two “Approved for Merge” comments are added from board members, the pull can then be committed to the repository.

## VMware Resources

* [vSphere Automation SDK Overview](http://pubs.vmware.com/vsphere-65/index.jsp#com.vmware.vapi.progguide.doc/GUID-AF73991C-FC1C-47DF-8362-184B6544CFDE.html)
* [VMware Code](https://code.vmware.com/home)
* [VMware Developer Community](https://communities.vmware.com/community/vmtn/developer)
* VMware vSphere [REST API Reference documentation](https://code.vmware.com/web/dp/doc/preview?id=4645).
* [VMware Perl forum](https://code.vmware.com/forums/7562/vsphere-automation-sdk-for-perl)
