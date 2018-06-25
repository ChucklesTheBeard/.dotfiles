syntax on
filetype indent plugin on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set showmatch
set hlsearch
set ignorecase
set smartcase
set ruler
set background=dark
set nocompatible

let python_highlight_all = 1
"set tw=79
set formatoptions+=t

let g:vimwiki_list = [{'path': '~/vimwiki',
                   \ 'syntax': 'markdown',
                      \ 'ext': '.md',
                      \ 'custom_wiki2html': '~/bin/vim/wiki2html.sh',
                      \ 'custom_wiki2html_args': '',
                      \ 'auto_export' : 1}]

execute pathogen#infect()
