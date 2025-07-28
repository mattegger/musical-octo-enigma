#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# dnf5 install -y tmux

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

dnf5 -y group install admin-tools \
                      container-management \
                      design-suite \
                      fonts \
                      gnome-deskotp \
                      gnome-games \
                      guest-desktop-agents \
                      hardware-support \
                      libreoffice \
                      multimedia \
                      network-manager-submodules \
                      printing \
                      virtualization \
                      vlc


#dnf5 -y install flatpak-builder \
#                GraphicsMagick \
#                aajohan-comfortaa-fonts \
#                adobe-source-sans-pro-fonts \
#                astigmatic-grand-hotel-fonts \
#                audacity \
#                blender \
#                campivisivi-titillium-fonts \
#                colord-extra-profiles \
#                darktable \
#                entangle \
#                fontforge \
#                gcolor3 \
#                gimp \
#                google-roboto-condensed-fonts \
#                google-roboto-fonts \
#                google-roboto-slab-fonts \
#                hugin \
#                inkscape \
#                julietaula-montserrat-fonts \
#                krita \
#                lato-fonts \
#                open-sans-fonts \
#                optipng \
#                overpass-fonts \
#                pdfarranger \
#                pitivi \
#                redhat-display-fonts \
#                redhat-text-fonts \
#                rsms-inter-fonts \
#                scribus \
#                shotwell \
#                sparkleshare \
#                synfigstudio \
#                typetype-molot-fonts \
#                xournalpp \
#                ImageMagick \
#                bodhi-client \
#                fedora-easy-karma \
#                fedora-packager \
#                koji \
#                make \
#                mock \
#                redhat-rpm-config \
#                rpm-build \
#                rpmdevtools \
#                default-fonts-cjk-sans \
#                default-fonts-cjk-serif \
#                default-fonts-core-emoji \
#                default-fonts-core-math \
#                default-fonts-core-mono \
#                default-fonts-core-sans \
#                default-fonts-core-serif \
#                default-fonts-other-mono \
#                default-fonts-other-sans \
#                default-fonts-other-serif \
#                adobe-source-code-pro-fonts \
#                adobe-source-han-code-jp-fonts \
#                adobe-source-han-sans-cn-fonts \
#                adobe-source-han-sans-jp-fonts \
#                adobe-source-han-sans-kr-fonts \
#                adobe-source-han-sans-tw-fonts \
#                adobe-source-han-serif-cn-fonts \
#                adobe-source-han-serif-jp-fonts \
#                adobe-source-han-serif-kr-fonts \
#                adobe-source-han-serif-tw-fonts \
#                adobe-source-sans-pro-fonts \
#                adobe-source-serif-pro-fonts \
#                aftertheflood-sparks-bar-fonts \
#                aftertheflood-sparks-dot-fonts \
#                aftertheflood-sparks-dot-line-fonts \
#                alef-fonts \
#                amiri-fonts \
#                anka-coder-condensed-fonts \
#                anka-coder-narrow-fonts \
#                anka-coder-norm-fonts \
#                apa-new-athena-unicode-fonts \
#                apanov-heuristica-fonts \
#                astigmatic-grand-hotel-fonts \
#                bitstream-vera-sans-fonts \
#                bitstream-vera-sans-mono-fonts \
#                bitstream-vera-serif-fonts \
#                campivisivi-titillium-fonts \
#                cave9-mutante-fonts \
#                cf-bonveno-fonts \
#                chisholm-letterslaughing-fonts \
#                chisholm-to-be-continued-fonts \
#                clm-shofar-fonts \
#                comic-neue-fonts \
#                conakry-fonts \
#                ctan-cm-lgc-roman-fonts \
#                ctan-cm-lgc-sans-fonts \
#                ctan-cm-lgc-typewriter-fonts \
#                ctan-kerkis-calligraphic-fonts \
#                ctan-kerkis-sans-fonts \
#                ctan-kerkis-serif-fonts \
#                d-din-condensed-fonts \
#                d-din-exp-fonts \
#                d-din-fonts \
#                darkgarden-fonts \
#                dejavu-sans-fonts \
#                dejavu-sans-mono-fonts \
#                dejavu-serif-fonts \
#                denemo-emmentaler-fonts \
#                denemo-feta-fonts \
#                denemo-music-fonts \
#                drehatlas-widelands-fonts \
#                dustin-domestic-manners-fonts \
#                dustin-dustismo-roman-fonts \
#                dustin-dustismo-sans-fonts \
#                ecolier-court-fonts \
#                entypo-fonts \
#                fontawesome-fonts-all \
#                fontawesome4-fonts \
#                fontsquirrel-crete-round-fonts \
#                freecol-imperator-fonts \
#                freecol-shadowedblack-fonts \
#                glyphicons-halflings-fonts \
#                gnu-free-mono-fonts \
#                gnu-free-sans-fonts \
#                gnu-free-serif-fonts \
#                google-arimo-fonts \
#                google-carlito-fonts \
#                google-cousine-fonts \
#                google-crosextra-caladea-fonts \
#                google-droid-sans-fonts \
#                google-droid-sans-mono-fonts \
#                google-droid-serif-fonts \
#                google-noto-emoji-fonts \
#                google-noto-fonts-all \
#                google-roboto-condensed-fonts \
#                google-roboto-fonts \
#                google-roboto-mono-fonts \
#                google-roboto-slab-fonts \
#                google-tinos-fonts \
#                grimmer-proggy-squaresz-fonts \
#                grimmer-proggy-tinysz-fonts \
#                gubbi-fonts \
#                hanamin-fonts \
#                impallari-raleway-fonts \
#                ipa-exgothic-fonts \
#                ipa-exmincho-fonts \
#                ipa-gothic-fonts \
#                ipa-mincho-fonts \
#                ipa-pgothic-fonts \
#                ipa-pmincho-fonts \
#                jsmath-fonts \
#                julietaula-montserrat-fonts \
#                labiryntowy-fonts \
#                liberation-narrow-fonts \
#                libreoffice-opensymbol-fonts \
#                lilypond-emmentaler-fonts \
#                linux-libertine-biolinum-fonts \
#                linux-libertine-fonts \
#                lklug-fonts \
#                mnmlicons-fonts \
#                mozilla-fira-mono-fonts \
#                mozilla-fira-sans-fonts \
#                mscore-fonts \
#                msimonson-anonymouspro-fonts \
#                oldstandard-sfd-fonts \
#                open-sans-fonts \
#                opendyslexic-fonts \
#                overpass-fonts \
#                oxygen-mono-fonts \
#                oxygen-sans-fonts \
#                pcaro-hermit-fonts \
#                polarsys-b612-fonts \
#                polarsys-b612-mono-fonts \
#                pothana2000-fonts \
#                saab-fonts \
#                silkscreen-expanded-fonts \
#                silkscreen-fonts \
#                twitter-twemoji-fonts \
#                typetype-molot-fonts \
#                vdrsymbol-fonts \
#                vemana2000-fonts \
#                vl-gothic-fonts \
#                vl-pgothic-fonts \
#                wine-marlett-fonts \
#                wine-symbol-fonts \
#                woodardworks-laconic-fonts \
#                woodardworks-laconic-shadow-fonts \
#                wqy-microhei-fonts \
#                wqy-zenhei-fonts \
#                yanone-kaffeesatz-fonts \
#                ModemManager \
#                NetworkManager-adsl \
#                NetworkManager-openconnect-gnome \
#                NetworkManager-openvpn-gnome \
#                NetworkManager-ppp \
#                NetworkManager-pptp-gnome \
#                NetworkManager-ssh-gnome \
#                NetworkManager-vpnc-gnome \
#                NetworkManager-wwan \
#                PackageKit-command-not-found \
#                PackageKit-gtk3-module \
#                adobe-source-code-pro-fonts \
#                avahi \
#                baobab \
#                evince \
#                evince-djvu \
#                fprintd-pam \
#                glib-networking \
#                gnome-backgrounds \
#                gnome-bluetooth \
#                gnome-browser-connector \
#                gnome-calculator \
#                gnome-calendar \
#                gnome-characters \
#                gnome-classic-session \
#                gnome-clocks \
#                gnome-color-manager \
#                gnome-contacts \
#                gnome-disk-utility \
#                gnome-epub-thumbnailer \
#                gnome-font-viewer \
#                gnome-logs \
#                gnome-maps \
#                gnome-remote-desktop \
#                gnome-system-monitor \
#                gnome-user-docs \
#                gnome-user-share \
#                gnome-weather \
#                gvfs-afc \
#                gvfs-afp \
#                gvfs-archive \
#                gvfs-fuse \
#                gvfs-goa \
#                gvfs-gphoto2 \
#                gvfs-mtp \
#                gvfs-smb \
#                librsvg2 \
#                libsane-hpaio \
#                localsearch \
#                loupe \
#                mesa-dri-drivers \
#                mesa-libEGL \
#                rygel \
#                sane-backends-drivers-scanners \
#                simple-scan \
#                snapshot \
#                sushi \
#                systemd-oomd-defaults \
#                tinysparql \
#                totem \
#                xdg-desktop-portal \
#                xdg-desktop-portal-gnome \
#                xdg-desktop-portal-gtk \
#                xdg-user-dirs-gtk \





#### Example for enabling a System Unit File

# systemctl enable podman.socket
