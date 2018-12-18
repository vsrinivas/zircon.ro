# Copyright 2018 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := driver

MODULE_SRCS += \
    $(LOCAL_DIR)/bind.c \
    $(LOCAL_DIR)/mt8167-i2c.cpp \

MODULE_STATIC_LIBS := \
    system/ulib/ddk \
    system/ulib/ddktl \
    system/ulib/fbl \
    system/ulib/hwreg \
    system/ulib/sync \
    system/ulib/zx \
    system/ulib/zxcpp \

MODULE_LIBS := \
    system/ulib/driver \
    system/ulib/c \
    system/ulib/zircon \

MODULE_HEADER_DEPS := system/dev/lib/mt8167

MODULE_BANJO_LIBS := \
    system/banjo/ddk-protocol-i2c \
    system/banjo/ddk-protocol-i2cimpl \
    system/banjo/ddk-protocol-platform-device \
    system/banjo/ddk-protocol-platform-bus \

include make/module.mk
