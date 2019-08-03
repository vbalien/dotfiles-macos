call plug#begin('~/.local/share/nvim/plugged')

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

Plug 'tomasiser/vim-code-dark'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'leafgarland/typescript-vim'

Plug 'Quramy/tsuquyomi'

Plug 'sheerun/vim-polyglot'

Plug 'Yggdroot/indentLine'

Plug 'vim-jp/vim-java'

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.sh --clang-completer --system-libclang
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

call plug#end()


set smartindent
set backspace=2
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set ruler
set title
set hlsearch
set cursorline
syntax on

set clipboard+=unnamedplus

set laststatus=2
set shell=/bin/bash
set fillchars+=vert:\ 

set mouse=a
set encoding=UTF-8
colorscheme codedark

nmap <C-p> :FZF<cr>
nmap <Tab> :NERDTreeToggle<cr>

ca w!! w !sudo tee "%"

" transparent
hi Normal guibg=NONE ctermbg=NONE

let g:airline_theme = 'codedark'
" let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1


let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" /////////// airline ////////////////
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
" ////////////////////////////////////


" let g:ycm_global_ycm_extra_conf = '~/.config/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1


let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1
