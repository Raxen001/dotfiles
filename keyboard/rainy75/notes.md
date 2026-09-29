# firmware location

- [wobkey](https://wiki.wobkey.com/en/Products/Rainy-75/Driver-Firmware)

## troubleshoot

Sometimes chromium can't write to keyboard
```bash
# make keyboward writable using hidraw3
sudo chmod a+rw /dev/hidraw3
```
