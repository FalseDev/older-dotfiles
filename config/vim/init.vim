" Pluggin list start
call plug#begin('~/.nvim/plugged')

" Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Install Conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Conquer of completion extentions
let g:coc_global_extensions = [
   \    'coc-tsserver',
   \    'coc-eslint',
   \    'coc-pairs',
   \    'coc-json',
   \    'coc-python',
   \    'coc-html',
   \    'coc-pairs',
   \    'coc-prettier'
   \    ]


" Filetree
Plug 'preservim/nerdtree'
" Close pairs ()
Plug 'tpope/vim-surround'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['python','javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'vim-airline/vim-airline'

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'takac/vim-hardtime'

" Icons in filetree
Plug 'ryanoasis/vim-devicons'

call plug#end()


syntax on
highlight Normal ctermbg=NONE

" Use theme
set termguicolors
colorscheme dracula 

" KeyBindings
map <C-n> :NERDTreeToggle<CR>

" HardTime
map <C-h> :HardTimeToggle<CR>

" Show number lines by default
set number
set cindent
set visualbell

" Set indent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Prettier auto format
let g:prettier#autoformat = 1
runtime! parts/fzf.vim
