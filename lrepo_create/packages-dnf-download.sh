#!/usr/bin/env bash
PKG_LIST=/root/packages_dnf.txt
sed '/#/d' "$PKG_LIST" | xargs dnf download --resolve --alldeps --destdir /opt/lrepo |& tee ~/${HOSTNAME}.packages-dnf-download."`date +%y%m%d-%H%M`".log
