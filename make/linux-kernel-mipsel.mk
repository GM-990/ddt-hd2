# vuduo
ifeq ($(BOXTYPE), vuduo)
KERNEL_VER             = 3.9.6
KERNEL_TYPE            = vuduo
KERNEL_SRC_VER         = 3.9.6
KERNEL_SRC             = stblinux-${KERNEL_SRC_VER}.tar.bz2
KERNEL_URL             = http://archive.vuplus.com/download/kernel
KERNEL_CONFIG          = vuduo_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux
KERNEL_PATCHES_MIPSEL  = $(VUDUO_PATCHES)
endif

# gb800se
ifeq ($(BOXTYPE), gb800se)
KERNEL_VER             = 3.9.6
KERNEL_DATE            = 20140904
KERNEL_TYPE            = gb800se
KERNEL_SRC             = gigablue-linux-$(KERNEL_VER)-$(KERNEL_DATE).tgz
KERNEL_URL             = http://source.mynonpublic.com/gigablue/linux
KERNEL_CONFIG          = gb800se_defconfig
KERNEL_DIR             = $(BUILD_TMP)/linux-$(KERNEL_VER)
KERNEL_PATCHES_MIPSEL  = $(GB800SE_PATCHES)
endif

DEPMOD = $(HOST_DIR)/bin/depmod

# kernel patches
# gb800se
GB800SE_PATCHES = \
		mips/gb800se/nor-maps-gb800solo.patch \
       		mips/gb800se/add-dmx-source-timecode.patch \
    		mips/gb800se/af9015-output-full-range-SNR.patch \
    		mips/gb800se/af9033-output-full-range-SNR.patch \
    		mips/gb800se/as102-adjust-signal-strength-report.patch \
    		mips/gb800se/as102-scale-MER-to-full-range.patch \
    		mips/gb800se/cinergy_s2_usb_r2.patch \
    		mips/gb800se/cxd2820r-output-full-range-SNR.patch \
    		mips/gb800se/dvb-usb-dib0700-disable-sleep.patch \
    		mips/gb800se/dvb_usb_disable_rc_polling.patch \
    		mips/gb800se/it913x-switch-off-PID-filter-by-default.patch \
    		mips/gb800se/tda18271-advertise-supported-delsys.patch \
    		mips/gb800se/fix-dvb-siano-sms-order.patch \
    		mips/gb800se/mxl5007t-add-no_probe-and-no_reset-parameters.patch \
    		mips/gb800se/nfs-max-rwsize-8k.patch \
    		mips/gb800se/0001-rt2800usb-add-support-for-rt55xx.patch \
    		mips/gb800se/linux-sata_bcm.patch \
    		mips/gb800se/brcmnand.patch \
    		mips/gb800se/fix_fuse_for_linux_mips_3-9.patch \
    		mips/gb800se/rt2800usb_fix_warn_tx_status_timeout_to_dbg.patch \
		mips/gb800se/linux-3.9-gcc-4.9.3-build-error-fixed.patch \
    		mips/gb800se/rtl8712-fix-warnings.patch \
    		mips/gb800se/rtl8187se-fix-warnings.patch \
    		mips/gb800se/kernel-add-support-for-gcc-5.patch \
    		mips/gb800se/kernel-add-support-for-gcc6.patch \
    		mips/gb800se/kernel-add-support-for-gcc7.patch \
    		mips/gb800se/kernel-add-support-for-gcc8.patch \
    		mips/gb800se/kernel-add-support-for-gcc9.patch \
		mips/gb800se/0001-Support-TBS-USB-drivers-3.9.patch \
    		mips/gb800se/0001-STV-Add-PLS-support.patch \
    		mips/gb800se/0001-STV-Add-SNR-Signal-report-parameters.patch \
    		mips/gb800se/0001-stv090x-optimized-TS-sync-control.patch \
    		mips/gb800se/blindscan2.patch \
    		mips/gb800se/genksyms_fix_typeof_handling.patch \
    		mips/gb800se/0002-cp1emu-do-not-use-bools-for-arithmetic.patch \
    		mips/gb800se/0003-log2-give-up-on-gcc-constant-optimizations.patch

# vuduo
VUDUO_PATCHES = \
		mips/vuduo/add-dmx-source-timecode.patch \
		mips/vuduo/af9015-output-full-range-SNR.patch \
		mips/vuduo/af9033-output-full-range-SNR.patch \
		mips/vuduo/as102-adjust-signal-strength-report.patch \
		mips/vuduo/as102-scale-MER-to-full-range.patch \
		mips/vuduo/cinergy_s2_usb_r2.patch \
		mips/vuduo/cxd2820r-output-full-range-SNR.patch \
		mips/vuduo/dvb-usb-dib0700-disable-sleep.patch \
		mips/vuduo/dvb_usb_disable_rc_polling.patch \
		mips/vuduo/it913x-switch-off-PID-filter-by-default.patch \
		mips/vuduo/tda18271-advertise-supported-delsys.patch \
		mips/vuduo/fix-dvb-siano-sms-order.patch \
		mips/vuduo/mxl5007t-add-no_probe-and-no_reset-parameters.patch \
		mips/vuduo/nfs-max-rwsize-8k.patch \
		mips/vuduo/0001-rt2800usb-add-support-for-rt55xx.patch \
		mips/vuduo/linux-sata_bcm.patch \
		mips/vuduo/fix_fuse_for_linux_mips_3-9.patch \
		mips/vuduo/rt2800usb_fix_warn_tx_status_timeout_to_dbg.patch \
		mips/vuduo/linux-3.9-gcc-4.9.3-build-error-fixed.patch \
		mips/vuduo/kernel-add-support-for-gcc5.patch \
		mips/vuduo/kernel-add-support-for-gcc6.patch \
		mips/vuduo/kernel-add-support-for-gcc7.patch \
		mips/vuduo/kernel-add-support-for-gcc8.patch \
		mips/vuduo/kernel-add-support-for-gcc9.patch \
		mips/vuduo/gcc9_backport.patch \
		mips/vuduo/rtl8712-fix-warnings.patch \
		mips/vuduo/rtl8187se-fix-warnings.patch \
		mips/vuduo/0001-Support-TBS-USB-drivers-3.9.patch \
		mips/vuduo/0001-STV-Add-PLS-support.patch \
		mips/vuduo/0001-STV-Add-SNR-Signal-report-parameters.patch \
		mips/vuduo/0001-stv090x-optimized-TS-sync-control.patch \
		mips/vuduo/blindscan2.patch \
		mips/vuduo/genksyms_fix_typeof_handling.patch \
		mips/vuduo/0002-log2-give-up-on-gcc-constant-optimizations.patch \
		mips/vuduo/0003-cp1emu-do-not-use-bools-for-arithmetic.patch \
		mips/vuduo/test.patch \
		mips/vuduo/01-10-si2157-Silicon-Labs-Si2157-silicon-tuner-driver.patch \
		mips/vuduo/02-10-si2168-Silicon-Labs-Si2168-DVB-T-T2-C-demod-driver.patch \
		mips/vuduo/CONFIG_DVB_SP2.patch \
		mips/vuduo/dvbsky-t330.patch

KERNEL_PATCHES = $(KERNEL_PATCHES_MIPSEL)

$(ARCHIVE)/$(KERNEL_SRC):
	$(WGET) $(KERNEL_URL)/$(KERNEL_SRC)

$(D)/kernel.do_prepare: $(ARCHIVE)/$(KERNEL_SRC) $(PATCHES)/$(BOXARCH)/$(KERNEL_CONFIG)
	$(START_BUILD)
	rm -rf $(KERNEL_DIR)
ifeq ($(BOXTYPE), vuduo)
	$(UNTAR)/$(KERNEL_SRC)
endif
ifeq ($(BOXTYPE), gb800se)
	$(UNTARGZ)/$(KERNEL_SRC)
endif
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
	set -e; cd $(KERNEL_DIR); \
		$(MAKE) -C $(KERNEL_DIR) ARCH=mips oldconfig
		$(MAKE) -C $(KERNEL_DIR) ARCH=mips CROSS_COMPILE=$(TARGET)- vmlinux modules
		$(MAKE) -C $(KERNEL_DIR) ARCH=mips CROSS_COMPILE=$(TARGET)- DEPMOD=$(DEPMOD) INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
	@touch $@

KERNEL = $(D)/kernel
$(D)/kernel: $(D)/bootstrap $(D)/kernel.do_compile
	install -m 644 $(KERNEL_DIR)/$(KERNELNAME) $(TARGET_DIR)/boot/
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/build || true
	rm $(TARGET_DIR)/lib/modules/$(KERNEL_VER)/source || true
	$(TOUCH)

kernel-distclean:
	rm -f $(D)/kernel
	rm -f $(D)/kernel.do_compile
	rm -f $(D)/kernel.do_prepare

kernel-clean:
	-$(MAKE) -C $(KERNEL_DIR) clean
	rm -f $(D)/kernel
	rm -f $(D)/kernel.do_compile
	rm -f $(TARGET_DIR)/boot/vmlinux

#
# Helper
#
kernel.menuconfig kernel.xconfig: \
kernel.%: $(D)/kernel
	$(MAKE) -C $(KERNEL_DIR) ARCH=mips CROSS_COMPILE=$(TARGET)- $*
	@echo ""
	@echo "You have to edit $(PATCHES)/armbox/$(KERNEL_CONFIG) m a n u a l l y to make changes permanent !!!"
	@echo ""
	diff $(KERNEL_DIR)/.config.old $(KERNEL_DIR)/.config
	@echo ""


