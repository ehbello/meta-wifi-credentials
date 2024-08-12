FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://20-wired.network \
    file://20-wireless.network \
"

FILES:${PN} += " \
    ${sysconfdir}/systemd/network/20-wired.network \
    ${sysconfdir}/systemd/network/20-wireless.network \
"

do_install:append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/20-wired.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/20-wireless.network ${D}${sysconfdir}/systemd/network
}
