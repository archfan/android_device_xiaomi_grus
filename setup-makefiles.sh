#!/bin/bash
#
# Copyright (C) 2018-2019 The LineageOS Project
# Copyright (C) 2018-2019 0x61
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=grus
export DEVICE_COMMON=sdm710-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2019

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
