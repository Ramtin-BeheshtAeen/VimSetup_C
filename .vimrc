"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
"Vundle Package Manager:"
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"All of your Plugins must be added before the following line"
call vundle#end()            " required

"Theme Plugin:"
Plugin 'morhetz/gruvbox'

"AutoComplete Plugin:"
Plugin 'ycm-core/YouCompleteMe'

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
"vim-plug package manager:"
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
call plug#begin()
"List your plugins here"

""" CocInstall  """
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using npm
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
call plug#end()

 
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
"Theme:"
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
autocmd vimenter * ++nested colorscheme gruvbox"
set background=dark


"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
"General Seeting:"
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

autocmd FileType .c syntax spell toplevel
map <F6> :setlocal spell! spelllang=en_us<CR>

highlight link qfSpellErrorWord             SpellBad
highlight link qfSpellErrorWordInContext    Normal
highlight link qfSpellContext               SpecialKey

set number
set autoindent
set smartindent
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
"Realtated to c programming language:"
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
"the following mapping code is used for compiling and running a c programming file"
"In the above command, '<' after '%' removes extension and dot (foo.c => foo), so 
"'%<' is the file basename.
map <F8> :w <CR> :!gcc % -o %< && ./%< <CR>

