scriptencoding utf-8
syntax on

"set encoding=utf-8
"set fileencodings=utf-8,cp932,iso-2022-jp,euc-jp,default,latin
"source ~/.vim/autoload_rc.vim

source ~/.vim/neobundle.vimrc
source ~/.vim/neocomplete.vimrc
map ,nbi :NeoBundleInstall

" for char-encoding
"source ~/.vim/zunwiki.vim

"source ~/.vim/unite_map.vim

set number
" search
set hlsearch
set ignorecase
set smartcase
" search selected word with '*' on visual mode
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>

" tab, space
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
nmap ,b :ls<CR>:buf

" visualize invisible symbols
set list
set listchars=tab:^\ ,trail:~,nbsp:%,extends:>,precedes:<
""""""""""""""""""""" for zenkaku space
"augroup highlightIdegraphicSpace
"    autocmd!
"    autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
"    autocmd VimEnter,WinEnter * match IdeographicSpace /　/
"augroup END
""""""""""""""""""""""""""""""""""""""""""

" replace a word with another one which is yanked
nnoremap <silent> ciy ciw<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
nnoremap <silent> cy   ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
vnoremap <silent> cy   c<C-r>0<ESC>:let@/=@1<CR>:noh<CR>

" for folding
" set foldmethod=syntax
set foldmethod=indent
" set foldmethod=manual
let perl_fold=1
set foldlevel=100 "Don't autofold anything

set grepprg=ack\ -a
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif
" set statusline=%F%m%r%h%w\ [%{&fenc!=''?&fenc:&enc}/%{&ff}]\ [%l\ x\ %v\ (%p%%\ of\ %L\ lines)]
set statusline=%F%m%r%h%w\ [%{&fenc}\ %{&enc}/%{&ff}]\ [%l\ x\ %v\ (%p%%\ of\ %L\ lines)]
set laststatus=2
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white
highlight CursorColumn   term=NONE cterm=NONE ctermfg=black ctermbg=white

" wait time for key input
set timeout timeoutlen=3000 ttimeoutlen=100

" edit .vimrc
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
" open .pm file useing <gf> on method call syntax
autocmd FileType perl set isfname-=-
autocmd FileType perl set isfname-=/


" for vimfiler
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
"" 現在開いているバッファのディレクトリを開く
" nnoremap <silent> <Leader>fe :<C-u>VimFilerBufferDir -quit<CR>
nnoremap <silent> <F7> :<C-u>VimFilerBufferDir -quit<CR>
"" current dir
nnoremap <silent> ,fc :<C-u>VimFilerCurrentDir -quit<CR>
nnoremap <silent> ,fe :<C-u>VimFilerExplorer -quit<CR>
"" 現在開いているバッファをIDE風に開く
nnoremap <silent> ,fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
"" vimfilerからはtabで開く
"let g:vimfiler_edit_action = 'tabopen'
"" search using unite
" autocmd FileType vimfiler nnoremap <buffer><silent>/ :<C-u>Unite file -default-action=vimfiler<CR>

" for git-vim
au FileType git-* nnoremap <silent> <buffer> <ESC><ESC> :q<CR>

" for jump2pm
noremap ,jj :call Jump2pm('e')<ENTER>
" for TagExplorer
"nnoremap <silent> <F6> :TagExplorer<CR>
nnoremap <silent> <F8> :Tlist<CR>
