# MultiVendor patch for S21 Serie

To check your bootloader version simply run the following command in Termux or ADB shell:
```
getprop ro.boot.bootloader

```
This "patch" makes possible to support booting on multiple bootloader versions (so multiple variants) by shipping different files which are dynamically mounted at boot time.

In the rare case you found a way to unlock One UI 8 bootloader (using an exploit or a EM Token) running One UI you can, of course, request adding support for that bootloader version using the appropriate Issue template. 

### License
All files of this project are currently under GPLv3 license, this excludes all the prebuilt files located in vendor/tee_* directories.

You can use this project but you must make sure you give credits to me and the other prople who made this possible.

### Credits
- [@salvogiangri](https://github.com/salvogiangri)
- [@jesec](https://github.com/jesec) and [@corsicanu](https://github.com/corsicanu) for the original GitHub Actions script
