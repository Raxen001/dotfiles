"===============================================================================
"
" startify
" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" colors
highlight StartifyHeader ctermfg=1 guifg=#fb4934

let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['          BOOKMARKS']},
        \ { 'type': 'commands',  'header': ['        גּ  COMMANDS ']},
        \ ]

let g:startify_bookmarks = [
    \ { 'T': '~/Documents/personal_notes/board/TO-WATCH.md' },
    \ { 't': '~/Documents/personal_notes/NOTES/TODO.md'},
    \ { 'a': '~/.config/alacritty/alacritty.yml' },
    \ { 'n': '~/.local/configs/sourcepkgs/nnn/nnn.zsh'},
    \ { 'p': '~/.config/picom.conf' },
    \ { 'z': '~/.local/configs/dotfiles/zsh/.zshrc'},
    \ { 'o': '~/Code/Python/Ongoing/'},
    \ { 'P': '~/Code/Python'},
    \ { 'R': '~/Code/Rust/.'},
    \ { 'C': '~/Code/C'},
    \ { 'c': '~/.config/'},
    \ { 'l': '~/Code/Rust/Learning'},
    \ { 'd': '~/.local/configs/dotfiles/'},
    \ { 's': '~/.local/configs/scripts/'},
    \ { 'u': '~/.local/configs/sourcepkgs/'},
    \ { 'b': '~/.local/configs/dotfiles/bookmarks'},
  \ ]

let g:startify_padding_left = 8 

let g:startify_custom_header = startify#center([
            \'██▀███   ▄▄▄      ▒██   ██▒▓█████  ███▄    █  ',
            \'▓██ ▒ ██▒▒████▄    ▒▒ █ █ ▒░▓█   ▀  ██ ▀█   █ ',
            \'▓██ ░▄█ ▒▒██  ▀█▄  ░░  █   ░▒███   ▓██  ▀█ ██▒',
            \'▒██▀▀█▄  ░██▄▄▄▄██  ░ █ █ ▒ ▒▓█  ▄ ▓██▒  ▐▌██▒',
            \'░██▓ ▒██▒ ▓█   ▓██▒▒██▒ ▒██▒░▒████▒▒██░   ▓██░',
            \'░ ▒▓ ░▒▓░ ▒▒   ▓▒█░▒▒ ░ ░▓ ░░░ ▒░ ░░ ▒░   ▒ ▒ ',
            \'  ░▒ ░ ▒░  ▒   ▒▒ ░░░   ░▒ ░ ░ ░  ░░ ░░   ░ ▒░',
            \'  ░░   ░   ░   ▒    ░    ░     ░      ░   ░ ░ ',
            \'   ░           ░  ░ ░    ░     ░  ░         ░ ',
\ ])

nnoremap <leader>s :Startify <CR>

