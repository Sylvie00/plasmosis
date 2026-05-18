#!/bin/bash

set -ouex pipefail

dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf install -y steam tailscale 

cat > /usr/share/ublue-os/image-info.json <<EOF
{
  "image-name": "Plasmosis,
  "image-vendor": "Sylvie00",
  "image-ref": "plasmosis",
  "image-tag": "latest",
  "image-branch": "main",
  "base-image-name": "Fedora Kinoite",
  "fedora-version": "$(rpm -E %fedora)",
  "version": "$(rpm -E %fedora)",
  "version-pretty": "$(rpm -E %fedora)"
}
EOF

systemctl enable podman.socket
systemctl disable plasmalogin.service
systemctl enable sddm.service
