
# Keytar

</br>

## Files and Directories


### **Keytar/**
* **Documentation/**
    * PDFs that are useful for development
    * **Zynq-7000-Overview.pdf**
    * **ug585-Zynq-7000-TRM.pdf**
        * Technical Reference Manual
    * **DDI0406C_C_arm_architecture_reference_manual.pdf**
    * **ug821-zynq-7000-swdev.pdf**
        * Software Developer's Guide
    * **Z-turn Board Product User Manual.pdf**
    * **z-turn board_v5_20181201.pdf**
        * ZTurn Board Schematic
    * **xapp1079-amp-bare-metal-cortex-a9.pdf**
        * Source: https://www.xilinx.com/support/documentation/application_notes/xapp1079-amp-bare-metal-cortex-a9.pdf
* **Models/**
* **VivadoKeytar/**
    * **VivadoKeytar.srcs/sources_1**
        * **/bd/system/hdl/system_wrapper.v**
            * Auto generated wrapper file of the hardware top level.
        * **Synth/**
            * Folderthat contains all the real synth design code
    * **VivadoKeytar.srcs/constrs_1/new/pinconnections.xdc**
        * Contstraints file
        * Package pin connections to internal signals
* **VitisWorkspace/**
    * **SynthController/**
        * Project for Synth Controller software
        * **src/**
            * Source folder for controller software
    * **Synth_system/**
        * Project for the Entire processor system
        * **Debug/sd_card/**
            * Output SD Card image folder
    * **ZTurnPlatform/**
        * Hardware platform for the processor. 
        * References .xsa exported from Vivado
        * **export/ZTurnPlatform/sw/ZTurnPlatform/standalone_domain/bspinclude/include/**
            * Include directory for the BSPs
* **<span>LaunchSerial.sh</span>**
    * Launch the serial terminal with correct settings

</br>

## Documentation

### Installation

Download the unified installer from this site:
https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html

Then the installer allows you to select which software you want to install.

For installing Vivado on Arch Linux, refer to this guide:
https://bbs.archlinux.org/viewtopic.php?pid=1910277#p1910277

</br>

### Dual Core bare metal system

Refer to **xapp1079-amp-bare-metal-cortex-a9.pdf**

Refer to **ug585-Zynq-7000-TRM.pdf**
* **6.1.10: Starting Code on CPU 1** (page 158)

</br>

### Pins

Package Pin | Function | Notes
------------|----------|------
||
R14 | RGB-R | Pull Down Configuration (Low-->On, High-->Off)
Y16 | RGB-G | Pull Down Configuration (Low-->On, High-->Off)
Y17 | RGB-B | Pull Down Configuration (Low-->On, High-->Off)
||
P18 | Buzzer |  
||

</br>

### CPU Address Map

Address Range | Mapping
--------------|--------
0x0004_0000 --> 0x3FFF_FFFF | DRAM
0x4000_0000 --> 0x7FFF_FFFF | General Purpose Port 0 to the PL </br> M_AXI_GP0
0x8000_0000 --> 0xBFFF_FFFF | General Purpose Port 1 to the PL </br> M_AXI_GP1
0xE000_0000 --> 0xE02F_FFFF | I/O Peripheral Registers
0xE100_0000 --> 0xE5FF_FFFF | SMC Memories
0xF800_0000 --> 0xF800_0BFF | SLCR Registers
0xF800_1000 --> 0xF880_FFFF | PS Registers
0xF890_0000 --> 0xF8F0_2FFF | CPU Private Registers
0xFC00_0000 --> 0xFDFF_FFFF | Quad-SPI address
0xFFFC_0000 --> 0xFFFF_FFFF | OCM (When Mapped High)

</br>

### Memory Mapping
Address Range | Mapping
--------------|--------
0x0100_0000 --> 0x01FF_FFFF | CPU0 RAM
0x0200_0000 --> 0x02FF_FFFF | CPU1 RAM
0x0300_0000 --> 0x03FF_FFFF | Shared Memory
0x0400_0000 --> 0x04FF_FFFF | Video RAM
0x4000_0000 --> 0x7FFF_FFFF | AXI->APB bridge for Synth Module
0x8000_0000 --> 0xBFFF_FFFF | AXI Unused
0xFFFC_0000 --> 0xFFFF_FFFF | Shared OCM Memory


