This directory contains samples for vCenter virtual machine APIs:

1. Virtual machine Create, Read and Delete operations:
    * Create a virtual machine with system provided defaults    - Create/DefaultVM/default_vm.pl
    * Create a basic virtual machine                            - Create/BasicVM/basic_vm.pl
    * Create a exhaustive virtual machine                       - Create/ExhaustiveVM/exhaustive_vm.pl
    * Demonstrates how to get list of VMs present in vCenter    - list_vms.pl

2. Virtual machine power lifecycle (requires an existing virtual machine):
    * Manage virtual machine power state                        - power_life_cycle.pl

3. Update virtual machine hardware settings (requires an existing virtual machine):
    * Configure virtual SATA adapters of a virtual machine      - Hardware/Adapter/sata_adapter_configuration.pl
    * Configure virtual SCSI adapters of a virtual machine      - Hardware/Adapter/scsi_adapter_configuration.pl
    * Configure the booting settings for virtual machine        - Hardware/Boot/boot_configuration.pl
    * Configure the boot devices used by a virtual machine      - Hardware/BootDevices/boot_device_configuration.pl
    * Configure CD-ROM devices for a virtual machine            - Hardware/Cdrom/cdrom_configuration.pl
    * Configure CPU settings for a virtual machine              - Hardware/Cpu/cpu_configuration.pl
    * Configure virtual ethernet adapters of a virtual machine  - Hardware/Ethernet/ethernet_configuration.pl
    * Configure Memory settings of a virtual machine            - Hardware/Memory/memory_configuration.pl
    
   
   Testbed Requirement:
   - 1 vCenter Server
   - 2 ESX hosts
   - 1 datastore
   - Some samples need additional configuration like a cluster, vm folder, standard portgroup, iso file on a datastore and distributed portgroup
