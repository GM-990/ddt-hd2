# hd51
ifeq ($(BOXTYPE), hd51)
KERNEL_VER             = 4.10.12
KERNEL_DATE            = 20180424
KERNEL_SRC             = linux-$(KERNEL_VER)-arm.tar.gz
KERNEL_URL             = http://source.mynonpublic.com/gfutures
KERNEL_CONFIG          = hd51_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux-$(KERNEL_VER)
KERNEL_DTB_VER         = bcm7445-bcm97445svmb.dtb
KERNELNAME             = zImage

KERNEL_PATCHES_ARM     = \
		arm/hd51/TBS-fixes-for-4.10-kernel.patch \
		arm/hd51/0001-Support-TBS-USB-drivers-for-4.6-kernel.patch \
		arm/hd51/0001-TBS-fixes-for-4.6-kernel.patch \
		arm/hd51/0001-STV-Add-PLS-support.patch \
		arm/hd51/0001-STV-Add-SNR-Signal-report-parameters.patch \
		arm/hd51/blindscan2.patch \
		arm/hd51/0001-stv090x-optimized-TS-sync-control.patch \
		arm/hd51/reserve_dvb_adapter_0.patch \
		arm/hd51/blacklist_mmc0.patch \
		arm/hd51/export_pmpoweroffprepare.patch
endif

# hd60
ifeq ($(BOXTYPE), hd60)
KERNEL_VER             = 4.4.35
KERNEL_DATE            = 20180301
KERNEL_SRC             = linux-$(KERNEL_VER)-$(KERNEL_DATE)-arm.tar.gz
KERNEL_URL             = http://source.mynonpublic.com/gfutures
KERNEL_CONFIG          = hd60_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux-$(KERNEL_VER)
KERNEL_DTB_VER         = hi3798mv200.dtb
KERNELNAME             = uImage

KERNEL_PATCHES_ARM     = \
		arm/hd60/0002-log2-give-up-on-gcc-constant-optimizations.patch \
		arm/hd60/0003-dont-mark-register-as-const.patch \
		arm/hd60/0001-remote.patch \
		arm/hd60/HauppaugeWinTV-dualHD.patch \
		arm/hd60/dib7000-linux_4.4.179.patch \
		arm/hd60/dvb-usb-linux_4.4.179.patch \
		arm/hd60/wifi-linux_4.4.183.patch \
		arm/hd60/move-default-dialect-to-SMB3.patch \
		arm/hd60/0004-linux-fix-buffer-size-warning-error.patch \
		arm/hd60/modules_mark__inittest__exittest_as__maybe_unused.patch \
		arm/hd60/includelinuxmodule_h_copy__init__exit_attrs_to_initcleanup_module.patch \
		arm/hd60/Backport_minimal_compiler_attributes_h_to_support_GCC_9.patch \
		arm/hd60/0005-xbox-one-tuner-4.4.patch \
		arm/hd60/0006-dvb-media-tda18250-support-for-new-silicon-tuner.patch \
		arm/hd60/0007-dvb-mn88472-staging.patch \
		arm/hd60/mn88472_reset_stream_ID_reg_if_no_PLP_given.patch
endif

# vusolo4k
ifeq ($(BOXTYPE), vusolo4k)
KERNEL_VER             = 3.14.28-1.8
KERNEL_SRC_VER         = 3.14-1.8
KERNEL_SRC             = stblinux-${KERNEL_SRC_VER}.tar.bz2
KERNEL_URL             = http://archive.vuplus.com/download/kernel
KERNEL_CONFIG          = vusolo4k_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux
KERNELNAME             = zImage

KERNEL_PATCHES_ARM     = \
		arm/vusolo4k/bcm_genet_disable_warn.patch \
		arm/vusolo4k/linux_dvb-core.patch \
		arm/vusolo4k/rt2800usb_fix_warn_tx_status_timeout_to_dbg.patch \
		arm/vusolo4k/usb_core_hub_msleep.patch \
		arm/vusolo4k/rtl8712_fix_build_error.patch \
		arm/vusolo4k/0001-Support-TBS-USB-drivers.patch \
		arm/vusolo4k/0001-STV-Add-PLS-support.patch \
		arm/vusolo4k/0001-STV-Add-SNR-Signal-report-parameters.patch \
		arm/vusolo4k/0001-stv090x-optimized-TS-sync-control.patch \
		arm/vusolo4k/linux_dvb_adapter.patch \
		arm/vusolo4k/kernel-gcc6.patch \
		arm/vusolo4k/genksyms_fix_typeof_handling.patch \
		arm/vusolo4k/0001-tuners-tda18273-silicon-tuner-driver.patch \
		arm/vusolo4k/01-10-si2157-Silicon-Labs-Si2157-silicon-tuner-driver.patch \
		arm/vusolo4k/02-10-si2168-Silicon-Labs-Si2168-DVB-T-T2-C-demod-driver.patch \
		arm/vusolo4k/0003-cxusb-Geniatech-T230-support.patch \
		arm/vusolo4k/CONFIG_DVB_SP2.patch \
		arm/vusolo4k/dvbsky.patch \
		arm/vusolo4k/rtl2832u-2.patch
endif

# osmio4k | osmio4kplus | osmini4k
ifeq ($(BOXTYPE), $(filter $(BOXTYPE), osmio4k osmio4kplus osmini4k))
KERNEL_VER             = 5.9.0
KERNEL_SRC_VER         = 5.9
KERNEL_SRC             = linux-edision-$(KERNEL_SRC_VER).tar.gz
KERNEL_URL             = http://source.mynonpublic.com/edision
KERNEL_CONFIG          = $(BOXTYPE)_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux-brcmstb-$(KERNEL_SRC_VER)
KERNELNAME             = zImage

KERNEL_PATCHES_ARM     = \
		arm/osmio4k/0001-scripts-Use-fixed-input-and-output-files-instead-of-.patch \
		arm/osmio4k/0002-kbuild-install_headers.sh-Strip-_UAPI-from-if-define.patch
endif

# bre2ze4k
ifeq ($(BOXTYPE), bre2ze4k)
KERNEL_VER             = 4.10.12
KERNEL_DATE            = 20180424
KERNEL_SRC             = linux-$(KERNEL_VER)-arm.tar.gz
KERNEL_URL             = http://source.mynonpublic.com/gfutures
KERNEL_CONFIG          = $(BOXTYPE)_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux-$(KERNEL_VER)
KERNEL_DTB_VER         = bcm7445-bcm97445svmb.dtb
KERNELNAME             = zImage

KERNEL_PATCHES_ARM     = \
		arm/bre2ze4k/TBS-fixes-for-4.10-kernel.patch \
		arm/bre2ze4k/0001-Support-TBS-USB-drivers-for-4.6-kernel.patch \
		arm/bre2ze4k/0001-TBS-fixes-for-4.6-kernel.patch \
		arm/bre2ze4k/0001-STV-Add-PLS-support.patch \
		arm/bre2ze4k/0001-STV-Add-SNR-Signal-report-parameters.patch \
		arm/bre2ze4k/blindscan2.patch \
		arm/bre2ze4k/0001-stv090x-optimized-TS-sync-control.patch \
		arm/bre2ze4k/reserve_dvb_adapter_0.patch \
		arm/bre2ze4k/blacklist_mmc0.patch \
		arm/bre2ze4k/export_pmpoweroffprepare.patch \
		arm/bre2ze4k/t230c2.patch \
		arm/bre2ze4k/add-more-devices-rtl8xxxu.patch \
		arm/bre2ze4k/dvbs2x.patch
endif

# h7
ifeq ($(BOXTYPE), h7)
KERNEL_VER             = 4.10.12
KERNEL_DATE            = 20180424
KERNEL_SRC             = linux-$(KERNEL_VER)-arm.tar.gz
KERNEL_URL             = http://source.mynonpublic.com/gfutures
KERNEL_CONFIG          = $(BOXTYPE)_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux-$(KERNEL_VER)
KERNEL_DTB_VER         = bcm7445-bcm97445svmb.dtb
KERNELNAME             = zImage

KERNEL_PATCHES_ARM = \
		arm/h7/TBS-fixes-for-4.10-kernel.patch \
		arm/h7/0001-Support-TBS-USB-drivers-for-4.6-kernel.patch \
		arm/h7/0001-TBS-fixes-for-4.6-kernel.patch \
		arm/h7/0001-STV-Add-PLS-support.patch \
		arm/h7/0001-STV-Add-SNR-Signal-report-parameters.patch \
		arm/h7/blindscan2.patch \
		arm/h7/0001-stv090x-optimized-TS-sync-control.patch \
		arm/h7/reserve_dvb_adapter_0.patch \
		arm/h7/blacklist_mmc0.patch \
		arm/h7/export_pmpoweroffprepare.patch \
		arm/h7/t230c2.patch \
		arm/h7/add-more-devices-rtl8xxxu.patch \
		arm/h7/dvbs2x.patch
endif

# hd61
ifeq ($(BOXTYPE), hd61)
KERNEL_VER             = 4.4.35
KERNEL_DATE            = 20181228
KERNEL_SRC             = linux-$(KERNEL_VER)-$(KERNEL_DATE)-arm.tar.gz
KERNEL_URL             = http://source.mynonpublic.com/gfutures
KERNEL_CONFIG          = $(BOXTYPE)_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux-$(KERNEL_VER)
KERNEL_DTB_VER         = hi3798mv200.dtb
KERNELNAME             = uImage

KERNEL_PATCHES_ARM = \
		arm/hd61/0002-log2-give-up-on-gcc-constant-optimizations.patch \
		arm/hd61/0003-dont-mark-register-as-const.patch \
		arm/hd61/0001-remote.patch \
		arm/hd61/HauppaugeWinTV-dualHD.patch \
		arm/hd61/dib7000-linux_4.4.179.patch \
		arm/hd61/dvb-usb-linux_4.4.179.patch \
		arm/hd61/wifi-linux_4.4.183.patch \
		arm/hd61/move-default-dialect-to-SMB3.patch \
		arm/hd61/0004-linux-fix-buffer-size-warning-error.patch \
		arm/hd61/modules_mark__inittest__exittest_as__maybe_unused.patch \
		arm/hd61/includelinuxmodule_h_copy__init__exit_attrs_to_initcleanup_module.patch \
		arm/hd61/Backport_minimal_compiler_attributes_h_to_support_GCC_9.patch \
		arm/hd61/0005-xbox-one-tuner-4.4.patch \
		arm/hd61/0006-dvb-media-tda18250-support-for-new-silicon-tuner.patch \
		arm/hd61/0007-dvb-mn88472-staging.patch \
		arm/hd61/mn88472_reset_stream_ID_reg_if_no_PLP_given.patch
endif

#
# kernel
#
DEPMOD = $(HOST_DIR)/bin/depmod
KERNEL_PATCHES = $(KERNEL_PATCHES_ARM)

$(ARCHIVE)/$(KERNEL_SRC):
	$(WGET) $(KERNEL_URL)/$(KERNEL_SRC)

$(D)/kernel.do_prepare: $(ARCHIVE)/$(KERNEL_SRC) $(PATCHES)/$(BOXARCH)/$(KERNEL_CONFIG)
	$(START_BUILD)
	rm -rf $(KERNEL_DIR)
	$(UNTAR)/$(KERNEL_SRC)
	set -e; cd $(KERNEL_DIR); \
		for i in $(KERNEL_PATCHES); do \
			echo -e "==> $(TERM_RED)Applying Patch:$(TERM_NORMAL) $$i"; \
			$(PATCH)/$$i; \
		done
	install -m 644 $(PATCHES)/$(BOXARCH)/$(KERNEL_CONFIG) $(KERNEL_DIR)/.config
ifeq ($(OPTIMIZATIONS), $(filter $(OPTIMIZATIONS), kerneldebug debug))
	@echo "Using kernel debug"
	@grep -v "CONFIG_PRINTK" "$(KERNEL_DIR)/.config" > $(KERNEL_DIR)/.config.tmp
	cp $(KERNEL_DIR)/.config.tmp $(KERNEL_DIR)/.config
	@echo "CONFIG_PRINTK=y" >> $(KERNEL_DIR)/.config
	@echo "CONFIG_PRINTK_TIME=y" >> $(KERNEL_DIR)/.config
endif
	@touch $@

$(D)/kernel.do_compile: $(D)/kernel.do_prepare
ifeq ($(BOXTYPE), hd51)
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $(KERNEL_DTB_VER) $(KERNELNAME) modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@
endif
ifeq ($(BOXTYPE), hd60)
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $(KERNEL_DTB_VER) $(KERNELNAME) modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@
endif
ifeq ($(BOXTYPE), vusolo4k)
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $(KERNELNAME) modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@
endif
ifeq ($(BOXTYPE), $(filter $(BOXTYPE), osmio4k osmio4kplus osmini4k))
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $(KERNELNAME) modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@
endif
ifeq ($(BOXTYPE), bre2ze4k)
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $(KERNEL_DTB_VER) zImage modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@
endif
ifeq ($(BOXTYPE), h7)
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $(KERNEL_DTB_VER) zImage modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@
endif
ifeq ($(BOXTYPE), hd61)
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $(KERNEL_DTB_VER) $(KERNELNAME) modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@
endif

KERNEL = $(D)/kernel
$(D)/kernel: $(D)/bootstrap $(D)/kernel.do_compile
ifeq ($(BOXTYPE), hd51)
	install -m 644 $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(BOOT_DIR)/vmlinux.ub
	install -m 644 $(KERNEL_DIR)/vmlinux $(TARGET_DIR)/boot/vmlinux-arm-$(KERNEL_VER)
	install -m 644 $(KERNEL_DIR)/System.map $(TARGET_DIR)/boot/System.map-arm-$(KERNEL_VER)
	cp $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(TARGET_DIR)/boot/
	cat $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(KERNEL_DIR)/arch/arm/boot/dts/$(KERNEL_DTB_VER) > $(TARGET_DIR)/boot/zImage.dtb
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)
endif
ifeq ($(BOXTYPE), hd60)
	install -m 644 $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(BOOT_DIR)/vmlinux.ub
	install -m 644 $(KERNEL_DIR)/vmlinux $(TARGET_DIR)/boot/vmlinux-arm-$(KERNEL_VER)
	install -m 644 $(KERNEL_DIR)/System.map $(TARGET_DIR)/boot/System.map-arm-$(KERNEL_VER)
	cp $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(TARGET_DIR)/boot/
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)
endif
ifeq ($(BOXTYPE), vusolo4k)
	install -m 644 $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(BOOT_DIR)/vmlinux
	install -m 644 $(KERNEL_DIR)/vmlinux $(TARGET_DIR)/boot/vmlinux-arm-$(KERNEL_VER)
	install -m 644 $(KERNEL_DIR)/System.map $(TARGET_DIR)/boot/System.map-arm-$(KERNEL_VER)
	cp $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(TARGET_DIR)/boot/
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)
endif
ifeq ($(BOXTYPE), $(filter $(BOXTYPE), osmio4k osmio4kplus osmini4k))
	install -m 644 $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(BOOT_DIR)/vmlinux
	install -m 644 $(KERNEL_DIR)/vmlinux $(TARGET_DIR)/boot/vmlinux-arm-$(KERNEL_VER)
	install -m 644 $(KERNEL_DIR)/System.map $(TARGET_DIR)/boot/System.map-arm-$(KERNEL_VER)
	cp $(KERNEL_DIR)/arch/arm/boot/$(KERNELNAME) $(TARGET_DIR)/boot/
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)
endif
ifeq ($(BOXTYPE), bre2ze4k)
	install -m 644 $(KERNEL_DIR)/vmlinux $(TARGET_DIR)/boot/vmlinux-arm-$(KERNEL_VER)
	install -m 644 $(KERNEL_DIR)/System.map $(TARGET_DIR)/boot/System.map-arm-$(KERNEL_VER)
	cp $(KERNEL_DIR)/arch/arm/boot/zImage $(TARGET_DIR)/boot/
	cat $(KERNEL_DIR)/arch/arm/boot/zImage $(KERNEL_DIR)/arch/arm/boot/dts/$(KERNEL_DTB_VER) > $(TARGET_DIR)/boot/zImage.dtb
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)
endif
ifeq ($(BOXTYPE), h7)
	install -m 644 $(KERNEL_DIR)/vmlinux $(TARGET_DIR)/boot/vmlinux-arm-$(KERNEL_VER)
	install -m 644 $(KERNEL_DIR)/System.map $(TARGET_DIR)/boot/System.map-arm-$(KERNEL_VER)
	cp $(KERNEL_DIR)/arch/arm/boot/zImage $(TARGET_DIR)/boot/
	cat $(KERNEL_DIR)/arch/arm/boot/zImage $(KERNEL_DIR)/arch/arm/boot/dts/$(KERNEL_DTB_VER) > $(TARGET_DIR)/boot/zImage.dtb
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)
endif
ifeq ($(BOXTYPE), hd61)
	install -m 644 $(KERNEL_DIR)/vmlinux $(TARGET_DIR)/boot/vmlinux-arm-$(KERNEL_VER)
	install -m 644 $(KERNEL_DIR)/System.map $(TARGET_DIR)/boot/System.map-arm-$(KERNEL_VER)
	cp $(KERNEL_DIR)/arch/arm/boot/uImage $(TARGET_DIR)/boot/
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)
endif

kernel-distclean:
	rm -f $(D)/kernel
	rm -f $(D)/kernel.do_compile
	rm -f $(D)/kernel.do_prepare

kernel-clean:
	-$(MAKE) -C $(KERNEL_DIR) clean
	rm -f $(D)/kernel
	rm -f $(D)/kernel.do_compile

#
# Helper
#
kernel.menuconfig kernel.xconfig: \
kernel.%: $(D)/kernel
	$(MAKE) -C $(KERNEL_DIR) ARCH=arm CROSS_COMPILE=$(TARGET)- $*
	@echo ""
	@echo "You have to edit $(PATCHES)/$(BOXARCH)/$(KERNEL_CONFIG) m a n u a l l y to make changes permanent !!!"
	@echo ""
	diff $(KERNEL_DIR)/.config.old $(KERNEL_DIR)/.config
	@echo ""

