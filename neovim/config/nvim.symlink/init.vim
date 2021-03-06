
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
set nocompatible
set number
set autoread
set noincsearch

" Files I never want to see in CtrlP
set wildignore=*/.git/*,*.pyc,*.class,*.jar,*.war,out/**

" Get swap files out of the way
set directory=/private/tmp//,/tmp//

" Local commands
let mapleader = ","
let localmapleader = ","
nmap <Leader>gc :silent !git add -A<CR>:Gcommit<CR>

" Terminal config
let g:terminal_scrollback_buffer_size = 10000
nmap <Leader>R :call eraserhd#goto("repl")<CR>
nmap <Leader>r :call eraserhd#goto("repl", "insert")<CR>
nmap <Leader>t :call eraserhd#goto("todo")<CR>
nmap <Leader><Leader> :call eraserhd#repeat_last_repl_command()<CR>
tnoremap <Esc> <C-\><C-n>:call eraserhd#leave_insert()<CR>

" File types
augroup Scheme
  autocmd!
  autocmd FileType scheme hi Error NONE|set sts=2 sw=2 et lisp
augroup end

augroup JavaScript
  autocmd!
  autocmd FileType javascript,json set sts=2 sw=2 ai et
augroup end

augroup VimL
  autocmd!
  autocmd FileType vim set sts=2 sw=2 ai et
augroup end
