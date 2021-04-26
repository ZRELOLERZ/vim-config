call plug#begin(stdpath('data'))
	Plug 'vim-airline/vim-airline'
	Plug 'vim-syntastic/syntastic'
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim'
	Plug 'jelera/vim-javascript-syntax'
	Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin on
"
" true colors
set background=dark
set t_Co=256

" set colorsheme
autocmd vimenter * ++nested colorscheme gruvbox

if (has("nvim"))
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
	set termguicolors
endif

set shiftwidth=2

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['slint']
" let g:syntastic_javascript_eslint_exec = "eslint ."
 
highlight Comment cterm=italic gui=italic
set clipboard=unnamed
set showcmd
set noswapfile
set nu rnu " relative line numbering
set ruler
set showmatch " highlight matching brackets
set lazyredraw
set noshowmode
set smartindent

" folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" clears highlights
nnoremap // :noh<return>

" nerd tree toggle
nnoremap <leader>n :NERDTreeFocus<cr>

nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>. :tabn<cr>
nnoremap <leader>, :tabp<cr>
