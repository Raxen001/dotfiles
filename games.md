# Gamescope 

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
