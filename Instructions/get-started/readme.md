# Getting Started with Industrial Edge - Setup the Environment

![](assets/20230605_155403_image.png)

###### Components:

1. **IEH - Industrial Edge HUB**
   * Siemens Hosted Cloud environment for downloading bought apps.
2. **IEM - Industrial Edge Management**
   * Worldwide or plantbased setup to manage all the IED (Industrial Edge Devices)
3. **IED - Industrial Edge Device**
   * Device where the Apps are
4. **IEAP - Industrial Edge App Publisher**
   * Software where your own made apps can be uploaded to the IEM.

# Contents

1. Get Software and Hardware
2. Setting up the environment
   * Management
   * IEVD
3. Start-up
   1. IEH
   2. IEM
   3. IED

# 1. Software and Hardware

###### Software

To get started there are two things you need to buy

1. [IEH Access](https://www.dex.siemens.com/edge/manufacturing-process-industries/industrial-edge-access)
2. [IEM Device License](https://www.dex.siemens.com/edge/manufacturing-process-industries/industrial-edge-device-license)

Siemens will create a Hub domain for you and from there on you can setup your management.

###### Hardware

Next to that you need an edge device which can be one the following:

1. [Industrial edge Device IPC 227e]([https://www.dex.siemens.com/edge/manufacturing-process-industries/simatic-ipc227e-industrial-edge-device)
   * This is the default edge device acceptable for most use-cases.
2. [Industrial Edge Virtual Device](https://www.dex.siemens.com/edge/manufacturing-process-industries/industrial-edge-virtual-device?cartId=584ee2f4-7d4a-475b-96ac-cfaa21ba2604&cclcl=nl_NL)
   * This is Virtual edge devices supported for VMWARE Esxi server. can also run on vmware workstation or Oracle Virtualbox, but is not supported
3. [Other Devices](https://www.dex.siemens.com/edge/manufacturing-process-industries)
   * Checkbox on the left side "devices". These are IPC 123, IPC 427, IPC 847, Unified Comfort panel

# 2. Setting up the environment

Here we setup the Virtualisation software for the IEM and for the IEVD (Industrial edge Virtual Device),

###### IEM

* Based on: [docs.eu1.edge.siemens.cloud Get Started Management](https://docs.eu1.edge.siemens.cloud/get_started_and_operate/industrial_edge_management/setup/setting_up_the_iem/setup_steps.html) and [support.industy.siemens.com IEM Operation](https://support.industry.siemens.com/cs/document/109814453/industrial-edge-management-operation-10-22)
* Virtualization Environment: VMWare Workstation, Oracle Virtualbox or VMWare ESXi
* OS-Version: Debian(64-bit)
* Disk size: Siemens recommends a maximum disk size of 500 GB, a minimum of 220 GB is mandatory.
  * For VMWare ESXi the datastore must have minimum 600 GB of free space for 2 virtual hard disks.
* Memory: For the memory amount allocated to the VM, choose a minimum of 16 GB.
* Processor: For the number of processors, choose minimum 2-4 processor cores for the VM.

###### IEVD - Industrial edge Virtual Device

* Based on: [support.industry.siemens.com Industrial Edge Virtual Device](https://support.industry.siemens.com/cs/document/109809569/industrial-edge-virtual-device?dti=0&lc=en-US)
* Processor: Minimum 1 virtual CPU core
* Memory: Minimum 4 GB RAM
* Disk size: Minimum 15 GB virtual disk
* Network: Minimum 1 virtual network adapters

# 3. Start-up

From this point you have setup the requirements for starting up.

###### IEH

Based on: [https://docs.eu1.edge.siemens.cloud Industrial Edge Hub](https://docs.eu1.edge.siemens.cloud/get_started_and_operate/industrial_edge_hub/setup/ieh_index.html) and [docs.eu1.edge.siemens.cloud Get Started Management](https://docs.eu1.edge.siemens.cloud/get_started_and_operate/industrial_edge_management/setup/setting_up_the_iem/setup_steps.html)

* Downloading the Industrial Management OS from IEH [link](https://docs.eu1.edge.siemens.cloud/get_started_and_operate/industrial_edge_management/setup/setting_up_the_iem/downloading_the_iem_os.html)
* Creating an IEM Instance and downloading the configuration file [link](https://docs.eu1.edge.siemens.cloud/get_started_and_operate/industrial_edge_management/setup/setting_up_the_iem/creating_an_iem_instance_and_downloading_the_configuration_file.html)

###### IEM

* Follow [https://docs.eu1.edge.siemens.cloud Industrial Edge Hub](https://docs.eu1.edge.siemens.cloud/get_started_and_operate/industrial_edge_hub/setup/ieh_index.html) or [support.industry.siemens.com Industrial Edge Management Gettin Started](https://support.industry.siemens.com/cs/document/109814452/industrial-edge-management-getting-started-10-22?dti=0&lc=en-US)

###### IED

* Follow Chapter 5 [support.industry.siemens.com Industrial Edge Management Gettin Started](https://support.industry.siemens.com/cs/document/109814452/industrial-edge-management-getting-started-10-22?dti=0&lc=en-US)
