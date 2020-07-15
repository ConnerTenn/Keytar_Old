
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
    * **VivadoKeytar.srcs/sources_1/bd/system/hdl/system_wrapper.v**
        * Auto generated wrapper file for the processor.
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

Package Pin | Function
------------|---------
R14 | RGB-R
Y16 | RGB-G
Y17 | RGB-B




