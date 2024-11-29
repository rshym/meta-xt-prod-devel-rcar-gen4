python () {
    # s4
    if d.getVar('PREFERRED_VERSION_xen').startswith('4.17'):
        d.setVar('XEN_URL', "git://github.com/xen-troops/xen.git;protocol=https;branch=spider-master")
        d.setVar('XEN_REL', "4.17")
        d.setVar('XEN_REV', "8711910a8fb66eb454172a9e6427aaf62bfc3a80")

    # v4h
    if d.getVar('PREFERRED_VERSION_xen').startswith('4.19'):
        d.setVar('XEN_URL', "git://github.com/xen-troops/xen.git;protocol=https;branch=xen-4.19-xt0.2_v4h_demo")
        d.setVar('XEN_REL', "4.19")
        d.setVar('XEN_REV',  "${AUTOREV}")
        d.setVar('LIC_FILES_CHKSUM', "file://COPYING;md5=d1a1e216f80b6d8da95fec897d0dbec9")
}
