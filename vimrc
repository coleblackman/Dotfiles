

"Smoother scrolling (slightly)
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

"configure wildmenu (small tab autocomplete menu)
set wildmenu
set wildmode=longest:list,full

au FileType python setlocal formatprg=autopep8\ -


set nofoldenable

"set buffers to exist in the background
set hidden

set statusline+=%F
set ttimeoutlen=5

set laststatus=2

"set GUI background
set background=dark

"set smooth breaking of text instead of interrupting words
set linebreak

set splitbelow

"set the left panel to show numbers relative to current position and one
"current position indicator
set number
set relativenumber

set noshowmode

syntax on

set nocompatible
filetype plugin indent on

"set the default shell to be bash instead of zsh
"set shell=bash\ -i

" set backspace=indent,eol,starta
set confirm
set mouse=n

call plug#begin()
	Plug 'unblevable/quick-scope'

	Plug 'ThePrimeagen/vim-be-good'

	Plug 'dstein64/vim-smile'

	"Utilities for other plugins
	Plug 'MarcWeber/vim-addon-mw-utils'
  	Plug 'tomtom/tlib_vim'

	Plug 'lervag/vimtex'
	
	Plug 'mhinz/vim-startify'

	"Themes
	Plug 'w0ng/vim-hybrid'
	"Plug 'chuling/vim-equinusocio-material'
	"Plug 'tomasiser/vim-code-dark'
	"Plug 'dracula/vim'
	"Plug 'joshdick/onedark.vim'
	"Rigel theme
	"Plug 'cocopon/iceberg.vim'
	"Plug 'sonph/onehalf', {'rtp': 'vim/'}
	"Plug 'ayu-theme/ayu-vim'


	"Airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'dhruvasagar/vim-table-mode'

	Plug 'junegunn/goyo.vim'

	Plug 'wookayin/imagepaste.vim'
	
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

	"Removes spamming of hjkl
	"Plug 'takac/vim-hardtime'

	"VIMWIKI
	Plug 'vimwiki/vimwiki'
	
	"vimrc improvements
	"Plug 'tpope/vim-vinegar'
	
	"Plug 'dense-analysis/ale'
	
	Plug 'francoiscabrol/ranger.vim'
	" may be useful to do something like: alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
	
	" Trims unnecessary spaces, required for plasticboy
	Plug 'godlygeek/tabular'
	" https://vimawesome.com/plugin/instant-markdown-vim

	" A Vim Plugin for Lively Previewing Pandoc PDF Output - :- LLPStartPreview
	Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
	let g:livepreview_previewer = 'your_viewer'
	

	"Tpope vim-commentary - gcc to comment out a line. gc to comment the target of
	"a motion (such as gcap for a paragraph)
	Plug 'tpope/vim-commentary'

call plug#end()

let g:livepreview_previewer = 'skim'

let g:netrw_liststyle = 3

let g:hardtime_default_on = 1

let g:vimwiki_list = [{'path': '~/Google\ Drive\ \(coleblax@gmail.com\)/VimWiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:netrw_browse_split = 1

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
let g:netrw_winsize=20
let g:hardtime_default_on = 1
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set t_Co=256
set cursorline
colorscheme hybrid
let g:airline_theme='hybrid'
"onehalfdark
set guioptions-=e 
set showtabline=2
set guioptions=
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:tex_flavor='xelatex'
let g:vimtex_compiler_progname = 'nvr'
"let g:vimtex_view_method = 'skim'
"let g:vimtex_view_automatic = 0
"let g:vimtex_view_use_temp_files = 1
"let g:vimtex_view_enabled = 0






" Settings
set grepprg=grep\ -nH\ $*
set sw=2
set iskeyword+=:
let g:tex_flavor='latex'
let g:tex_fold_enabled=1
let g:tex_nospell=1
let g:tex_no_error=1

let g:vimtex_view_general_viewer
      \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']

function! UpdateSkim(status)
  if !a:status | return | endif

  let l:out = b:vimtex.out()
  let l:tex = expand('%:p')
  let l:cmd = [g:vimtex_view_general_viewer, '-r']
  if !empty(system('pgrep Skim'))
    call extend(l:cmd, ['-g'])
  endif
  if has('nvim')
    call jobstart(l:cmd + [line('.'), l:out, l:tex])
  elseif has('job')
    call job_start(l:cmd + [line('.'), l:out, l:tex])
  else
    call system(join(l:cmd + [line('.'),
          \ shellescape(l:out), shellescape(l:tex)], ' '))
  endif
endfunction
