set nocompatible               " be iMproved
filetype off                   " required!
set t_Co=256
set guifont=Mensch\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'

" use system clipboard on osx
set clipboard=unnamed

set hidden

" Include user's local vim config
if filereadable(expand("~/.vim/vundle.config"))
  source ~/.vim/vundle.config
endif

" Set leader to ,
let mapleader=','

" Toggle paste mode
set pastetoggle=<F12>

" use arrows to switch buffers
nmap <silent> <S-w> :bn<CR>
nmap <silent> <S-q> :bp<CR>

" use arrow to switch windows
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" better movement in wrapped lines
map j gj
map k gk

" write with sudo
cmap w!! W !sudo tee % >/dev/null

" delete buffer, keep split-window
map ,d :b#<bar>bd#<CR>

" Show YankRing
nnoremap <silent> <leader>y :YRShow<CR>

" clear search highlighting
nmap <silent> <leader>/ :nohlsearch<CR>

" Fast editing and reloading of the .vimrc
map <leader>e :e! ~/.vim/vimrc<cr>
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" some visual helpers
set number
set ruler
syntax on
set wrap
set tw=0
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_hitrail=1
let g:solarized_termtrans=1
colorscheme solarized
set background=dark

set showmatch
set mat=2

" Set encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2
" Show (partial) command in the status line
set showcmd

"Load Fugitive
let g:statusline_fugitive = 1
"Load RVM
let g:statusline_rvm = 1
"Do Not Load Syntastic
let g:statusline_syntastic = 1

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" CTRL-P configuration
let g:ctrlp_map = '<c-x>' " map to ctrl-x
let g:ctrlp_by_filename = 0 " make filename mode standard
let g:ctrlp_match_window_reversed = 1 " reverse match sort order
let g:ctrlp_working_path_mode = 2 " find working-directory
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$',
  \ 'link': 'some_bad_symbolic_link',
  \ }

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" make uses real tabs
au FileType make set noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
au BufRead,BufNewFile *.{pill}    set ft=ruby

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" python support
" --------------
"  don't highlight exceptions and builtins. I love to override them in local
"  scopes and it sucks ass if it's highlighted then. And for exceptions I
"  don't really want to have different colors for my own exceptions ;-)
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" template language support (SGML / XML too)
" ------------------------------------------
" and disable taht stupid html rendering (like making stuff bold etc)
fun! s:SelectHTML()
let n = 1
while n < 50 && n < line("$")
  " check for jinja
  if getline(n) =~ '{%\s*\(extends\|block\|macro\|set\|if\|for\|include\|trans\)\>'
    set ft=htmljinja
    return
  endif
  " check for mako
    if getline(n) =~ '<%\(def\|inherit\)'
      set ft=mako
      return
    endif
    " check for genshi
    if getline(n) =~ 'xmlns:py\|py:\(match\|for\|if\|def\|strip\|xmlns\)'
      set ft=genshi
      return
    endif
    let n = n + 1
  endwhile
  " go with html
  set ft=html
endfun

autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.html,*.htm  call s:SelectHTML()

" epub support
au BufReadCmd *.epub call zip#Browse(expand("<amatch>"))

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Use modeline overrides
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set noswapfile

set undodir=~/.vim/undodir
set undofile

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Replace word under cursor
:nmap <leader>s :s/\(<c-r>=expand("<cword>")<cr>\)/

" Ack word under cursor
:nmap <leader>a :Ack <c-r>=expand("<cword>")<cr>
:nmap <leader>w :Ack <c-r>=expand("def <cword>")<cr>

" Omnicomplete
autocmd BufRead,BufNewFile *.scss set filetype=scss
autocmd FileType {css,scss} set omnifunc=csscomplete#CompleteCSS

" Automatically equalize splits
autocmd VimResized * wincmd =

" switch.vim
nnoremap - :Switch<cr>

" vimux
" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; nocorrect bundle exec rspec " . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>rp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>rl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>ri :VimuxInspectRunner<CR>

" Close all other tmux panes in current window
map <Leader>rx :VimuxClosePanes<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>rq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>rs :VimuxInterruptRunner<CR>

map <Leader>b :EasyBuffer<CR>

cnoremap %% <C-R>=expand('%:h').'/'<cr>

set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo
    exec ":!bundle exec rspec " . a:filename
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_spec_file = match(expand("%"), '_spec.rb$') != -1
    if in_spec_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number)
endfunction

" Run this file
map <leader>t :call RunTestFile()<cr>
" Run only the example under the cursor
map <leader>T :call RunNearestTest()<cr>
" Run all test files
map <leader>a :call RunTests('spec')<cr>
