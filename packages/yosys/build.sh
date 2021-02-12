TERMUX_PKG_HOMEPAGE=http://www.clifford.at/yosys/
TERMUX_PKG_DESCRIPTION="Yosys Open SYnthesis Suite "
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_MAINTAINER="@hdl"
TERMUX_PKG_VERSION=0.9.0.r.g73d6119
TERMUX_PKG_SRCURL=https://github.com/YosysHQ/yosys/archive/73d6119.tar.gz
TERMUX_PKG_SHA256=2af3043fdf46f36e9a6c2312f596505d264b199c8e23f2f0564c94a48a16e6e1
TERMUX_PKG_DEPENDS="bison, clang, flex, make"
TERMUX_PKG_CONFLICTS=""
TERMUX_PKG_BREAKS=""
TERMUX_PKG_REPLACES=""

termux_step_make() {
  cd $TERMUX_PKG_SRCDIR
  CXX=clang++
  export CFLAGS="-DS_IWRITE=S_IWUSR -DS_IREAD=S_IRUSR"
  export LDFLAGS="-lstdc++ -landroid-glob -landroid-spawn"
  make config-clang
  make -j4 install PREFIX="$PREFIX"
}
