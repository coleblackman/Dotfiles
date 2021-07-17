"~/.config/nvim/init.vim
"You can time travel in vim - :earlier 36s or :later 1m
"<C-w> then HJKL swaps splits
let g:netrw_liststyle = 3

let g:netrw_winsize = 25

let g:netrw_browse_split = 1

nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


call plug#begin()

"Theme = w0ng/vim-hybrid

	"Quick scope changes the color of the first letter of each word"
	Plug 'unblevable/quick-scope'
	Plug 'ThePrimeagen/vim-be-good'
	Plug 'psliwka/vim-smoothie'								

		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }			
			let g:deoplete#enable_at_startup = 1

		Plug 'zchee/deoplete-jedi'


		Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
			let g:instant_markdown_mathjax = 1
			let g:instant_markdown_autostart = 1

		Plug 'wookayin/imagepaste.vim'								
		Plug 'wookayin/vim-typora' 

		"let g:livepreview_previewer = 'skim'

	Plug 'w0ng/vim-hybrid'
	Plug 'vimwiki/vimwiki'
		
	let g:vimwiki_list = [{'path': '~/Google\ Drive\ \(coleblax@gmail.com\)/VimWiki/',
			      \ 'syntax': 'markdown', 'ext': '.md'}]


	Plug 'junegunn/goyo.vim'

	Plug 'vimwiki/vimwiki'

	Plug 'wookayin/imagepaste.vim'

	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'

	"Vim latex support
	Plug 'lervag/vimtex'
		let g:tex_flavor='latex'
	    	let g:vimtex_view_method='zathura'
	    	let g:vimtex_quickfix_mode=0
		let g:vimtex_view_general_viewer = 'open'
		let g:vimtex_view_general_options = '-a Skim'	
		let g:vimtex_compiler_latexmk_engines = {
		    \ '_'                : '-xelatex',
		    \ 'pdflatex'         : '-pdf',
		    \ 'dvipdfex'         : '-pdfdvi',
		    \ 'lualatex'         : '-lualatex',
		    \ 'xelatex'          : '-xelatex',
		    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
		    \ 'context (luatex)' : '-pdf -pdflatex=context',
		    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
		    \}

	Plug 'itchyny/lightline.vim'
	let g:lightline = {
	      \ 'colorscheme': 'nord',
	      \ }

	Plug 'bling/vim-bufferline'


	Plug 'sirver/ultisnips'
	    let g:UltiSnipsExpandTrigger = '<tab>'
	    let g:UltiSnipsJumpForwardTrigger = '<tab>'
	    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

	Plug 'KeitaNakamura/tex-conceal.vim'
	    set conceallevel=1
	    let g:tex_conceal='abdmg'
	    hi Conceal ctermbg=none

call plug#end()


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

set number
set relativenumber
set hidden
set linebreak

if has('gui_running')
	nnoremap <esc> :noh<return><esc>
end
set mouse=a
au FileType python setlocal formatprg=autopep8\ -

