# VMware vSphere Automation SDK for Perl
## Table of Contents
* [Abstract](#abstract)
* [Table of Contents](https://github.com/vmware/vsphere-automation-sdk-perl-samples#table-of-contents)
* [Introduction](https://github.com/vmware/vsphere-automation-sdk-perl-samples#introduction)
* [Intended Audience](https://github.com/vmware/vsphere-automation-sdk-perl-samples#intended-audience)
* [Prerequisites](https://github.com/vmware/vsphere-automation-sdk-perl-samples#prerequisites)
* [Supported Platforms](https://github.com/vmware/vsphere-automation-sdk-perl-samples#supported-platforms)
* [Supported Perl Versions](https://github.com/vmware/vsphere-automation-sdk-perl-samples#supported-perl-versions)
* [What's in the SDK Package?](https://github.com/vmware/vsphere-automation-sdk-perl-samples#whats-in-the-sdk-package)
* [Download and Installation Instructions](https://github.com/vmware/vsphere-automation-sdk-perl-samples#download-and-installation-instructions)
* [How to run the samples?](https://github.com/vmware/vsphere-automation-sdk-perl-samples#how-to-run-the-samples)
* [API Documentation and Programming Guide](https://github.com/vmware/vsphere-automation-sdk-perl-samples#api-documentation-and-programming-guide)

## Abstract
This document for the vSphere Automation SDK for perl describes -
   1. How to run the samples in this repository
   2. The procedure for contributing new samples.

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

This README contains the following topics:

    * Intended Audience
    * Prerequisites
    * Supported Platforms
    * Supported Perl Versions
    * What's in the SDK Package?
    * Download and Installation Instructions
    * How to run the samples?
    * API Documentation and Programming Guide

## Intended Audience
-----------------------------------------------------------------------------

The VMware vSphere Automation SDK for Perl is intended for the following audiences:

    * Developers who want to write new applications for vSphere 6.5.
    * Developers migrating an existing vSphere application to use new features.

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
    +samples
    +README

## Download and Installation Instructions
-----------------------------------------------------------------------------

1. Please pick up one of the supported linux/windows platform from the
supported platform list.
2. Load the GitHub repository page: https://github.com/vmware/vsphere-automation-sdk-perl-samples to download the repository
3. Click on the green “Clone or Download” button and then click “Download ZIP”
4. Once downloaded, extract the zip file to the location of your choosing
5. At this point, you now have a local copy of the repository

6. Set PERL5LIB env variable or perl include path using these commands:
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
The API documentation for the samples can be found here :

The programming guide for vSphere Automation SDK for Perl can be found here: 

Copyright and Licence
-----------------------------------------------------------------------------

Copyright (c) 2017 VMware, Inc.

-The End-

