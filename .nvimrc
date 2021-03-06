call plug#begin('~/.vim/bundle')
"Plug 'tomasr/molokai'
" Plug 'pseewald/anyfold'
Plug 'fmoralesc/molokayo'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'plasticboy/vim-markdown'

Plug 'snoe/vim-sexp'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'

Plug 'ntpeters/vim-airline-colornum'
Plug 'kien/rainbow_parentheses.vim'
Plug 'rking/ag.vim'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'rhysd/clever-f.vim'

call plug#end()
let g:clever_f_mark_char = 1

" Fira code configs
set macligatures
set guifont=Fira\ Code:h12
set encoding=utf-8

set nocompatible
set number
set splitbelow
set splitright

" Key remaps
inoremap jk <esc>
nnoremap j gj
nnoremap k gk
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $


" nmap <P  <nop>
" nmap <p  <nop>

vmap > >gv
vmap < <gv

" additional files to ignore when searching with ctrl-p
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]((\.(git|hg|svn))|(build|dist|node_modules|target|out|_build|deps|resources))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }    
" set local working dir accordingly
let g:ctrlp_working_path_mode = 'ra'    

" speed up ctrl p by caching in a single place
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'


nnoremap <F6> :NERDTreeToggle<CR>
let NERDTreeMapOpenSplit='b'
let NERDTreeMapOpenVSplit='v'

let mapleader = " "

" Split navigation remaps to use control-j
nnoremap <C-J>j <C-W><C-J>
nnoremap <C-J>k <C-W><C-K>
nnoremap <C-J>l <C-W><C-L>
nnoremap <C-J>h <C-W><C-H>
nnoremap <C-J>v <C-W>v
nnoremap <C-J>b <C-W>s
nnoremap <C-J>> 5<C-W><
nnoremap <C-J>< 5<C-W>>
nnoremap <C-J>= <C-W>=
nnoremap <C-J>q <C-W>q 

" vim-fireplace remaps
" nnoremap <leader>e :Eval<CR>

" Code Folding
" set foldmethod = indent 
" set foldnestmax = 10
" set foldlevel = 2
" nnoremap f za
" vnoremap f zf

syntax on
" autocmd Filetype * AnyFoldActivate

" OSX interactions
set mouse=a
set clipboard=unnamed

colo seoul256-light
set background=dark

" Cursor details
set cursorline
set scrolloff=10 " enforced cursor offset from top / bottom

" allow unsaved buffers
set hidden
set backspace=2
set gfn=Monaco:h16
set visualbell t_vb=
set signcolumn=yes
set laststatus=2
set updatetime=300

" better command line completion
set wildmode=longest,list,full
set wildmenu
set completeopt=longest,menuone

" highlight matching [{()}]
set showmatch

" show partial commands
set showcmd

" highlight searchs
set hlsearch
set incsearch

" case insensitive unless caps
set ignorecase
set smartcase

set ruler
set confirm
set notimeout ttimeout ttimeoutlen=200

" disable sticky esc key 
if has('nvim')
  set ttimeout
  set ttimeoutlen=0
endif

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2

" save on blur
au FocusLost * silent! wa

syntax on

" So it matches D and C
map Y y$
map <F1> <nop>
imap <F1> <nop>

" close buffers like browser tabs
noremap <expr><leader>q (bufnr("") == getbufinfo({"buflisted": 1})[-1].bufnr ? ":bp" : ":bn")."<bar>bd #<CR>"

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffer_nr_format = '%s|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#current_first = 0
let g:airline#extensions#tabline#show_splits = 1

let g:airline#extensions#hunks#enabled = 0
let g:airline_powerline_fonts = 1
let g:multi_cursor_exit_from_insert_mode=0
nmap [b <Plug>AirlineSelectPrevTab
nmap ]b <Plug>AirlineSelectNextTab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9


" RainbowParen config
let g:rbpt_colorpairs = [
      \ ['201', '#FF00FF'],
      \ ['yellow', 'yellow'],
      \ ['cyan', 'cyan'],
      \ ['red', 'firebrick1'],
      \ ]

au VimEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:markdown_fenced_languages = ['css', 'js=javascript', 'clojure']
let g:vim_markdown_folding_disabled = 1

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp/

set statusline+=%#warningmsg#
set statusline+=%*

" sudo to write file
cmap w!! %!sudo tee > /dev/null %

" omni complete
inoremap <Nul> <C-x><C-o>

" clear search
nnoremap <silent> <C-L> :nohls<CR><C-L>

" whitespace
autocmd FileType markdown,sql,c,cpp,python,ruby,javascript,html,java,coffee,less,scss,css,clojure,yaml,make autocmd BufWritePre <buffer> :exe '%s/\s\+$//e'

au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.json.template set filetype=javascript
au BufNewFile,BufRead *.json set filetype=javascript

nnoremap <silent> <C-P> :GFiles --cached --exclude-standard --others<CR>
command Bd %bd|e#|bd#

" Clojure
let g:sexp_enable_insert_mode_mappings = 1

let g:clojure_fuzzy_indent_patterns = ['^doto', '^with', '^def', '^let', 'go-loop', 'match', '^context', '^GET', '^PUT', '^POST', '^PATCH', '^DELETE', '^ANY', 'this-as', '^are', '^dofor']
let g:clojure_align_multiline_strings = 1
let g:clojure_maxlines = 100
let g:clj_refactor_prefix_rewriting=0

" CLOJURE BINDINGS
" nmap <Leader>F <Plug>FireplacePrint<Plug>(sexp_outer_top_list)``
" nmap <Leader>f <Plug>FireplacePrint<Plug>(sexp_outer_list)``
nmap <Leader>g <Plug>FireplacePrint<Plug>(sexp_inner_element)``
nmap <Leader>e <Plug>FireplacePrint<Plug>(sexp_outer_list)``
nmap <Leader>E :%Eval<CR>
nmap <Leader>d [<C-D>
" nmap <Leader>R cqp(require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh)<CR>
nmap <Leader>R cqp(require 'clojure.test) (clojure.test/run-tests)<CR>
nmap <Leader>w( ysie)
nmap <Leader>w[ ysie]
nmap <Leader>w{ ysie}
nmap <Leader>w" ysie"
vmap <Leader>w( S)
vmap <Leader>w[ S]
vmap <Leader>w{ S}
vmap <Leader>w" S"

nmap <S-Right> <Plug>(sexp_capture_next_element)<Plug>(sexp_indent)
nmap <S-Left> <Plug>(sexp_emit_tail_element)<Plug>(sexp_indent)
imap <S-Right> <C-O><Plug>(sexp_capture_next_element)<C-O><Plug>(sexp_indent)
imap <S-Left> <C-O><Plug>(sexp_emit_tail_element)<C-O><Plug>(sexp_indent)

let g:sexp_mappings = {
      \ 'sexp_outer_list':                'af',
      \ 'sexp_inner_list':                'if',
      \ 'sexp_outer_top_list':            'aF',
      \ 'sexp_inner_top_list':            'iF',
      \ 'sexp_outer_string':              'as',
      \ 'sexp_inner_string':              'is',
      \ 'sexp_outer_element':             'ae',
      \ 'sexp_inner_element':             'ie',
      \ 'sexp_move_to_prev_bracket':      '((',
      \ 'sexp_move_to_next_bracket':      '))',
      \ 'sexp_indent_top':                '=-',
      \ 'sexp_round_head_wrap_element':   '<Leader>W',
      \ 'sexp_swap_element_backward':     '<Leader><',
      \ 'sexp_swap_element_forward':      '<Leader>>',
      \ 'sexp_raise_element':             '<Leader>k',
      \ 'sexp_emit_head_element':         '<Leader>l',
      \ 'sexp_emit_tail_element':         '<Leader>H',
      \ 'sexp_capture_prev_element':      '<Leader>h',
      \ 'sexp_capture_next_element':      '<Leader>L',
      \ 'sexp_flow_to_next_open_bracket': '<M-f>',
      \ 'sexp_flow_to_prev_open_bracket': '<M-b>',
      \ } 



"call lsp#add_filetype_config({
"          \ 'filetype': 'clojure',
"          \ 'name': 'clojure-lsp',
"          \ 'cmd': ['bash', '-c', 'cd /Users/case/dev/lsp/ && lein run'],
"          \ })

" COC
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" auto-import missing clojure libs
nnoremap <silent> cram :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'add-missing-libspec', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
" clean clojure namespaces (sort them)
nnoremap <silent> crcn :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'clean-ns', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
" move form into let
nnoremap <silent> crml :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'move-to-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>    " extract form into function
nnoremap <silent> cref :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'extract-function', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Function name: ')]})<CR>

" CoC code navigation
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <leader>rn <Plug>(coc-rename)
command! -nargs=0 Format :call CocAction('format')

"let g:coc_enable_locationlist = 0
"autocmd User CocLocationsChange CocList --normal location

inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [l <Plug>(coc-diagnostic-prev)
nmap <silent> ]l <Plug>(coc-diagnostic-next)
nmap <silent> [k :CocPrev<cr>
nmap <silent> ]k :CocNext<cr>
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! Expand(exp) abort
    let l:result = expand(a:exp)
    return l:result ==# '' ? '' : "file://" . l:result
endfunction

" Highlight symbol under cursor on CursorHold      
autocmd CursorHold * silent call CocActionAsync('highlight')
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)


nnoremap <silent> crcc :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'cycle-coll', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crth :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtt :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtf :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtl :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cruw :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-thread', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crua :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crml :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'move-to-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
nnoremap <silent> cril :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'introduce-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
nnoremap <silent> crel :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'expand-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cram :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'add-missing-libspec', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crcn :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'clean-ns', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crcp :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'cycle-privacy', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cris :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'inline-symbol', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cref :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'extract-function', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Function name: ')]})<CR>

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>aq  <Plug>(coc-fix-current)
" workspace symbols 
nnoremap <silent><leader>s  :<C-u>CocList -I symbols<cr>

autocmd BufReadCmd,FileReadCmd,SourceCmd jar:file://* call s:LoadClojureContent(expand("<amatch>"))
 function! s:LoadClojureContent(uri)
  setfiletype clojure
  let content = CocRequest('clojure-lsp', 'clojure/dependencyContents', {'uri': a:uri})
  call setline(1, split(content, "\n"))
  setl nomodified
  setl readonly
endfunction

highlight Normal guibg=#101010 guifg=white
highlight CursorColumn guibg=#202020
highlight Keyword guifg=#FFAB52
highlight CursorLine guibg=#202020
hi clear CocHighlightText
hi CocHighlightText guibg=#472004

" autocmd VimEnter *.clj,*.cljs FireplaceConnect local.aclaimant.com:7000 

" resolves issues with <leader>h mappings from gitgutter 
let g:gitgutter_map_keys = 0
