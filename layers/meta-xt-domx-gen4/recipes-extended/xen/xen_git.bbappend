require xen-source.inc

# We are dropping TUNE_CCARGS from for Xen because it won't build for armv8.2, as
# it conflicts with -mcpu=generic provided by own Xen build system
HOST_CC_ARCH:remove="-march=armv8.2-a+crypto"
HOST_CC_ARCH:remove="-mcpu=cortex-a55"

DEPENDS += "u-boot-mkimage-native"

XEN_LOAD_ADDR:r8a779f0 = "0x78080000"
XEN_LOAD_ADDR:r8a779g0 = "0x48080000"

do_deploy:append () {
    if [ -f ${D}/boot/xen ]; then
        uboot-mkimage -A arm64 -C none -T kernel -a ${XEN_LOAD_ADDR} -e ${XEN_LOAD_ADDR} -n "XEN" -d ${D}/boot/xen ${DEPLOYDIR}/xen-${MACHINE}.uImage
        ln -sfr ${DEPLOYDIR}/xen-${MACHINE}.uImage ${DEPLOYDIR}/xen-uImage
    fi
}
