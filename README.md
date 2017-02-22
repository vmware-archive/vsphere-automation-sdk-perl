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
- [API Documentation and Programming Guide](#api-documentation-and-programming-guide)
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

## Abstract
This document for the vSphere Automation SDK for perl describes -
   1. How to run the samples in this repository
   2. The procedure for contributing new samples.

## Supported vCenter Releases:
vCenter 6.0 and 6.5. 
Certain APIs and samples that are introduced in 6.5 release, such as vCenter, Virtual Machine and Appliance Management. Please refer to the notes in each sample for detailed compatibility information. 

## Introduction
-----------------------------------------------------------------------------

The VMware vSphere Automation SDKs provide support for your client application infrastructure with services to perform management operations in your vSphere environment. The vSphere Automation SDK for Perl also contains samples that demonstrate how the libraries work with other vSphere APIs.

The version 6.5 SDK enables programmatic access to the following services:

    * Service discovery using Lookup Service
    * Authentication (Single Sign-On)
    * Session management
    * Tagging
    * Content Library
    * Virtual Machines
    * vCenter Server Appliance management

## Prerequisites
-----------------------------------------------------------------------------
1. Download the latest ActiveState Perl or Strawberry Perl
2. Need to install CPAN modules using below commands.
    * In case of windows, you can use these commands:
      * ppm install XML::LibXML
      * ppm install UUID::Random
      * ppm install Crypt::OpenSSL:RSA
      * ppm install Exception::Class
      * ppm install Crypt::X509
      * ppm install Data::UUID
    * In case of other platform, you can use yum command to install these modules or can follow below steps:
      * Need to download all required module from CPAN (for example: UUID module is a required module. we will download this module as CPAN module at root location)
      * Extract it
      * [root@inhd0740 ~]# cd UUID
      * [root@inhd0740 ~]#./ Makefile.pl
      * [root@inhd0740 ~]# make
      * [root@inhd0740 ~]# make install
3. VMware vSphere Automation SDK for Perl 6.5 requires vSphere SDK for Perl 6.5 to be installed first in the targeted client platform. The vSphere SDK for Perl 6.5 interactive installer will install all the required dependencies modules for vSphere Automation SDK for Perl 6.5 as well.
4. Need to copy python27.dll from <vCLI_install_directory>/bin to <vCLI_install_directory>/Perl/lib/VMware on Windows only.

For more info, please refer to https://www.vmware.com/support/developer/viperltoolkit/


## Supported Platforms
-----------------------------------------------------------------------------

    * Red Hat Enterprise Linux (RHEL) 7 (Server) 64 bit
    * Red Hat Enterprise Linux (RHEL) 6.6 (Server) 64 bit
    * SLES 12 64 bit
    * SLES 11 SP3 64 bit
    * Ubuntu 16.04 (LTS) 64bit
    * Ubuntu 15.10 (LTS) 64bit
    * Windows 10 64 bit

## Supported Perl Versions
-----------------------------------------------------------------------------

    * Linux: Perl 5.10+
    * Windows: ActivePerl 5.14+

## What's in the SDK Package?
-----------------------------------------------------------------------------

The vsphere-automation-sdk-perl-master.zip file contains the
following:

+vsphere-automation-sdk-perl-master

    +lib
        +runtime
        +sdk
        +README
    +samples
    +README

## Download and Installation Instructions
-----------------------------------------------------------------------------

1. Please pick up one of the supported linux/windows platform from the
[Supported Platforms](#supported-platforms) list.
2. Follow [Prerequisites](#prerequisites) section to install all required module. 
3. Load the GitHub repository page: https://github.com/vmware/vsphere-automation-sdk-perl-samples to download the repository
4. Click on the green “Clone or Download” button and then click “Download ZIP”
5. Once downloaded, extract the zip file to the location of your choosing
6. At this point, you now have a local copy of the repository

7. Set PERL5LIB env variable or perl include path using these commands:
   * On windows platform:
     set perl5lib=%perl5lib%;C:\vsphere-automation-sdk-perl-master\lib\runtime;C:\vsphere-automation-sdk-perl-master\lib\sdk;C:\vsphere-automation-sdk-perl-master\samples
   * On other plateforms:
     export PERL5LIB=$PERL5LIB:'SDK-root-directory-path'/lib/sdk:'SDK-root-directory-path'/lib/runtime:'SDK-root-directory-path'/samples
     
   

## How to run the samples?
-----------------------------------------------------------------------------

The samples directory in this distribution has sample scripts, showing how
to call the VMware-vSphere-Automation-SDK-Perl API.

   #cd vsphere-automation-sdk-perl-master/samples/Tagging

   #perl tag_life_cycle.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --cleanup 'true or false'

   #perl tagging_workflow.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Create/DefaultVM

   #perl default_vm.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmfolder 'vm folder name' --datastore 'datastore name' --clustername 'cluster name' --datacenter 'datacenter name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Create/BasicVM

   #perl basic_vm.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmfolder 'vm folder name' --datastore 'datastore name' --clustername 'cluster name' --datacenter 'datacenter name' --standardportgroup 'standard portgroup name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Create/ExhaustiveVM

   #perl exhaustive_vm.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmfolder 'vm folder name' --datastore 'datastore name' --clustername 'cluster name' --datacenter 'datacenter name' --standardportgroup 'standard portgroup name' --distributedportgroup  'distributed portgroup name' --isodatastorepath [datastore1] --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/Cpu

   #perl cpu_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/Memory

   #perl memory_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/Cdrom

   #perl cdrom_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --isodatastorepath [datastore_name]iso/iso_datastore_file_name.iso --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/Ethernet

   #perl ethernet_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --datacenter 'datacenter name' --standardportgroup 'standard portgroup name' --distributedportgroup  'distributed portgroup name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/Boot

   #perl boot_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/BootDevices

   #perl boot_device_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/Adapter

   #perl sata_adapter_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm/Hardware/Adapter

   #perl scsi_adapter_configuration.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --cleanup 'true or false'
   
   #cd vsphere-automation-sdk-perl-master/samples/Vcenter/Vm
   
   #perl power_life_cycle.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/ContentLibrary/ContentUpdate

   #perl content_update.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --clname 'existing content library name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/ContentLibrary/CRUD

   #perl library_crud.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --datastore 'datastore name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/ContentLibrary/ISOMount

   #perl iso_mount.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --isoitemnametomount  'iso item name to mount' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/ContentLibrary/OvfDeploy

   #perl deploy_ovf_template.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --libraryitemname 'library item name' --clustername 'cluster name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/ContentLibrary/OvfImportExport

   #perl ovf_import_export.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --clname 'content library name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/ContentLibrary/PublishSubscribe

   #perl publish_subscribe.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --datastore 'datastore name' --datacenter 'datacenter name' --cleanup 'true or false'

   #cd vsphere-automation-sdk-perl-master/samples/ContentLibrary/VMCapture

   #perl vm_template_capture.pl --lsurl https://server_ip/lookupservice/sdk --server https://server_ip --username 'user name' --password 'password' --vmname 'vm name' --datacenter 'datacenter name' --datastore  'datastore name' --cleanup 'true or false'

## API Documentation and Programming Guide
-----------------------------------------------------------------------------
The API documentation for the samples can be found here :TODO

The programming guide for vSphere Automation SDK for Perl can be found here:TODO

## Submitting samples
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

### Approval of Additions
Items added to the repository, including items from the Board members, require 2 votes from the board members before being added to the repository. The approving members will have ideally downloaded and tested the item. When two “Approved for Merge” comments are added from board members, the pull can then be committed to the repository.

