" General
syntax on
set number
set fcs=eob:\ 
set cursorline
set termguicolors
set showmatch mat=2
set pastetoggle=<F2>
set hlsearch incsearch
set ignorecase smartcase
set guicursor+=a:blinkon1
set clipboard+=unnamedplus
set autoindent smartindent
set shiftwidth=2 tabstop=2
set backspace=eol,start,indent
set noruler noshowmode laststatus=0
set wrap linebreak breakindent scrolloff=10
set undofile noswapfile history=500 undolevels=500 backupcopy=yes undodir=$XDG_CACHE_HOME/nvim/undodir

" Theme
colorscheme night_owl

" Move cursor by display lines when wrapping
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" Unsets last search
nnoremap <CR> :noh<CR><CR>:<backspace>

" Save last edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Create parent dir if not exist
function s:MkNonExDir(file, buf)
  if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'

    let dir=fnamemodify(a:file, ':h')
		if !isdirectory(dir)
      call mkdir(dir, 'p')
    endif

  endif
endfunction

augroup BWCCreateDir
  autocmd!
  autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

