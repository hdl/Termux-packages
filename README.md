<p align="center">
  <a title="hdl/packages GitHub repository" href="https://github.com/hdl/packages"><img src="https://img.shields.io/badge/hdl-packages-f2f1ef.svg?longCache=true&style=flat-square&logo=GitHub&logoColor=f2f1ef"></a><!--
  -->
  <a title="hdl/community on gitter.im" href="https://gitter.im/hdl/community"><img src="https://img.shields.io/gitter/room/hdl/community.svg?longCache=true&style=flat-square&logo=gitter&logoColor=fff&color=4db797"></a><!--
  -->
</p>

# Termux (Android) packages for EDA

This repository contains references to recipes for [electronic design automation (EDA)](https://en.wikipedia.org/wiki/Electronic_design_automation) tools/projects to be built on [Termux](https://termux.com/) (Android). The main purpose is coordination of contributions for eventually providing all tools/projects through some `apt` repository, and having them updated periodically.

## Usage

> ATTENTION: Latest releases of Termux are available through F-Droid. There are outdated versions available through Google Play, but using them is discouraged. See [termux/termux-app#1072@issuecomment-473965266](https://github.com/termux/termux-app/issues/1072#issuecomment-473965266).

See [wiki.termux.com](https://wiki.termux.com) for general guidelines about getting started with Termux, such as how to setup [Touch Keyboard](https://wiki.termux.com/wiki/Touch_Keyboard)s. Power users will prefer plugging a USB/Bluetooth keyboard, which works off the shelf.

Termux feels like a Debian environment with regard to installing/managing packages. However, a wrapper named `pkg` is provided for dealing with some details of Termux. As explained in [wiki.termux.com: Package Management > Using the package manager](https://wiki.termux.com/wiki/Package_Management), using `pkg` is recommended.

> NOTE: In the future, this repository might be listed in [wiki.termux.com: Development Environments](https://wiki.termux.com/wiki/Development_Environments).

### Scripts

Termux includes clang by default, instead of GCC. However, some tools do require GCC (e.g. GHDL needs GNAT). Fortunately, community member [@its-pointless](https://github.com/its-pointless) provides GCC, Octave, ScyPy and others. See [wiki.termux.com: Package Management > Community repositories](https://wiki.termux.com/wiki/Package_Management#Community_repositories) and [its-pointless/gcc_termux](https://github.com/its-pointless/gcc_termux).

- [base.sh](scripts/base.sh): setup its-pointless' repository and install dependencies for all tools.
- [ghdl.sh](scripts/ghdl.sh): build and install [GHDL](https://hdl.github.io/awesome/items/ghdl).
- [yosys.sh](scripts/yosys.sh): build and install [Yosys](https://hdl.github.io/awesome/items/yosys).
- [dfu-util.sh](scripts/dfu-util.sh): build and install [dfu-util](https://hdl.github.io/awesome/items/dfu-util).

> NOTE: These scripts are tested on aarch64 devices. Users of 32 bit platforms might need to change the version of GNAT from 10 to 8. See [wiki.termux.com: FAQ > Why Termux is 32 bit when my CPU is 64 bit](https://wiki.termux.com/wiki/FAQ#Why_Termux_is_32_bit_when_my_CPU_is_64_bit).

### Packages

Most EDA tools are not available as canonical Termux packages yet. Subdir [packages](packages) contains work in progress. The proposal is to first try building and installing tools manually through [scripts](scripts), and then convert them to proper packages.

> NOTE: In [github.com/termux](https://github.com/termux), apart from [termux/termux-packages](https://github.com/termux/termux-packages) and [termux/unstable-packages](https://github.com/termux/unstable-packages), there are other package groups, such as [termux/game-packages](https://github.com/termux/game-packages). It might be interesting to handle this repo as *termux/eda-packages*.

### USB

Using USB devices from Termux is not straightforward due to permission constraints. However, mice, keyboards and tools based on libusb are expected to work.

- [wiki.termux.com: OTG](https://wiki.termux.com/wiki/OTG)
- [wiki.termux.com: Termux-usb](https://wiki.termux.com/wiki/Termux-usb)
  - "*Failing libusb_init example*" ([termux/termux-app#1928](https://github.com/termux/termux-app/issues/1928))
- [Querela/termux-usb-python](https://github.com/Querela/termux-usb-python)
  - [pyusb/pyusb#287](https://github.com/pyusb/pyusb/pull/287)
- "*Package request: openocd*" ([termux/termux-packages#4978](https://github.com/termux/termux-packages/issues/4978))
- [mik3y/usb-serial-for-android](https://github.com/mik3y/usb-serial-for-android)
- [danpeig/Johnny-Five-Android-Termux](https://github.com/danpeig/Johnny-Five-Android-Termux)

## Continuous Integration

Unlike other repositories in the ecosystem, testing these recipes in Continuous Integration (CI) services is non-trivial, since running non-interactive Android containers/VMs is not straightforward. Should you be aware of any ready-to-use solution, please let us know!

- [termux/termux-docker](https://github.com/termux/termux-docker)
- [dbhi/qus](https://github.com/dbhi/qus)
- [anbox.io](https://anbox.io)
