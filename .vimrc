set tabstop=2
set shiftwidth=2
set expandtab

set nocompatible
set wrap
set showcmd " show command line
set showmode " show actual state of file
set showmatch " show pairs of brackets
set vb " turn off beep
set ignorecase
set number "zobrazi cisla riadkov
set mouse=a
set autoread "automatically read the file again when it is changed outside
set shortmess+=A "don't give the ATTENTION message when an existing swap file is found.

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

set t_Co=256
let g:CSApprox_konsole = 1
colorscheme wombat256mod
"colorscheme hellokitty

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set sw=2
set ts=2
set expandtab "insert space characters whenever the tab key is pressed
set clipboard=unnamed
map <F5> :set winheight=1000<CR> :set winheight=1<CR>
map <F2> :NERDTreeToggle<CR>
inoremap <C-Space> <C-X><C-O>
"autocmd VimEnter * wincmd p " automaticaly focused pointer to nerd tree
"
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

let g:solarized_termcolors=256
"set background=light
"colorscheme solarized
"set statusline=%{fugitive#statusline()}
runtime plugin/RainbowParenthsis.vim
