# save this as shell.nix
with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    zsh
    gopass
    go
    yazi
    nushell
    ripgrep
    fzf
    fd
    lazygit
    zellij
    neovim
    cargo
    hugo
    atac
    lazysql
  ];
}

