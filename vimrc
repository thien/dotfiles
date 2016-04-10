""" For the plugins, first run the command below:
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Then open vim and type:
" :PluginInstall

set encoding=utf-8
set rtp+=$HOME/.vim/bundle/Vundle.vim
"call vundle#begin()

"call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General options:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
filetype plugin on
filetype indent on
set expandtab
set shellslash
set smartcase
set number
set hls

set laststatus=2
set mouse=a

" For wrapped lines:
set wrap linebreak nolist

set wildmode=longest,list,full
set wildmenu
set numberwidth=3

" No more reaching for Esc
inoremap jk <Esc>
inoremap <Home> <Esc>
inoremap <End> <Esc>


" Copying and pasting with the system clipboard (from visual mode):
noremap <C-c> "+y
set pastetoggle=<F4>
inoremap <C-v> <Esc>:set paste<CR>"+p :set nopaste<CR>i

" Delete previous word with Ctrl+Backspace
imap <C-BS> <C-W>

" Save with Ctrl+S
inoremap <c-s> <Esc>:Update<CR>

" Save in normal mode with \s:
noremap <Leader>s :update<CR>

" Backspace deletes without saving it in a register
map <BS> "_d

" Switch tabs:
noremap <F7> :tabp<CR>
noremap <F8> :tabn<CR>
inoremap <F7> <Esc>:tabp<CR>i
inoremap <F8> <Esc>:tabn<CR>i
hi normal ctermbg=none

" Tabs and hidden characters
set expandtab
set list
set listchars=tab:▸-,trail:~

" Highlight characters exceeding 80 on one line:
highlight OverLength ctermbg=DarkMagenta ctermfg=white guibg=#592929
hi SpecialKey ctermfg=66 guifg=#649A9A

"set cul  " highlight where the cursor is"

"" Get rid of Ex mode, enter into it too often by accident.
"nnoremap Q <Nop>
"" Similarly, get rid of recording mode
"nnoremap q <Nop>

" vim-airline shows the mode, no need to show it twice:
set noshowmode

" Some settings to make vim behave like a conventional text editor
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>i

" For some filetypes you want a warnign for when you go over 80 characters:
function! LongLineGuide()
  highlight OverLength ctermbg=DarkMagenta ctermfg=white guibg=#592929
  hi SpecialKey ctermfg=66 guifg=#649A9A
  match OverLength /\%81v./
endfunction

" Toggle on and off spell check with :call SpellCheck()
function! SpellCheck()
  setlocal spell! spelllang=en_us
endfunction

" Colorscheme
"colorscheme molokai
" Get the same background as the terminal emulator (for transparency effects):
hi normal ctermbg=none

" Make the comments italic except not on the BU cluster because it doesn't
" work there:
let hostname = substitute(system('hostname'), '\n', '', '')
if hostname != "scc1"
  highlight Comment cterm=italic
endif

