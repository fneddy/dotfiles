set encoding=utf-8

" plugins 
call plug#begin('~/.vim/plugged')
"	Plug 'valloric/youcompleteme'
	Plug 'preservim/nerdtree'
	Plug 'joshdick/onedark.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'vim-scripts/DoxygenToolkit.vim'
	Plug 'chrisbra/csv.vim'
	Plug 'jceb/vim-orgmode'
	Plug 'tpope/vim-speeddating'
	Plug 'git@github.ibm.com:RSCHOE/ColorHighlight.vim.git'
	Plug 'vim-scripts/zoom.vim'
call plug#end()

" FZF
let $FZF_DEFAULT_COMMAND='fd --type f'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" new tab keybindings
nnoremap <C-n> :tabnew +FZF <CR>
nnoremap <C-g> :tabnew +Rg <CR>

" code keybindings for YCM
nnoremap <F2> :YcmCompleter GoToDeclaration <CR>
nnoremap <F3> :YcmCompleter GoToReferences <CR>
nnoremap <F4> :FZF <CR>
let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_max_diagnostics_to_display = 999999999
let g:ycm_add_preview_to_completeopt = 0

" vim sys config
set number
set mouse=a
set tabpagemax=9999
syntax on
set nowrap
set hlsearch
set clipboard=unnamedplus

" color style
colorscheme onedark
set guifont=DejaVu\ Sans\ Mono\ 12
set cursorline 

" make backspace work
set backspace=indent,eol,start

nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
			\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
			\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


