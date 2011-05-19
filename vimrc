if v:progname =~? "evim"
    finish
endif

" work's env sets term to something dumb. Make vim not care.
set term=xterm

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

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

"Specifies how keyword completion works
"http://vimdoc.sourceforge.net/htmldoc/options.html#%27complete%27
" . - scan the current buffer for matchs
" w - scan the buffers of other windows
" b - scan other loaded buffers that are in the buffer list
" i - scan current and included files
" t - tag completion
" u - scan the unloaded buffers that are in the buffer list
set complete=.,w,b,i,t,u

syntax on
set t_Co=256
colorscheme mydefaults
set bg=dark

"darkgrey is the only good comment color, fuck all the rest.
hi Comment ctermfg=darkgrey

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
