IMAGE_INSTALL:append = " \
    pciutils \
    devmem2 \
    vmq-network \
"

IMAGE_INSTALL:append:r8a779f0 = " \
    iccom-support \
    optee-test \
    kernel-module-ixgbevf \
"

IMAGE_INSTALL:append = " kernel-module-nvme"
IMAGE_INSTALL:append = " kernel-module-nvme-core"

IMAGE_INSTALL:append = " e2fsprogs"
IMAGE_INSTALL:append = " iproute2 iproute2-tc"
