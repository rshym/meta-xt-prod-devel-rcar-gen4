FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

require recipes-kernel/inc/linux-sources.inc

SRC_URI:append = "\
    file://defconfig \
    file://dmatest.cfg \
"

SRC_URI:append:r8a779f0 = "\
    file://r8a779f0-${MACHINE}-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://rswitch.cfg \
    file://ixgbevf.cfg \
"

SRC_URI:append:r8a779g0 = " \
    file://r8a779g0-${MACHINE}-domu.dts;subdir=git/arch/${ARCH}/boot/dts/renesas \
    file://r8a779g0.cfg \
    file://0001-Export-xenmem_reservation_scrub_page.patch \
    \
    file://0001-HACK-Allow-DSI-to-work-in-DomU.patch \
    file://0002-HACK-Allow-VIN-to-work-in-DomU.patch \
    file://0003-HACK-Allow-PCI-to-work-in-DomU.patch \
    file://0001-HACK-DBG-drivers-uio-uio_pdrv_genirq-override-pm.patch \
"

SRC_URI:remove:rcar-v4x = "file://0001-arm64-dts-renesas-r8a779g0-Add-Native-device-support.patch"

KERNEL_DEVICETREE:r8a779f0 = "renesas/r8a779f0-${MACHINE}-domu.dtb"
KERNEL_DEVICETREE:r8a779g0 = "renesas/r8a779g0-${MACHINE}-domu.dtb"
