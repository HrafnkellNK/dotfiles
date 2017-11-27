" Indent related settings
set tabstop=4
set shiftwidth=4
set expandtab

" Misc
set ruler
set encoding=utf-8
set number

" for easy navigation of splitted panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" so I can see whitespaces and tab" so I can see whitespaces and tabs
set list listchars=tab:»·,trail:·

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

" Map F2 to call TrimWhiteSpace
map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>


function ToggleWidth()
  if &shiftwidth == 4
    set tabstop=2
    set shiftwidth=2
    echom "Set indent to 2"
  else
    set tabstop=4
    set tabstop=4
    echom "Set indent to 4" 
  endif
endfunction

" Map F3 to call ToggleWidth
map <F3> :call ToggleWidth()<CR>


" install vim-plug plugin manager if not installed already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" list plugins which are installed in dir ~/.vim/plugged
call plug#begin('~/.vim/plugged')

    Plug 'https://github.com/scrooloose/nerdtree.git'
    Plug 'https://github.com/Valloric/YouCompleteMe.git'
    Plug 'https://github.com/tpope/vim-sensible.git'
    Plug 'https://github.com/morhetz/gruvbox.git'
    Plug 'https://github.com/tpope/vim-surround.git'

" update and intilize plugins specified
" Also takes care of configs 'syntax on' and 'filetype plugin indent on'
call plug#end()

"Color settings
set termguicolors
colorscheme gruvbox
set background=dark

" So NERDTree is automatically opened when vim is run
" autocmd vimenter * NERDTree

" closes nerdtree automatically if only window still open in vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


