if v:progname =~? "evim"
    finish
endif

" Use old regex engine for speed
set re=1
set ttyfast
set lazyredraw

call pathogen#infect()
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


set t_Co=256
syntax on
set bg=dark
colorscheme mydefaults

set autoindent		" always set autoindenting on

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

filetype indent on

set nohlsearch
set et
au BufNewFile,BufRead *.htmlt set filetype=html
au BufNewFile,BufRead *.asm set filetype=nasm
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.pp set filetype=puppet
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.rabl set filetype=ruby
au BufNewFile,BufRead Capfile set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead *.vp,*.fp,*.gp,*.vs,*.fs,*.gs,*.tcs,*.tes,*.cs,*.vert,*.frag,*.geom,*.tess,*.shd,*.gls,*.glsl set ft=glsl330

autocmd FileType ruby set sw=2 ts=2
autocmd FileType puppet set sw=2 ts=2
autocmd FileType yaml set sw=2 ts=2
autocmd FileType make set noet
autocmd FileType coffee set ts=4 sw=4

" Custom commands
map , <Leader>
map <Leader>, :NERDTreeToggle<cr>
map <Leader>f :NERDTreeFind<cr>
map <Leader>b :BufExplorer<cr>

" Buffer switching easier
set hidden
map <C-right> :bnext<cr>
map <C-left> :bprev<cr>

" Better comment formatting defaults
set formatoptions+=ro

if has('patch541')
  set formatoptions+=j
end

" Prevent the global gvimrc for macvim (/Applications/MacVim/.../gvimrc) from
" setting colorscheme and overriding what we set here.
let macvim_skip_colorscheme=1
set guifont=Consolas:12
"set transparency=10

" Inspect color under cursor for color scheme debugging
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>^M

let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

" The only correct unicode encoding.
set encoding=utf-8

" Allow mousing in terminals
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
