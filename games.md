# Gamescope 

gamescope has issue where it starts to stutter after 24 minutes.
[arch-wiki](https://wiki.archlinux.org/title/Gamescope)
[GitHub issue](https://github.com/ValveSoftware/gamescope/issues/163)

## steam

```bash
gamescope -W 2560 -H 1440 -r 180 --adaptive-sync --mangoapp -- %command%

```

## keybind

Super + F full screen

# Prime offload

```bash
__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only
```


# Steam

## with gamescope

```bash
__NV_PRIME_RENDER_OFFLOAD=1 
__GLX_VENDOR_LIBRARY_NAME=nvidia 
__VK_LAYER_NV_optimus=NVIDIA_only 
PROTON_ENABLE_NVAPI=1
gamemoderun gamescope -W 2560 -H 1440 -f -F nis --adaptive-sync --mangoapp -- %command%
```

## without gamescope

```bash
__NV_PRIME_RENDER_OFFLOAD=1
__GLX_VENDOR_LIBRARY_NAME=nvidia
__VK_LAYER_NV_optimus=NVIDIA_only
PROTON_ENABLE_NVAPI=1
PROTON_ENABLE_WAYLAND=1
MANGOHUD=1
gamemoderun
%command%
```

## with dlss and gamescope

`LD_PRELOAD=""` needs to be set to stop it from stuttering after 25 min

```bash
__NV_PRIME_RENDER_OFFLOAD=1
__GLX_VENDOR_LIBRARY_NAME=nvidia
__VK_LAYER_NV_optimus=NVIDIA_only
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.x86_64.json
PROTON_ENABLE_NVAPI=1
PROTON_DLSS_UPGRADE=1
LD_PRELOAD=""
gamemoderun gamescope -W 2560 -H 1440 -f --adaptive-sync --mangoapp -- %command%
```

alternative

```bash
LD_PRELOAD=""
PROTON_ENABLE_NVAPI=1
PROTON_DLSS_UPGRADE=1
gamemoderun gamescope -W 2560 -H 1440 -f -r 180 --adaptive-sync --mangoapp -- %command%
```

## just wayland

```bash
PROTON_ENABLE_NVAPI=1
PROTON_DLSS_UPGRADE=1
PROTON_ENABLE_WAYLAND=1
MANGOHUD=1
%command%
```

`WAYLANDDRV_PRIMARY_MONITOR=DP-1`
