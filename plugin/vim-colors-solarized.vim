set background=dark
colorscheme solarized

" Mark the 81st column.
" this is added here because solarize probably resets all the colors before
" applying itself.
highlight OverLength ctermbg=Magenta ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
