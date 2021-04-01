#include <stdio.h>
#include <assert.h>
#include <libusb-1.0/libusb.h>

int main(int argc, char **argv) {
  const struct libusb_version* version = libusb_get_version();
  printf("Using libusb v%d.%d.%d.%d\n\n", version->major, version->minor, version->micro, version->nano);

  libusb_set_option(NULL, LIBUSB_OPTION_WEAK_AUTHORITY); // MUST be called before init

  libusb_context *context = NULL;
  int r;
  r = libusb_init(&context);
  printf("libusb_init: %d", r);
  assert(!r);

  libusb_exit(context);
}
