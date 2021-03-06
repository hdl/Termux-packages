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

if [ ! -d dfu-util ]; then
  mkdir -p dfu-util
  curl -fsSL "https://downloads.sourceforge.net/project/dfu-util/dfu-util-0.10.tar.gz" | tar xzf - --strip-components=1 -C dfu-util
fi

cd dfu-util

./configure --prefix="$PREFIX"
make install
