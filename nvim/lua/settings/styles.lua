local colorscheme = "gruvbox"
local status_ok, _ = pcall(vim.api.nvim_command, "colorscheme " .. colorscheme)
if not status_ok then
    print("colorscheme " .. colorscheme .. " not found!")
    return
end
vim.cmd[[ 
highlight readonly      guifg=#cc241d guibg=#3c3836 gui=bold,italic
highlight statusleft    guifg=#458588 guibg=#3c3836 gui=bold
highlight statuscenter  guifg=#83a598 guibg=#282828 gui=bold
highlight icons         guifg=#d65d0e guibg=#282828 gui=bold
highlight statusright   guifg=#282828 guibg=#689d6a gui=bold
set statusline=
set statusline+=%#readonly#
set statusline+=\ %r
set statusline+=%#statusleft#
set statusline+=\ %m
set statusline+=\ %y
set statusline+=%#statuscenter#
set statusline+=\ %f
set statusline+=%#icons#
"set statusline+=\ %{WebDevIconsGetFileTypeSymbol()}
set statusline+=%= "Right side settings
set statusline+=%#statusright#
set statusline+=\ %c\ \%l:%L
set statusline+=\ %p%%
set statusline+=\ [%n]
]]
