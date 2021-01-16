<p align="center">
  <a title="hdl/packages GitHub repository" href="https://github.com/hdl/packages"><img src="https://img.shields.io/badge/hdl-packages-f2f1ef.svg?longCache=true&style=flat-square&logo=GitHub&logoColor=f2f1ef"></a><!--
  -->
  <a title="hdl/community on gitter.im" href="https://gitter.im/hdl/community"><img src="https://img.shields.io/gitter/room/hdl/community.svg?longCache=true&style=flat-square&logo=gitter&logoColor=fff&color=4db797"></a><!--
  -->
</p>

# Termux (Android) packages for EDA

This repository contains references to recipes for [electronic design automation (EDA)](https://en.wikipedia.org/wiki/Electronic_design_automation) tools/projects to be built on [Termux](https://termux.com/) (Android). The main purpose is coordination of contributions for eventually providing all tools/projects through some `apt` repository, and having them updated periodically.

In [github.com/termux](https://github.com/termux), apart from [termux/termux-packages](https://github.com/termux/termux-packages) and [termux/unstable-packages](https://github.com/termux/unstable-packages), there are other package groups, such as [termux/game-packages](https://github.com/termux/game-packages). It might be interesting to handle this repo as *termux/eda-packages*.

Unlike other repositories in the ecosystem, testing these recipes in Continuous Integration (CI) services is non-trivial, since running non-interactive Android containers/VMs is not straightforward. Should you be aware of any ready-to-use solution, please let us know!

References:

- [termux/termux-docker](https://github.com/termux/termux-docker)
- [its-pointless/gcc_termux](https://github.com/its-pointless/gcc_termux)
