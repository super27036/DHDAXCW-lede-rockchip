# Copyright (c) 2015 OpenWrt.org
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=mediatek
BOARDNAME:=MediaTek Ralink ARM
SUBTARGETS:=mt7622 mt7623 mt7629 filogic
FEATURES:=dt-overlay emmc fpu gpio nand pci pcie rootfs-part separate_ramdisk squashfs usb

KERNEL_PATCHVER:=6.6

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += \
	kmod-leds-gpio kmod-gpio-button-hotplug uboot-envtools partx-utils resize2fs e2fsprogs mkf2fs kmod-gpio-button-hotplug \
	kmod-usb-dwc2 kmod-usb3 kmod-usb-dwc3 automount autocore-arm autosamba fdisk luci-app-cpufreq cfdisk e2fsprogs ethtool \
	haveged htop luci-app-diskman kmod-usb2-pci usb-modeswitch usbutils luci-app-zerotier luci-app-ttyd usb-modeswitch pciutils \
$(eval $(call BuildTarget))
