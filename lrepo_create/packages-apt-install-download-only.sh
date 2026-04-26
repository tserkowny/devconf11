#!/usr/bin/env bash
PKG_LIST=packages_apt.txt
sed '/#/d' "$PKG_LIST" | xargs sudo apt -y install --download-only |& tee ./distros/log/${HOSTNAME}.apt_install_download."`date +%y%m%d-%H%M`".log