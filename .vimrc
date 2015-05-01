:syntax on
:set autoindent
:set sts=2
:hi mailQuoted1 ctermfg=darkgreen
:set paste
:colorscheme desert
:set tabstop=2
:set expandtab
:set shiftwidth=2

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif 
