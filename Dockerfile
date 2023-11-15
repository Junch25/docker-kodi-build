FROM docker.io/debian

RUN set -eux \
    && apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates flatpak  \
    && flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo \
    && flatpak install -y flathub tv.kodi.Kodi \
    && flatpak run tv.kodi.Kodi