scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
" show vim changes in NERDTree window 
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" set your line number to 0, increasing and decreasing above and below 
set relativenumber
" set F12 to open NERDTree
nnoremap <F12> :NERDTreeToggle<CR>
" set Leader then 'v' to go to the file in the NERDTree explorer
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" if opening vim with no file, automatically open NERDTree explorer
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" automatically close NERDTree if it's the only thing open in editor window 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" allow backspace to work in vim correctly 
set backspace=indent,eol,start

" syntax highlighting specifcations 
hi Comment guifg=#7CFC00
hi javaAnnotation ctermfg=White
hi javaString ctermfg=Brown
hi javaScopeDecl ctermfg=Blue
hi javaClassDecl ctermfg=Blue
hi Include ctermfg=Blue
hi javaBoolean ctermfg=Blue
hi javaStorageClass ctermfg=Blue
hi javaNumber ctermfg=Green
hi TypeDef ctermfg=Blue
hi javaConditional ctermfg=Blue
hi javaComment ctermfg=Green
hi javaLineComment ctermfg=Green
hi javaStatement ctermfg=Blue
hi javaType ctermfg=Blue
hi javaConstant ctermfg=White
hi javaExceptions ctermfg=Blue
hi javaOperator ctermfg=Blue
hi LineNr ctermfg=Grey
hi Directory guifg=#FF0000 ctermfg=Blue
hi PreProc guifg=Blue

set clipboard=unnamed

" set tabs to 4 spaces, instead of defaul 8
set tabstop=4


syntax on 
filetype plugin on 
