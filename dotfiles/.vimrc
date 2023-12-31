" turns on syntax highlighting for vim in terminal
syntax on

let mapleader=" "

" move lines with Ctrl + (Shift) +J/K
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
inoremap <C-j> <Esc>:m +1<CR>gi
inoremap <C-k> <Esc>:m -2<CR>gi
vnoremap <C-j> :m '>+1<CR>gvgv
vnoremap <C-k> :m '<-2<CR>gvgv

" capitalize titles
nmap <leader>c :.!capitalize-title -<CR>
vnoremap <leader>c :.!capitalize-title -<CR>

" select line without leading spaces
nnoremap vil ^vg_

" copy text highlighted with visual using cmd+c
" works with iterm2 only. Adjust settings in iterm2 as shown below
" https://www.dfurnes.com/notes/binding-command-in-iterm
vnoremap <C-c> "+y

" Copy yanked to temp, so you can paste across terminals
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>

" Yank to system clipboard
set clipboard=unnamed

" Allows selection with mouse
" This setting blocks you from copying a selection from mouse
" cancelling for now
" set mouse=a
