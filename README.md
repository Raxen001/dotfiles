# Reinstall checklist

install necessariy programs

## packages

- zsh
  - `chsh` && `/bin/zsh`
  - starship.rs
    - ~`curl -sS https://starship.rs/install.sh | sh` && `eval "$(starship init zsh)"`~ (terra has this package)
- alacritty
- neovim
- gopass
- mpv

- fzf
- ripgrep
- fd-find
- jq
- hugo
- python3
- tailscale
- rust
  - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- docker
- mpv
- tldr
  - `tldr -u`
- nvtop && powertop && bpytop
- entr
- oxipng (compress png)
  - `cargo install oxipng`
- silicon
  - `cargo install silicon`

## tui

- yazi
  - `cargo install --locked yazi-fm yazi-cli`
- atac
  - `cargo install atac`
- oxker
    - `cargo install oxker`
- fastssh
    - `cargo install fast-ssh`
- jqp
- fx

## flatpaks

- flatseal
- warehouse
- extension manager
- tweaks
- chromium
- tutamail
- vesktop (discord something)
- zapzap
- Geary (mail)
- antares_sql

- junction
- papers
- TauonBox
- delfin, jellyfin

## Things to do after installing

### Firefox

- Sign into Firefox account
- Sign into firefox container (why can't the sync it :cry:)
- Sign into listenbrainz and last.fm
  - Sign into webscrobber plugin
  - Sign into TauonBox
- Sign into Anilist.co
  - Sign into MalSync plugin
- Sign into comic.io
- Sign into steam
  - Sign into protondb and steamdb
- Sign into github
  - Sign into Tailscale and leetcode
- Sign into backlogged use personal container

### Chromium

- Create 2 profiles one for STUDY and personal
  - Personal
    - Sign into 3 personal accounts
  - STUDY
    - Sign into Study account

### GNOME

- Online accounts Sign into 4 accounts
- Enable Variable Refresh Rate and fractional scaling (Experimental for now)
  - `gsettings set org.gnome.mutter experimental-features "['variable-refresh-rate']"`
  - `gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"`
  - both `gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer', 'variable-refresh-rate']"`

## CONFIGS

- link alacritty `ln -s alacrity/ ~/.config/alacritty`
- link zellij `ln -s zellij/ ~/.config/zellij`
- link neovim `ln -s nvim ~/.config/nvim`
- link zshrc `ln -s zsh/zshrc ~/.zshrc`
- link zshenv `ln -s zsh/zshenv ~/.zshenv`
- link gitconfig `ln -s git ~/.config/git`
- link ssh `ln ssh/ ~/.ssh`

## GAMES

- Steam
  - Use steam authenticator
- Vesktop(discord)
  - Use discord and scan qr
- HeroicGamesLauncher
  - Ubisoft signin
  - gog sign
- Bottles
- ProtonPlus

## OS SPECIFIC STUFF

### FEDORA

- RpmFusion

  - ```bash
    sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf config-manager --enable fedora-cisco-openh264
    sudo dnf update @core
    ```

- Terra

  - ```bash
      sudo dnf install --repofrompath
      'terra,https://repos.fyralabs.com/terra$releasever'
      --setopt='terra.gpgkey=https://repos.fyralabs.com/terra$releasever/key.asc'
      terra-release
    ```

- Nvidia

  - ```bash
    sudo dnf update -y # and reboot if you are not on the latest kernel
    sudo dnf install akmod-nvidia # rhel/centos users can use kmod-nvidia instead
    sudo dnf install xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support
    ```

- MultiMedia Codecs

  - ```bash
    # ffmpeg
    sudo dnf swap ffmpeg-free ffmpeg --allowerasing
    sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
    sudo dnf update @sound-and-video
    ```

  - ```bash
    # amd mesa
    sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld
    sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
    ```

  - ```bash
    # mesa 32-bit for steam
    sudo dnf swap mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686
    sudo dnf swap mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686
    ```

  - ```bash
    # nvidia 64 bit and 32 bit
    sudo dnf install libva-nvidia-driver.{i686,x86_64}
    ```

  - ```bash
    # additonal firmwares
    sudo dnf install rpmfusion-nonfree-release-tainted
    sudo dnf --repo=rpmfusion-nonfree-tainted install "*-firmware"
    ```

## zen browser

### about:config

`zen.urlbar.replace-newtab`             = `false`
`browser.tabs.closeWindowWithLastTab`   = `false`
`zen.window-sync.enabled`               = `false`
