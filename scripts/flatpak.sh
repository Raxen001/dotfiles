#!/bin/env bash
# author: Raxen001
#
# installing my flatpaks
arr=(app.zen_browser.zen
cafe.avery.Delfin
com.belmoussaoui.Decoder
com.github.huluti.Curtail
com.github.iwalton3.jellyfin-media-player
com.github.jeromerobert.pdfarranger
com.github.taiko2k.tauonmb
com.github.tchx84.Flatseal
com.github.wwmm.easyeffects
com.heroicgameslauncher.hgl
com.mattjakeman.ExtensionManager
com.mongodb.Compass
com.obsproject.Studio
com.obsproject.Studio.Plugin.BackgroundRemoval
com.obsproject.Studio.Plugin.InputOverlay
com.rafaelmardojai.SharePreview
com.rtosta.zapzap
com.rustdesk.RustDesk
com.tutanota.Tutanota
com.usebottles.bottles
com.usebruno.Bruno
com.vysp3r.ProtonPlus
de.haeckerfelix.Fragments
dev.deedles.Trayscale
dev.geopjr.Calligraphy
dev.vencord.Vesktop
dev.zed.Zed
io.freetubeapp.FreeTube
io.github.alainm23.planify
io.github.flattool.Warehouse
io.github.getnf.embellish
io.github.giantpinkrobots.varia
io.github.nokse22.asciidraw
io.gitlab.gregorni.Letterpress
io.gitlab.news_flash.NewsFlash
io.missioncenter.MissionCenter
it.fabiodistasio.AntaresSQL
me.iepure.devtoolbox
nl.emphisia.icon
org.chromium.Chromium
org.freedesktop.Platform.VulkanLayer.MangoHud
org.gnome.Geary
org.gnome.Papers
org.gtk.Gtk3theme.adw-gtk3-dark
org.musicbrainz.Picard
org.pipewire.Helvum
org.prismlauncher.PrismLauncher
org.signal.Signal
page.kramo.Cartridges
page.kramo.Sly
page.tesk.Refine
re.sonny.Junction)

for i in ${arr[@]};
do
    sudo flatpak install flathub "$i" -y
done
