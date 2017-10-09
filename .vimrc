call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'andrewradev/switch.vim'
Plug 'beloglazov/vim-online-thesaurus'
Plug 'dockyard/vim-easydir'
Plug 'godlygeek/tabular'
Plug 'ivyl/vim-bling'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'justincampbell/vim-eighties'
Plug 'justincampbell/vim-railscasts'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'shougo/unite.vim'
Plug 'shougo/vimfiler.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/multvals.vim'
Plug 'vim-scripts/syntaxattr.vim'
Plug 'wikitopian/hardmode'
Plug 'zerowidth/vim-copy-as-rtf'

" Clojure
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-leiningen'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

" CoffeeScript
Plug 'kchmck/vim-coffee-script'

" CSS
Plug 'ap/vim-css-color'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'lucidstack/hex.vim'
Plug 'mattreduce/vim-mix'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'sanmiguel/helpex.vim'
Plug 'slashmili/alchemist.vim'

" Git
Plug 'severeoverfl0w/deoplete-github'

" Go
Plug 'benmills/vim-golang-alternate'
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/nvim/symlink.sh' }
" Plug 'zchee/deoplete-go', { 'do': 'make'}

" Haskell
Plug 'dag/vim2hs'
Plug 'eagletmt/ghcmod-vim'
Plug 'shougo/vimproc.vim', { 'do': 'make' }

" HCL
Plug 'fatih/vim-hclfmt'
Plug 'b4b4r07/vim-hcl'

" JavaScript
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'

" JSON
Plug 'elzr/vim-json'

" Markdown
Plug 'nelstrom/vim-markdown-folding'
Plug 'tpope/vim-markdown'

" Nginx
Plug 'evanmiller/nginx-vim-syntax'

" Nim
Plug 'zah/nimrod.vim'

" OCaml
Plug 'ocamlpro/ocp-indent'
Plug 'the-lambda-church/merlin', { 'do': './configure && make' }

" PureScript
Plug 'raichoo/purescript-vim'

" Ruby
Plug 'alexbel/vim-rubygems'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'fishbullet/deoplete-ruby'
Plug 'hwartig/vim-seeing-is-believing'
Plug 'jgdavey/vim-blockle'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'vim-ruby/vim-ruby'

" Rust
Plug 'wting/rust.vim'

" Scala
Plug 'derekwyatt/vim-scala'

" Shell
Plug 'markcornick/vim-bats'
Plug 'rosstimson/bats.vim'

" Slim
Plug 'slim-template/vim-slim'

" Swift
Plug 'keith/swift.vim'

" Terraform
Plug 'bkad/vim-terraform'

" Thrift
Plug 'solarnz/thrift.vim'

call plug#end()

" MacVim
set guifont=Monaco:h18
set guioptions+=c " No popup dialogs
set guioptions-=L " Hide vertical scrollbars
set guioptions-=r " Hide scrollbars

" Mouse
set mouse=a

" Automatically reload files
set autoread

" Lazily redraw screen
set lazyredraw

" Set swap location
set directory=/tmp

" Colors
autocmd ColorScheme * highlight Visual ctermbg=236
colorscheme railscasts
set background=dark
syntax on
highlight! link Conceal SpecialKey
highlight! link qfLineNr WarningMsg

" Sign and number columns
highlight SignColumn ctermbg=0 guibg=#111111
highlight NonText ctermbg=0 ctermfg=0 guibg=#000000
highlight Vertsplit ctermbg=233 ctermfg=233 guibg=#111111

" Tabs
highlight! link TabLineFill CursorColumn
highlight TabLine ctermfg=7 ctermbg=234 cterm=none
highlight TabLineSel ctermfg=166 ctermbg=234
map <Tab> :tabn<cr>
map <S-Tab> :tabp<cr>

" Line numbers
set number
set numberwidth=1

" Don't wrap text
set nowrap

" Backspace over anything
set backspace=eol,indent,start

" Soft tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=4

" Fancy characters
set listchars=tab:›\ ,trail:·,extends:⇢,precedes:⇠
autocmd FileType go set listchars=tab:\ \ ,trail:·,extends:⇢,precedes:⇠
set list

" Highlight trailing whitespace
highlight! link ExtraWhitespace Todo
autocmd BufWinEnter,InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufWinLeave * call clearmatches()

" Filetype mappings
autocmd BufNewFile,BufRead *.crl set filetype=ruby
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
autocmd BufNewFile,BufRead *.md,*.markdown set filetype=markdown
autocmd BufNewFile,BufRead *.skim set filetype=slim

" Filetype-specific settings
autocmd FileType elixir inoremap \|> \|><Esc>==la
autocmd FileType elixir let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
autocmd FileType elixir nnoremap gd :Ag '^\s*def\w+\s.*[\s\.]<cword>[\s$]'<cr><cr>
autocmd FileType gitcommit,markdown set nonumber
autocmd FileType gitcommit,markdown set spell
autocmd FileType markdown,"" set wrap
autocmd FileType haskell set shiftwidth=4
autocmd FileType haskell nnoremap <Leader>hc :GhcModCheckAsync<cr>
autocmd FileType haskell nnoremap <Leader>ht :GhcModType<cr>
autocmd FileType markdown,"" set wrap
autocmd FileType ocaml nnoremap <Leader>ot :MerlinTypeOf<cr>
autocmd FileType ruby nnoremap gd :Ag '^\s*(def\|class\|module)\s.*(self\.)?<cword>[\s\($]'<cr>
autocmd FileType ruby nnoremap <Leader>d Orequire 'debugger'; debugger<Esc>
autocmd FileType ruby nnoremap <Leader>p Orequire 'pry'; binding.pry<Esc>
autocmd FileType terraform inoremap #{ ${
autocmd FileType terraform inoremap do<cr> {<cr><cr>}<Up><Tab>
autocmd FileType terraform inoremap {<cr> {<cr><cr>}<Up><Tab>
autocmd BufEnter *.es6 set filetype=javascript
autocmd BufEnter *.job set filetype=nomad

" 80-column line
set colorcolumn=81
highlight! link ColorColumn CursorColumn

" Smart search
set incsearch
set ignorecase
set smartcase

" Smarter split opening
set splitbelow
set splitright

" Scroll before the cursor reaches the edge
set scrolloff=5

" Show leader keystrokes in the bottom right
set showcmd

" Extra leader mappings
nmap , \
vmap , \

" Always show filename
set laststatus=2

" VimFiler
let g:netrw_menu = 0
let g:vimfiler_as_default_explorer = 1

" Indent-Guides
autocmd VimEnter * :IndentGuidesEnable
let g:indent_guides_auto_colors = 0
highlight IndentGuidesEven ctermbg=233
highlight IndentGuidesOdd ctermbg=black

" NERDCommenter
let NERDRemoveExtraSpaces=1
let NERDSpaceDelims=1

map <leader>/ <plug>NERDCommenterToggle<CR>

" Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" rainbow_parentheses.vim
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
      \ ['lightblue',  'lightblue'],
      \ ['lightgreen', 'lightgreen'],
      \ ['lightred',   'lightred'],
      \ ['darkblue',   'darkblue'],
      \ ['darkgreen',  'darkgreen'],
      \ ['darkred',    'darkred'],
      \ ['blue',       'blue'],
      \ ['green',      'green'],
      \ ['red',        'red'],
      \ ]
let g:rbpt_colorpairs = g:rbpt_colorpairs + g:rbpt_colorpairs
let g:rbpt_max = len(g:rbpt_colorpairs)

" seeing-is-beleiving
map <F4> <Plug>(seeing-is-believing-mark)
imap <F4> <Plug>(seeing-is-believing-mark)
map <F5> <Plug>(seeing-is-believing-run)
imap <F5> <Plug>(seeing-is-believing-run)

" vim-airline
let g:airline_left_alt_sep=''
let g:airline_right_alt_sep=''
let g:airline_section_a='' " mode
let g:airline_section_b='' " branch
let g:airline_section_z='' " ruler
let g:airline_theme='monochrome'

" Sort
vnoremap <Leader>s :sort<cr>

" Alignment
vnoremap <Leader>a# :Tabularize /#<CR>
vnoremap <Leader>a( :Tabularize /(/l1l0<CR>
vnoremap <Leader>a, :Tabularize /,\zs/l0r1<CR>
vnoremap <Leader>a- :Tabularize /-/l1r0<CR>
vnoremap <Leader>a/ :Tabularize /\/\/<CR>
vnoremap <Leader>a: :Tabularize /:\zs/l0r1<CR>
vnoremap <Leader>a; :Tabularize /;\zs/l0r1<CR>
vnoremap <Leader>a<Space> :Tabularize /<Space><CR>
vnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a\| :Tabularize /\|<CR>

" Macro repeat
nnoremap <Space> @q


" Exit insert mode with jk/kj
inoremap jk <Esc>
inoremap kj <Esc>

" Frequently used operations
command! ConvertCamelCaseToUnderScore :%s/\<\u\|\l\u/\=len(submatch(0)) == 1 ? tolower(submatch(0)) : submatch(0)[0].'_'.tolower(submatch(0)[1])/gc
command! ConvertRubyHashSyntax19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/g
command! DeleteComments :g/^\s*#\|\/\//d
command! RemoveTrailingWhitespace :%s/ \+$//g

" The Silver Searcher
let g:ag_binary = system("which ag | xargs echo -n")

" CtrlP
let g:ctrlp_max_height = 100
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = g:ag_binary . ' %s -l --nocolor -g ""'
let g:ctrlp_working_path_mode = ''

" Switch
nnoremap <leader>- :Switch<CR>

" Wrap quickfix text
autocmd FileType qf setlocal wrap linebreak

" Automatically adjust quickfix height
autocmd FileType qf execute min([line("$"), &lines * 3/5]) . "wincmd _"

" Remove color column in quickfix
autocmd FileType qf set colorcolumn=0

" vim-go
let g:go_fmt_command = "goimports"

" Deoplete
let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert

" Goyo/Limelight
let g:limelight_conceal_ctermfg = 'gray'

function! s:goyo_enter()
  Limelight
  silent !tmux set status off
endfunction

function! s:goyo_leave()
  Limelight!
  silent !tmux set status on
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Dispatch
nnoremap <Leader>f :FocusDispatch<space>''<left>
nnoremap <Leader>F :FocusDispatch!<cr>
nnoremap <Leader>l :Copen<cr>
nnoremap <Leader>L :Copen!<cr>
nnoremap <Leader>t :wa<cr>:Dispatch<cr>
nnoremap <Leader>T :wa<cr>:Dispatch!<cr>
autocmd FileType go let b:dispatch = 'go test'
autocmd FileType haskell let b:dispatch = 'cabal test --show-details=always'
autocmd FileType make let b:dispatch = 'make'
autocmd FileType sh let b:dispatch = 'make'
autocmd FileType terraform let b:dispatch = 'terraform plan -input=false'
autocmd BufEnter *.bats compiler bats
autocmd BufEnter *.bats let b:dispatch = 'bats --tap %'
autocmd BufEnter *.ex let b:dispatch = 'mix test'
autocmd BufEnter *.exs let b:dispatch = 'mix test %'
autocmd BufEnter *.gemspec let b:dispatch = 'bundle'
autocmd BufEnter *_spec.rb let b:dispatch = 'bundle exec rspec --format progress %'
autocmd BufEnter *_test.coffee let b:dispatch = 'npm test'
autocmd BufEnter *_test.js let b:dispatch = 'npm test'
autocmd BufEnter *_test.rb let b:dispatch = 'bundle exec testrb %'
autocmd BufEnter Gemfile let b:dispatch = 'bundle'
autocmd BufEnter db/migrate/*.rb let b:dispatch = 'bundle exec rake db:migrate'
autocmd BufEnter mix.exs let b:dispatch = 'mix deps.get'
