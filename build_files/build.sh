#!/bin/bash

set -ouex pipefail

mkdir /var/roothome

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# this installs a package from fedora repos
# dnf5 install -y tmux

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

# RPMfusion
dnf5 -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf5 -y install dnf5-plugins
dnf5 config-manager setopt fedora-cisco-openh264.enabled=1

#dnf5 -y group install --skip-unavailable admin-tools \
dnf5 -y group install --skip-unavailable admin-tools \
                      container-management \
                      design-suite \
                      fonts \
                      gnome-desktop \
                      gnome-games \
                      guest-desktop-agents \
                      hardware-support \
                      libreoffice \
                      multimedia \
                      printing \
                      virtualization \
                      vlc

#### Example for enabling a System Unit File

# systemctl enable podman.socket
