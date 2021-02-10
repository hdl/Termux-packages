#include <stdio.h>
#include <assert.h>
#include <libusb-1.0/libusb.h>

int main(int argc, char **argv) {
  libusb_context *context;
  assert(!libusb_init(&context));
  libusb_exit(context);
}
