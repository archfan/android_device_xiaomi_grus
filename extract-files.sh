#!/bin/bash
#
# Copyright (C) 2018-2019 The LineageOS Project
# Copyright (C) 2018-2019 0x61
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

# Required!
export DEVICE=grus
export DEVICE_COMMON=sdm710-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2019

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
