FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://wpa_supplicant-nl80211-wlan0.conf"

do_install:append () {
    install -d ${D}${sysconfdir}/wpa_supplicant/
    ## Uncomment if you want to add default credentials
    # install -D -m 600 ${WORKDIR}/wpa_supplicant-nl80211-wlan0.conf ${D}${sysconfdir}/wpa_supplicant/
}
