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

cd $(dirname "$0")/..

curl -fsSL https://its-pointless.github.io/setup-pointless-repo.sh | bash -
pkg install gnat-10 llvm clang make
setupgcc-10
setup-patchforgcc

mkdir -p build-termux
cd build-termux
CXX=clang++
../configure --default-pic --enable-synth --with-llvm-config=llvm-config --prefix="$PREFIX"
make
make install
