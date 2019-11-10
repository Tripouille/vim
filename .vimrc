runtime ftplugin/man.vim
syntax on
colo gruvbox
set mouse=a
set nocompatible
set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:>-,space:~
set background=dark
set ruler
set keywordprg=:Man
set backspace=2

map ` :wa<CR>
inoremap ` <ESC>A;<ESC>
inoremap <F1> <ESC>o{<CR>}<ESC>ko
nmap <F2> GI#include <stdio.h><CR>#include <stdlib.h><CR>#include <unistd.h><ESC>Go<CR>int<Tab><Tab>main(void)<CR>{<CR>return(0);<CR>}<ESC>kko
nmap <F3> <ESC>I//<ESC>I<ESC>j
nmap <F4> <ESC>I<ESC>lxxj
nmap <F5> <ESC>oprintf("");<ESC>hhi
nmap <F6> o/*<CR>**<CR>*/<CR><ESC>kkA 
