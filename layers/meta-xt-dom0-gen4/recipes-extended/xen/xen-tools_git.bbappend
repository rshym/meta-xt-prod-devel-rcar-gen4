FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

RDEPENDS:${PN} += " \
    util-linux-prlimit \
"

SRC_URI:append:r8a779g0 = " \
    file://0001-arm-Change-GUEST_GICV3_ITS_BASE.patch \
"
