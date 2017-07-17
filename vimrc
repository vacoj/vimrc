"Credit joshdick
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
let g:neodark#solid_vertsplit = 1 " default: 0
let g:neodark#background = '#202020'
filetype off
execute pathogen#infect()
syntax on
set mouse=a
set tabstop=4
set number
set linespace=5
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="neodark"
let g:deepspace_italics=1
let g:lucario_italic=1
let g:lucario_bold=1
set background=dark
autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
set t_Co=256
set termguicolors
set guifont=Operator\ Mono\ Book:h12 
colorscheme neodark
let g:one_allow_italics=1
set background=dark " for the dark version
" set background=light " for the light _VERSION
set clipboard=unnamed
let g:go_fmt_command = "goimports"
au FileType go nmap <Ctrl-F5> :GoCoverageToggle -short<cr>
au FileType go nmap <leader>gt :GoDeclsDir<cr>
let g:go_auto_type_info = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4
" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
au VimEnter * NERDTreeToggle
nmap <F3> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
highlight Comment cterm=italic
au BufRead,BufNewFile *.md set filetype=markdown
au Filetype go set makeprg=go\ build\ ./...
nmap <F5> :make<CR>:copen<CR>
au BufWritePost * silent! !ctags -R &

function! s:GoVet()
    cexpr system("go vet " . shellescape(expand('%')))
    copen
endfunction
command! GoVet :call s:GoVet()

function! s:GoLint()
    cexpr system("golint " . shellescape(expand('%')))
    copen
endfunction
command! GoLint :call s:GoLint()

set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=0
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let vim_markdown_preview_github=1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ["golint", "govet", "errcheck"]
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["go"] }
let g:go_list_type = "quickfix"
autocmd VimEnter * nested :TagbarOpen
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = " "
let g:airline#extensions#tabline#left_alt_sep = "|""

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

fun! s:MyNERDTreeSetting()
  fun! s:DoubleClickBehavior()
    if match(getline("."), "▸") == -1 && match(getline("."), "▾") == -1
      map <buffer> <2-LeftMouse> t
    else
      map <buffer> <2-LeftMouse> o
    endif
  endfun

  autocmd CursorMoved * call s:DoubleClickBehavior()
endfun
autocmd WinEnter * if &ft == "nerdtree" | call s:MyNERDTreeSetting() | endif


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_synchronize_focus = 1 
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_autofind = 1

autocmd FileType * nested :call tagbar#autoopen(0)
" enable italic comments
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
set completeopt-=preview
"let g:ycm_add_preview_to_completeopt = 1

autocmd FileType c,cpp,cs,js,go,py nested :TagbarOpen


"python stuff
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming languages keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = " "
let g:airline#extensions#tabline#left_alt_sep = "|""

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
