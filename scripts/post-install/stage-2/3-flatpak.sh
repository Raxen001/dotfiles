#!/bin/bash
# author: Raxen001

flatpak_list=(
    app.zen_browser.zen
    org.chromium.Chromium
    com.heroicgameslauncher.hgl
    page.kramo.Cartridges
    com.usebottles.bottles
    com.vysp3r.ProtonPlus
    org.prismlauncher.PrismLauncher
    com.tutanota.Tutanota
    org.gnome.Geary
    dev.zed.Zed
    me.iepure.devtoolbox
    it.fabiodistasio.AntaresSQL
    com.mongodb.Compass
    com.usebruno.Bruno
    com.rafaelmardojai.SharePreview
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
    de.haeckerfelix.Fragments
    dev.geopjr.Calligraphy
    dev.vencord.Vesktop
    io.github.flattool.Warehouse
    io.github.getnf.embellish
    io.github.giantpinkrobots.varia
    io.github.nokse22.asciidraw
    io.gitlab.gregorni.Letterpress
    io.gitlab.news_flash.NewsFlash
    nl.emphisia.icon
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
    io.github.swordpuffin.rewaita # add colors to adwaita
)

sudo flatpak install flathub "${flatpak_list[@]}" -y
