termux-usb -l

#termux-usb -r /dev/bus/usb/...

gcc usbtest.c -lusb-1.0 -o usbtest
gcc usbinit.c -lusb-1.0 -o usbinit
gcc test-info.c -lusb-1.0 -o test-info

#termux-usb -e ./usbtest /dev/bus/usb/...
