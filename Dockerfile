FROM docker.io/debian

RUN set -eux \
    && apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates flatpak gnome-software-plugin-flatpak  \
    && flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo \
    && chmod u+s /usr/bin/bwrap
RUN set -eux \
    && flatpak install -y flathub tv.kodi.Kodi
RUN set -eux \
    && flatpak run tv.kodi.Kodi