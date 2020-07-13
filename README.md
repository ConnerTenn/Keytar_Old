# Keytar

## Files and Directories
```
Keytar/
|
+- Models/
|
+- VivadoKeytar/
|
+- VitisWorkspace/
|  |
|  +- SynthController/
|  |  : Project for Synth Controller software
|  |  |
|  |  +- src/
|  |     : Source folder for controller software
|  |
|  +- SynthController_system/
|  |  : Project for the Entire processor system
|  |  |
|  |  +- SynthController_system/Debug/sd_card
|  |     : Output SD Card image folder
|  |
|  +- ZTurnPlatform/
|     : Hardware platform for the processor. 
|     : References .xsa exported from Vivado
|     |
|     +- export/ZTurnPlatform/sw/ZTurnPlatform/standalone_domain/bspinclude/include/
|         : Include directory for the BSP
|
+- LaunchSerial.sh
   : Launch the serial terminal with correct settings

```



