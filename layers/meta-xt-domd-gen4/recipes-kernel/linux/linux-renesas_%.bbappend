FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

require recipes-kernel/inc/linux-sources.inc

# V4H uses dedicated meta layer meta-rcar-bsp, with its own settings,
# like RENESAS_BSP_BRANCH instead of BRANCH.
RENESAS_BSP_URL:r8a779g0 = "git://github.com/renesas-rcar/linux-bsp.git;protocol=https"
RENESAS_BSP_BRANCH:r8a779g0 = "v5.10.147/rcar-5.2.0.rc17"
SRCREV:r8a779g0 = "3bef1d681c2159110ac6d493a1ee8271bccd631f"

SRC_URI:append = " \
    file://ixgbe.cfg \
    file://multicast_routing.cfg \
    file://0001-clk-shmobile-Hide-clock-for-scif3-and-hscif0.patch \
    file://0002-PCIe-MSI-support.${MACHINE}.patch \
    file://0003-xen-pciback-allow-compiling-on-other-archs-than-x86.patch \
    file://0004-HACK-Allow-DomD-enumerate-PCI-devices.patch \
"

SRC_URI:append:r8a779f0 = " \
    file://ufs.cfg \
    file://r8a779f0-xen-chosen.dtsi;subdir=git/arch/arm64/boot/dts/renesas \
    file://r8a779f0-domd.dts;subdir=git/arch/arm64/boot/dts/renesas \
    file://r8a779f0-xen.dts;subdir=git/arch/arm64/boot/dts/renesas \
    file://0005-HACK-pcie-renesas-emulate-reading-from-ECAM-under-Xe.patch \
"

SRC_URI:append:r8a779g0 = " \
    file://0001-xen-Initial-version-of-Xen-passthrough-helper-driver.patch \
    file://r8a779g0-xen-chosen.dtsi;subdir=git/arch/arm64/boot/dts/renesas \
    file://r8a779g0-domd.dts;subdir=git/arch/arm64/boot/dts/renesas \
    file://r8a779g0-xen.dts;subdir=git/arch/arm64/boot/dts/renesas \
"

SRC_URI:remove:r8a779g0 = " \
    file://0001-arm64-dts-renesas-r8a779g0-Add-Native-device-support.patch \
"

KERNEL_MODULE_PROBECONF += "ixgbevf"
module_conf_ixgbevf = "blacklist ixgbevf"
