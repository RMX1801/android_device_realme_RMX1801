# AD
PRODUCT_PROPERTY_OVERRIDES +=  \
    ro.vendor.display.ad=1 \
    ro.vendor.display.ad.sdr_calib_data=/vendor/etc/OPPO_OLED_AD_calib.cfg \
    ro.vendor.display.sensortype=2

# Audio
PRODUCT_PROPERTY_OVERRIDES +=  \
    af.fast_track_multiplier=1 \
    audio.adm.buffering.ms=4 \
    audio.offload.min.duration.secs=30 \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.hifi.int_codec=true \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    persist.vendor.audio.ras.enabled=false \
    ro.af.client_heap_size_kbyte=7168 \
    ro.vendor.audio.sdk.fluencetype=none \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.noisy.broadcast.delay=600 \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.pstimeout.secs=3 \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio_hal.period_size=192 \
    vendor.video.disable.ubwc=1 \
    vendor.voice.path.for.pcm.voip=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac \
    vendor.bluetooth.soc=cherokee \
    vendor.qcom.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    vidc.enc.dcvs.extra-buff-count=2

# CNE/ DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1 \
    persist.vendor.dpm.feature=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=384m \
    dalvik.vm.heapmaxfree=16m \
    dalvik.vm.heapminfree=4m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heaptargetutilization=0.75 \

# Data modules
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.df.dev_name=rmnet_usb0 \
    persist.vendor.data.mode=concurrent \
    ro.vendor.use_data_netmgrd=true \

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.disable_backpressure=1 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    persist.debug.wfd.enable=1 \
    persist.demo.hdmirotationlock=false \
    ro.opengles.version=196610 \
    sdm.debug.disable_skip_validate=1 \
    vendor.display.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.enc.disable.pq=false \
    vendor.vidc.dec.enable.downscalar=0 \
    vidc.enc.target_support_bframe=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    mm.enable.smoothstreaming=true \
    mmp.enable.3g2=true \
    persist.mm.enable.prefetch=true \
    vendor.mm.enable.qcom_parser=13631487

# Netflix custom property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q660-13149-1

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.core_ctl_max_cpu=4

# RCS and IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.calls.on.ims=1 \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.radio.cs_srv_type=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.poweron_opt=1 \
    persist.vendor.radio.process_sups_ind=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.relay_oprt_change=1 \
    persist.vendor.radio.sib16_support=1 \
    rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so \
    ro.telephony.default_network=22,22 \
    telephony.lteOnCdmaDevice=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.dev_ori=true \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.sta_detect=true

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.protected_contents=true

# Time-Service
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true
