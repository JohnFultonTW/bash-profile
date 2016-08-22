set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'gmarik/Vundle.vim'
Plug 'scrooloose/nerdtree.git'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar' " Requires http://ctags.sourceforge.net/
Plug 'tpope/vim-surround'
Plug 'sjl/gundo.vim'
Plug 'fatih/vim-go'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"""""Colour schemes""""
Plug 'tomsik68/vim-crystallite'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'jpo/vim-railscasts-theme'
Plug 'bounceme/highwayman'
Plug 'jethrovt/vim-basal-colorscheme'
Plug 'gummesson/stereokai.vim'
Plug 'vim-scripts/sift'
Plug 'lanox/lanox-vim-theme'
Plug 'acoustichero/simple_dark'
Plug 'shaond/vim-guru'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/burnttoast256'
Plug 'noahfrederick/vim-hemisu'
Plug 'changyuheng/color-scheme-holokai-for-vim'
Plug 'eduardoHoefel/matrix.vim'
Plug 'pkukulak/idle'
Plug 'Elle518/Duna'
Plug 'Valloric/vim-valloric-colorscheme'
Plug 'aperezdc/vim-elrond'
Plug 'geetarista/ego.vim'


call plug#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""Use AG if available""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
"""""""""""""""""""""""CTRL P CONFIG""""""""""""""""""""""""""""""""""

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|dist|target|node_modules|build)$',
  \ 'file': '\v\.(exe|so|dll|class|swp)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files=20000

"""""""""""""""""""""""SETTINGS""""""""""""""""""""""""""""""""""


let g:jsx_ext_required = 0
set t_Co=256

syntax enable
set background=dark
set ttimeoutlen=50
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set laststatus=2
let g:airline_powerline_fonts = 1
set updatetime=250

"""""""""""""""""""""""""My favourite colour schemes"""""""""""""""""""""""""

colorscheme basal

"""""""""""""""""""""""""KEY BINDINGS""""""""""""""""""""""""""""""
let mapleader="\\"
noremap <silent> <Leader>nt :NERDTreeToggle<CR>
noremap <silent> <Leader>fnt :NERDTreeFind<CR>
noremap <silent> <Leader>p :CtrlP<CR>
noremap <silent> <Leader>t :TagbarToggle<CR>
noremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""""""""""""""""" AUTO COMMANDS """"""""""""""""""""""""""""

autocmd InsertLeave * :GitGutterAll

"""""""""""""""""" TAGS """""""""""""""""""""""""
" GROOVY
let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'c:class',
        \ 'i:interface',
        \ 'f:function',
        \ 'v:variables',
    \ ]
\ }
