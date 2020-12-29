"Save upon leaving insert mode

autocmd InsertLeave * write




let g:netrw_browse_split = 1

let g:netrw_liststyle = 3

let g:netrw_winsize = 25

"Disable default backspace functionality in insert mode
set backspace=indent,eol,start


call plug#begin('~/.vim/plugged')

	"Quick scope changes the color of the first letter of each word"
	Plug 'unblevable/quick-scope'

	Plug 'reedes/vim-colors-pencil'

	"Vim-hybrid theme
	Plug 'w0ng/vim-hybrid'

	Plug 'wookayin/imagepaste.vim'

	"Dependency for something idk
	Plug 'tomtom/tlib_vim'

	Plug 'itchyny/lightline.vim'
	let g:lightline = {
	      \ 'colorscheme': 'nord',
	      \ }

	Plug 'bling/vim-bufferline'

	Plug 'psliwka/vim-smoothie'

	Plug 'wookayin/imagepaste.vim'

	Plug 'wookayin/vim-typora'

	Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
	    let g:instant_markdown_mathjax = 1
	    let g:instant_markdown_autostart = 1

	Plug 'sirver/ultisnips'
	    let g:UltiSnipsExpandTrigger = '<tab>'
	    let g:UltiSnipsJumpForwardTrigger = '<tab>'
	    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

	Plug 'honza/vim-snippets'

	Plug 'lervag/vimtex'
	    let g:tex_flavor='xelatex'
	    let g:vimtex_view_method='zathura'
	    let g:vimtex_quickfix_mode=0

	Plug 'KeitaNakamura/tex-conceal.vim'
	    set conceallevel=1
	    let g:tex_conceal='abdmg'
	    hi Conceal ctermbg=none
"	    hi Conceal ctermbg=NONE
"	    hi Conceal ctermfg=NONE
"	    hi Conceal guifg=NONE
    "	    hi Conceal guibg=NONE


call plug#end()

set laststatus=2

augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
augroup END

set ttimeout
set ttimeoutlen=50
set timeoutlen=3000

set termguicolors
set incsearch
set splitright
set nohlsearch

syntax enable

"set clipboard+=unnamedplus share clipboard with macos
set noshowmode
set wildmenu
set wildmode=longest:list,full

colorscheme hybrid

"colorscheme pencil



set number
set relativenumber
set hidden
set linebreak

if has('gui_running')
	nnoremap <esc> :noh<return><esc>
end
set mouse=a
au FileType python setlocal formatprg=autopep8\ -


setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

 hi Conceal guibg=White guifg=Black
 hi clear Conceal
