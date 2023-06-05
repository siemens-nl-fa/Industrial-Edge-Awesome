# Getting Started with Industrial Edge

First Steps for setting up.

![](assets/20230605_144809_image.png)

###### Components:

1. IEH - Industrial Edge HUB
   Siemens Hosted Cloud environment for downloading bought apps.
2. IEM - Industrial Edge Management
   Worldwide or plantbased setup to manage all the IED (Industrial Edge Devices)
3. IED - Industrial Edge Device
   Device where the Apps are
4. IEAP - Industrial Edge App Publisher
   Software where your own made apps can be uploaded to the IEM.


# Contents

1. Get Software and Hardware
2. Setting up the environment
   * Management
   * IEVD


# 1. Software and Hardware


### Software

To get started there are two things you need to buy

1. [IEH Access](https://www.dex.siemens.com/edge/manufacturing-process-industries/industrial-edge-access)
2. [IEM Device License](https://www.dex.siemens.com/edge/manufacturing-process-industries/industrial-edge-device-license)

Siemens will create a Hub domain for you and from there on you can setup your management.

### Hardware

Next to that you need an edge device which can be one the following:

1. [Industrial edge Device IPC 227e]([https://www.dex.siemens.com/edge/manufacturing-process-industries/simatic-ipc227e-industrial-edge-device)
   This is the default edge device acceptable for most use-cases.
2. [Industrial Edge Virtual Device](https://www.dex.siemens.com/edge/manufacturing-process-industries/industrial-edge-virtual-device?cartId=584ee2f4-7d4a-475b-96ac-cfaa21ba2604&cclcl=nl_NL)
   This is Virtual edge devices supported for VMWARE Esxi server. can also run on vmware workstation or Oracle Virtualbox, but is not supported
3. [Other Devices](https://www.dex.siemens.com/edge/manufacturing-process-industries)
   Checkbox on the left side "devices". These are IPC 123, IPC 427, IPC 847, Unified Comfort panel


# 2. Setting up the environment

Here we setup the Virtualisation software for the IEM and for the IEVD (Industrial edge Virtual Device)
