#!/data/data/com.termux/files/usr/bin/sh

# Authors:
#   Unai Martinez-Corral
#
# Copyright 2020-2021 The HDL org Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

set -e

cd $(dirname "$0")

mkdir -p yosys
cd yosys

if [ ! -d .git ]; then
  git clone https://github.com/YosysHQ/yosys ./
  git clone github.com/ghdl/ghdl-yosys-plugin ./frontends/ghdl
fi

CXX=clang++
export CFLAGS="-DS_IWRITE=S_IWUSR -DS_IREAD=S_IRUSR"
export LDFLAGS="-lstdc++ -landroid-glob -landroid-spawn"
make config-clang

echo "ENABLE_GHDL=1" >> Makefile.conf
echo "GHDL_PREFIX=$PREFIX" >> Makefile.conf

make -j4 install PREFIX="$PREFIX"
