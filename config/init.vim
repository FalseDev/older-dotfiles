" Pluggin list start
call plug#begin('~/.nvim/plugged')

" Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Install Conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
   \    'coc-tsserver',
   \    'coc-eslint'
   \    ]


" Filetree
Plug 'preservim/nerdtree'
" Close pairs ()
Plug 'jiangmiao/auto-pairs'
" Icons in filetree
Plug 'ryanoasis/vim-devicons'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Theme
Plug 'mhartington/oceanic-next'

call plug#end()

" Use theme
"set termguicolors
"colorscheme OceanicNext

" KeyBindings
map <C-n> :NERDTreeToggle<CR>

" Show number lines by default
set number
" Set indent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Prettier auto format
" let g:prettier#autoformat = 1

