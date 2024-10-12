# save this as shell.nix
with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    zsh
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

