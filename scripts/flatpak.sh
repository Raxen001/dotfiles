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
    cafe.avery.Delfin
    com.github.huluti.Curtail
    com.github.iwalton3.jellyfin-media-player
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
    io.freetubeapp.FreeTube
    io.github.flattool.Warehouse
    io.github.getnf.embellish
    io.github.giantpinkrobots.varia
    io.github.nokse22.asciidraw
    io.gitlab.gregorni.Letterpress
    io.gitlab.news_flash.NewsFlash
    io.missioncenter.MissionCenter
    nl.emphisia.icon
    org.freedesktop.Platform.VulkanLayer.MangoHud
    org.gnome.Papers
    org.gtk.Gtk3theme.adw-gtk3-dark
    org.signal.Signal
    page.tesk.Refine
    re.sonny.Junction
)

echo $flatpak_list
for i in ${flatpak_list[@]}; do
    sudo flatpak install flathub "$i" -y
done

flatpak install flathub --system com.dec05eba.gpu_screen_recorder
