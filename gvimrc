colorscheme mydefaults
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set history=1000
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set cmdheight=2

" Line Wrap stuff
set wrap        " wrap lines

" Disable vim help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set cursorline  " highlights the current line

" Way better command completion
set wildmenu
set wildmode=longest:full,list:full
set wildignore=*.swp,*.bak,*.pyc,*.class

" A nice, minimalistic tabline
hi TabLine cterm=bold,underline ctermfg=8 ctermbg=none
hi TabLineSel cterm=bold ctermfg=0 ctermbg=7
hi TabLineFill cterm=bold ctermbg=none

set autoindent		" always set autoindenting on

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

filetype indent on

"set nofoldenable
set nohlsearch
set et
au BufNewFile,BufRead *.htmlt set filetype=html
au BufNewFile,BufRead *.asm set filetype=nasm
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.pp set filetype=puppet

autocmd FileType ruby set sw=2 ts=2
autocmd FileType puppet set sw=2 ts=2
