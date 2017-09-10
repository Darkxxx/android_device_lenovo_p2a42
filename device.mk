#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

$(call inherit-product, vendor/lenovo/p2a42/p2a42-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl \
    audiod \
    cplay \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvisualizer \
    libvolumelistener \
    libqcomvoiceprocessing \
    libqcompostprocbundle
    
# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl
   
# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# Audio configuration [p2a42]
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/lenovo/p2a42/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    device/lenovo/p2a42/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml

# Audio configuration [CAF]
PRODUCT_COPY_FILES += \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/audio_policy.conf:system/etc/audio_policy.conf \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths.xml:system/etc/mixer_paths.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_qrd_sku3.xml:system/etc/mixer_paths_qrd_sku3.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    hardware/qcom/audio-caf/msm8937/configs/msm8953/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Audio configuration [LineageOS]
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    libbson \
    Snap

# Camera configuration
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/camera/imx258_kuntaoof_chromatix.xml:system/etc/camera/imx258_kuntaoof_chromatix.xml \
    device/lenovo/p2a42/camera/imx258_kuntaosy_chromatix.xml:system/etc/camera/imx258_kuntaosy_chromatix.xml \
    device/lenovo/p2a42/camera/lenovo_kuntao_camera.xml:system/etc/camera/lenovo_kuntao_camera.xml \
    device/lenovo/p2a42/camera/ov5695_kuntaoof_chromatix.xml:system/etc/camera/ov5695_kuntaoof_chromatix.xml \
    device/lenovo/p2a42/camera/ov5695_kuntaosy_chromatix.xml:system/etc/camera/ov5695_kuntaosy_chromatix.xml

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.memtrack@1.0-impl \
    gralloc.msm8953 \
    copybit.msm8953 \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    liboverlay \
    libtinyxml

# Doze
#PRODUCT_PACKAGES += \
#    LenovoDoze

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem
PRODUCT_PACKAGES += \
    setup_fs \
    libext2fs \
    libext2_e2p \
    libext2_uuid \
    libext2_com_err \
    libext2_blkid \
    libextmedia_jni \
    libminui
    
# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service \
    fingerprintd
    
# For config.fs
PRODUCT_PACKAGES += \
    fs_config_files

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# FM
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0-impl \
    FM2 \
    libqcomfm_jni \
    libfmjni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    gps.msm8953 \
    libgnsspps \
    libcurl

PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/gps/flp.conf:system/etc/flp.conf \
    device/lenovo/p2a42/gps/gps.conf:system/etc/gps.conf \
    device/lenovo/p2a42/gps/izat.conf:system/etc/izat.conf \
    device/lenovo/p2a42/gps/lowi.conf:system/etc/lowi.conf \
    device/lenovo/p2a42/gps/sap.conf:system/etc/sap.conf \
    device/lenovo/p2a42/gps/xtwifi.conf:system/etc/xtwifi.conf \

# IPC Router
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/configs/sec_config:system/etc/sec_config \
    device/lenovo/p2a42/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Keylayout
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/lenovo/p2a42/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lenovo/p2a42/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    device/lenovo/p2a42/keylayout/synaptics_dsx_i2c.kl:system/usr/keylayout/synaptics_dsx_i2c.kl \
    device/lenovo/p2a42/keylayout/synaptics_dsxv26.kl:system/usr/keylayout/synaptics_dsxv26.kl \
    device/lenovo/p2a42/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.msm8953

# Media
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libc2dcolorconvert

PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/lenovo/p2a42/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/lenovo/p2a42/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    com.android.nfc_extras \
    NfcNci \
    nfc_nci.bcm2079x.default \
    Tag

# NFC Configurations
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lenovo/p2a42/nfc/libnfc-brcm-20797b00.conf:system/etc/libnfc-brcm-20797b00.conf \
    device/lenovo/p2a42/nfc/nfcse.cfg:system/etc/nfcse.cfg \

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    power.msm8953

# Jelly package
PRODUCT_PACKAGES += \
    Jelly

# Charging Mode
PRODUCT_PACKAGES += \
    charger_res_images

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-lite

# QMI
PRODUCT_PACKAGES += \
    libjson

# RIL
PRODUCT_PACKAGES += \
    rmnetcli \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

# Radio Configurations
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    device/lenovo/p2a42/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    device/lenovo/p2a42/configs/dpm/dpm.conf:system/etc/dpm/dpm.conf \
    device/lenovo/p2a42/configs/dpm/nsrm/NsrmConfiguration.xml:system/etc/dpm/nsrm/NsrmConfiguration.xml

# Sensor
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    sensors.msm8953
    
 # Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Sensor Configurations
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/sensors/hals.conf:system/etc/sensors/hals.conf \
    device/lenovo/p2a42/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf \
    device/lenovo/p2a42/sensors/apdr.conf:system/etc/apdr.conf

# Thermal
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    wificond \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml \
    libqsap_sdk \
    libwifi-hal-qcom \
    wcnss_service \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    hs20-osu-client
    
# Manifest
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/manifest.xml:system/vendor/manifest.xml
    
# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/wifi/fstman.ini:system/vendor/etc/wifi/fstman.ini \
    device/lenovo/p2a42/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/lenovo/p2a42/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/lenovo/p2a42/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/lenovo/p2a42/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    device/lenovo/p2a42/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    kernel/lenovo/msm8953/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lenovo/p2a42/wifi/WCNSS_qcom_wlan_nv_lenovo.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_lenovo.bin \
    device/lenovo/p2a42/wifi/WCNSS_wlan_dictionary_lenovo.dat:system/etc/firmware/wlan/prima/WCNSS_wlan_dictionary_lenovo.dat \
    device/lenovo/p2a42/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/rootdir/ramdisk/fstab.qcom:root/fstab.qcom \
    device/lenovo/p2a42/rootdir/ramdisk/init.class_main.sh:root/init.class_main.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.lenovo.common.rc:root/init.lenovo.common.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.lenovo.crash.rc:root/init.lenovo.crash.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.lenovo.log.rc:root/init.lenovo.log.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.lenovo.sensor.rc:root/init.lenovo.sensor.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.mdm.sh:root/init.mdm.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.mmi.usb.rc:root/init.mmi.usb.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.mmi.usb.sh:root/init.mmi.usb.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.msm.usb.configfs.rc:root/init.msm.usb.configfs.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.oem.hw.sh:root/init.oem.hw.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.factory.rc:root/init.qcom.factory.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.sensors.sh:root/init.qcom.sensors.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/lenovo/p2a42/rootdir/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/lenovo/p2a42/rootdir/ramdisk/init.target.rc:root/init.target.rc \
    device/lenovo/p2a42/rootdir/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

# Binary Scripts
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/rootdir/bin/am_compresslog.sh:system/bin/am_compresslog.sh \
    device/lenovo/p2a42/rootdir/bin/am_diag_done.sh:system/bin/am_diag_done.sh \
    device/lenovo/p2a42/rootdir/bin/am_loglimit.sh:system/bin/am_loglimit.sh \
    device/lenovo/p2a42/rootdir/bin/am_savelog.sh:system/bin/am_savelog.sh \
    device/lenovo/p2a42/rootdir/bin/compresslog.sh:system/bin/compresslog.sh \
    device/lenovo/p2a42/rootdir/bin/copy_exp.sh:system/bin/copy_exp.sh \
    device/lenovo/p2a42/rootdir/bin/diag_clear.sh:system/bin/diag_clear.sh \
    device/lenovo/p2a42/rootdir/bin/diag_clear_orig.sh:system/bin/diag_clear_orig.sh \
    device/lenovo/p2a42/rootdir/bin/diag_kernel.sh:system/bin/diag_kernel.sh \
    device/lenovo/p2a42/rootdir/bin/diag_result.sh:system/bin/diag_result.sh \
    device/lenovo/p2a42/rootdir/bin/diag_system.sh:system/bin/diag_system.sh \
    device/lenovo/p2a42/rootdir/bin/emmc_ffu.sh:system/bin/emmc_ffu.sh \
    device/lenovo/p2a42/rootdir/bin/emmc_ffu_15.sh:system/bin/emmc_ffu_15.sh \
    device/lenovo/p2a42/rootdir/bin/eventslog.sh:system/bin/eventslog.sh \
    device/lenovo/p2a42/rootdir/bin/init.lenovo.crash.sh:system/bin/init.lenovo.crash.sh \
    device/lenovo/p2a42/rootdir/bin/init.lenovo.log.sh:system/bin/init.lenovo.log.sh \
    device/lenovo/p2a42/rootdir/bin/init.mmi.touch.sh:system/bin/init.mmi.touch.sh \
    device/lenovo/p2a42/rootdir/bin/kernellog.sh:system/bin/kernellog.sh \
    device/lenovo/p2a42/rootdir/bin/last_dmsglog.sh:system/bin/last_dmsglog.sh \
    device/lenovo/p2a42/rootdir/bin/last_mainlog.sh:system/bin/last_mainlog.sh \
    device/lenovo/p2a42/rootdir/bin/lastkmsg.sh:system/bin/lastkmsg.sh \
    device/lenovo/p2a42/rootdir/bin/lenovo_dumpsys.sh:system/bin/lenovo_dumpsys.sh \
    device/lenovo/p2a42/rootdir/bin/mainlog.sh:system/bin/mainlog.sh \
    device/lenovo/p2a42/rootdir/bin/mv_files.sh:system/bin/mv_files.sh \
    device/lenovo/p2a42/rootdir/bin/powerlog.sh:system/bin/powerlog.sh \
    device/lenovo/p2a42/rootdir/bin/qsee_bsp_log.sh:system/bin/qsee_bsp_log.sh \
    device/lenovo/p2a42/rootdir/bin/qsee_log.sh:system/bin/qsee_log.sh \
    device/lenovo/p2a42/rootdir/bin/qxdmlog.sh:system/bin/qxdmlog.sh \
    device/lenovo/p2a42/rootdir/bin/radiolog.sh:system/bin/radiolog.sh \
    device/lenovo/p2a42/rootdir/bin/savelog.sh:system/bin/savelog.sh \
    device/lenovo/p2a42/rootdir/bin/savelog_ddr_emmc.sh:system/bin/savelog_ddr_emmc.sh \
    device/lenovo/p2a42/rootdir/bin/setup.lenovo.crash.sh:system/bin/setup.lenovo.crash.sh \
    device/lenovo/p2a42/rootdir/bin/tcplog.sh:system/bin/tcplog.sh \
    device/lenovo/p2a42/rootdir/bin/testmodelog.sh:system/bin/testmodelog.sh \
    device/lenovo/p2a42/rootdir/bin/trigger.lenovo.log.sh:system/bin/trigger.lenovo.log.sh \
    device/lenovo/p2a42/rootdir/bin/tzbspdebug.sh:system/bin/tzbspdebug.sh

# Configuration Scripts
PRODUCT_COPY_FILES += \
    device/lenovo/p2a42/rootdir/etc/hcidump.sh:system/etc/hcidump.sh \
    device/lenovo/p2a42/rootdir/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    device/lenovo/p2a42/rootdir/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/lenovo/p2a42/rootdir/etc/init.crda.sh:system/etc/init.crda.sh \
    device/lenovo/p2a42/rootdir/etc/init.lenovo.persist.sh:system/etc/init.lenovo.persist.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.debug.sh:system/etc/init.qcom.debug.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    device/lenovo/p2a42/rootdir/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/lenovo/p2a42/rootdir/etc/init.qti.ims.sh:system/etc/init.qti.ims.sh \
    device/lenovo/p2a42/rootdir/etc/qca6234-service.sh:system/etc/qca6234-service.sh
