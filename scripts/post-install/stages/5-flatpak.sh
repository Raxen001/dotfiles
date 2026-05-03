#!/usr/bin/env bash

flatpak_list=(
    app.zen_browser.zen
    org.chromium.Chromium
    com.heroicgameslauncher.hgl
    page.kramo.Cartridges
    com.usebottles.bottles
    it.mijorus.gearlever
    com.vysp3r.ProtonPlus
    com.valvesoftware.SteamLink
    org.prismlauncher.PrismLauncher
    com.tutanota.Tutanota
    dev.zed.Zed
    me.iepure.devtoolbox
    it.fabiodistasio.AntaresSQL
    io.dbeaver.DBeaverCommunity
    com.mongodb.Compass
    rest.insomnia.Insomnia
    com.rafaelmardojai.SharePreview
    org.gnome.gitlab.YaLTeR.VideoTrimmer
    com.belmoussaoui.Decoder
    dev.deedles.Trayscale
    page.kramo.Sly
    com.github.wwmm.easyeffects
    org.pipewire.Helvum
    org.musicbrainz.Picard
    com.github.huluti.Curtail
    org.jellyfin.JellyfinDesktop
    com.github.jeromerobert.pdfarranger
    com.github.taiko2k.tauonmb
    com.github.tchx84.Flatseal
    com.mattjakeman.ExtensionManager
    com.obsproject.Studio
    com.obsproject.Studio.Plugin.BackgroundRemoval
    com.obsproject.Studio.Plugin.InputOverlay
    com.rtosta.zapzap
    com.rustdesk.RustDesk
    dev.geopjr.Calligraphy
    dev.vencord.Vesktop
    io.github.flattool.Warehouse
    io.github.getnf.embellish
    io.github.giantpinkrobots.varia
    io.gitlab.news_flash.NewsFlash
    net.nokyan.Resources
    org.gnome.gitlab.YaLTeR.Identity
    org.gnome.Showtime
    de.schmidhuberj.tubefeeder
    rocks.shy.VacuumTube
    org.freedesktop.Platform.VulkanLayer.MangoHud
    org.gnome.Papers
    org.gtk.Gtk3theme.adw-gtk3-dark
    org.signal.Signal
    page.tesk.Refine
    re.sonny.Junction
    dev.geopjr.Turntable
    io.github.totoshko88.RustConn
    be.alexandervanhee.gradia
    io.github.nozwock.Packet
    com.dec05eba.gpu_screen_recorder
    io.github.alainm23.planify   # todo list
    io.github.wartybix.Constrict # Compress videos and images
    org.nicotine_plus.Nicotine   # soulseek
    io.github.Faugus.faugus-launcher # faugus-launcher
    org.darktable.Darktable # darktable image manipulation
    com.bitwarden.desktop # bitwarden
    studio.planetpeanut.Bobby # sql viewer
    io.github.benjamimgois.goverlay # goverylay for mangohud
    com.geeks3d.furmark # furmark benchmark gpu
    org.freedesktop.Platform.VdpauInfo # vdpau
    org.freedesktop.Platform.ffmpeg-full  # ffmpeg for HW
)

sudo flatpak install flathub -y --noninteractive "${flatpak_list[@]}" 
