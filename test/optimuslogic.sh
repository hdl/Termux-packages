#!/data/data/com.termux/files/usr/bin/sh

# Authors:
#   Unai Martinez-Corral
#
# Copyright 2021 The HDL org Authors.
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

cd $(dirname "$0")/..

echo '::group::Init'
./init.sh
echo '::endgroup::'

echo '::group::Update'
pkg update
yes | pkg upgrade
echo '::endgroup::'

echo '::group::Install git'
pkg install -y git
echo '::endgroup::'

echo '::group::Clone pygmy-dev'
mkdir -p pygmy-dev
cd pygmy-dev

if [ ! -d .git ]; then
  git clone --depth=1 https://github.com/optimuslogic/pygmy-dev ./
  git fetch --unshallow
fi
echo '::endgroup::'

sh tools/tools-setup.txt
