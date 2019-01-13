" Enable syntax highligthing.
syntax on
" Enable file based indentation.
filetype plugin indent on

colorscheme koehler
" Respect indentation when starting a new line.
set autoindent
" Expand tabs to spaces.
set expandtab
" Number of spaces tab is counted for.
set tabstop=4
" Number of spaces to use for autoindent.
set shiftwidth=4 
" Fix backspace behaivor on most terminals.
set backspace=2 
" Search highlight
set hlsearch

" Place all swap files in single directory
let s:swapdir = expand('~/.vim/tmp/swap')
let &directory = s:swapdir
if !isdirectory(s:swapdir)
    call mkdir(s:swapdir, 'p')
endif

" Set up persistent undo across all files
set undofile
let s:undodir = expand('~/.vim/tmp/undodir')
let &undodir = s:undodir 
if !isdirectory(s:undodir)
    call mkdir(s:undodir, 'p')
endif

" Load help files for all plugins.
silent! helptags ALL

" Manage plugins with vim-plug
call plug#begin()
" python jinja2 syntax
Plug 'lepture/vim-jinja'
call plug#end()

"vim-jinja config
autocmd FileType j2 set ft=jinja

" Fast split navigation with <Ctrl> + hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" Fast term navigation with <Ctrl> + hjkl."
tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>

"html5 template
function Html5Template()
    :read ~/.vim/templates/html5.template
endfunction
