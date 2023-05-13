call plug#begin('~/.local/share/nvim/plugged')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree'
    Plug 'artur-shaik/vim-javacomplete2'
    Plug 'vim-syntastic/syntastic'
    "Status Bar
    Plug 'bling/vim-airline'
    " Maven sytaxe
    Plug 'NLKNguyen/vim-maven-syntax'
    " Adiciona icones
    Plug 'ryanoasis/vim-devicons'
    " Melhora a sintaxe das linguagens
    Plug 'sheerun/vim-polyglot'
    " Adiciona icones no nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " Adiciona icones para git
	Plug 'Xuyuanp/nerdtree-git-plugin'
    " Detectar erros
    Plug 'dense-analysis/ale'
    " Thema de cores gruvbox
    Plug 'morhetz/gruvbox'
    " Gerenciar git
    Plug 'tpope/vim-fugitive'
    " Mostra identação
    Plug 'Yggdroot/indentLine'
call plug#end()



" "<BS>"            Backspace
" "<Tab>"           Tab
" "<CR>"            Enter
" "<Enter>"         Enter
" "<Return>"        Enter
" "<Esc>"           Escape
" "<Space>"         Space
" "<Up>"            Up arrow
" "<Down>"          Down arrow
" "<Left>"          Left arrow
" "<Right>"         Right arrow
" "<F1> - <F12>"    Function keys 1 to 12
" "#1, #2..#9,#0"   Function keys F1 to F9, F10
" "<Insert>"        Insert
" "<Del>"           Delete
" "<Home>"          Home
" "<End>"           End
" "<PageUp>"        Page-Up
" "<PageDown>"      Page-Down
" "<bar>"           the '|' character, which otherwise needs to be escaped '\|'



" "Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                     " Enable syntax highlight
set nu                        " Enable line numbers
set tabstop=4                 " Show existing tab with 4 spaces width
set softtabstop=4             " Show existing tab with 4 spaces width
set expandtab                 " Converts tabs to spaces
set shiftwidth=4              " When indenting with '>', use 4 spaces width
set expandtab                 " On pressing tab, insert 4 spaces
set smarttab                  " insert tabs on the start of a line according to shiftwidth
set smartindent               " Automatically inserts one extra level of indentation in some cases
set hidden                    " Hides the current buffer when a new file is openned
set incsearch                 " Incremental search
set ignorecase                " Ingore case in search
set smartcase                 " Consider case if there is a upper case character
set colorcolumn=100           " Draws a line at the given line to keep aware of the line size
set signcolumn=yes            " Add a column on the left. Useful for linting
set cmdheight=2               " Give more space for displaying messages
set updatetime=100            " Time in miliseconds to consider the changes
set encoding=utf-8            " The encoding should be utf-8 to activate the font icons
set nobackup                  " No backup files
set nowritebackup             " No backup files
set splitright                " Create the vertical splits to the right
set splitbelow                " Create the horizontal splits below
set autoread | au FocusGained * checktime " Update vim after file update from outside
set number                    " Numera as linhas do arquivo
set scrolloff=999             " Manter cursor de texto no meio
set so=999                    " Manter cursor de texto no meio
set expandtab                 "
set termguicolors             "
set encoding=UTF-8            " Padrao UTF-8
set autowriteall              " Salva file automatico
filetype on                   " Detect and set the filetype option and trigger the FileType Event
filetype plugin on            " Load the plugin file for the file type, if any
filetype indent on            " Load the indent file for the file type, if any
colorscheme gruvbox           " Thema do fzf
"---------------------------------------------------------------------------------------------------


" Mostra linhas de identação
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_char_list = ['⢸', '⢸', '⢸', '⢸']

" Definir o shell padrão como Zsh
set shell=/bin/zsh
" Carregar o arquivo .zshrc. Para executar comandos deve se ter :!<comando>
silent !source ~/.zshrc

" Navegação entre arquivos abertos, buffers [ "CTRL+]" e "CTRL+[" ]
nnoremap <C-]> :bnext<CR>
nnoremap <C-[> :bprev<CR>

" Seleciona todo texto CTRL+a
nnoremap <C-a> ggVG
"SAVE  "CTRL+s"
nnoremap  <c-s> :w<cr>
"QUIT "CTRL+q"
nnoremap <c-x> :q<cr>
" Desfaz alteracoes "CTRL+z"
nnoremap <C-z> :undo<CR>

" # TERMINAL #
" Define um atalho para fechar a janela do terminal
tnoremap <C-d> <C-\><C-n>:q!<CR>
" Abre novo terminal no modo insert
function! OpenTerminal()
  " cria nova janela abaixo e abre o terminal
  botright 20split term://tmux
  "botright 20split term://bash
  " entra no modo de insert
  startinsert
endfunction
" mapeia para tecla de atalho "F5"
nnoremap <silent> <F5> :call OpenTerminal()<CR>
" mapeia sair de insercao para tecla de atalho "CTRL+\+n"
tnoremap <Esc>[17~ <C-\><C-n>gv


" # GIT HISTORY #
" Define um atalho para fechar a janela do git history 
tnoremap <C-d> <C-\><C-n>:q!<CR>
" Abre novo terminal no modo insert
function! OpenGitHistory()
  " cria nova janela abaixo e abre o terminal
  botright 90vsplit term://git log --graph --abbrev-commit --decorate 
  " entra no modo de insert
  startinsert
endfunction
" mapeia para tecla de atalho "F6"
nnoremap <silent> <F6> :call OpenGitHistory()<CR>
" mapeia sair de insercao para tecla de atalho "CTRL+\+n"
tnoremap <Esc>[17~ <C-\><C-n>gv


" Destaca a cor da linha em que cursor se encontra
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
augroup END         " roxo escuro 
hi CursorLine guibg=#100010




"##################################################################################################
"################################# CONFIGURACAO DOS PLUGINS #######################################
"##################################################################################################




"##################################################################################################
"######################################################################################## NERDTREE
"##################################################################################################
" Inicia nerdTree automatico
autocmd VimEnter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Configuração do plugin 'nerdtree'
let g:NERDTreeDirArrows=0
let g:NERDTreeMinimalUI=1

"Nerdtree icons
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name  

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'cpp', 'php', 'rb', 'js', 'css', 'html'] " enabled extensions with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico'] " enabled exact matches with default colors

map <silent> Q :silent NERDTreeCWD<CR>:silent setlocal nolist nonumber norelativenumber<CR>
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
autocmd FileType nerdtree autocmd BufEnter <buffer> setlocal nolist nonumber norelativenumber
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMouseMode=3
let NERDTreeShowLineNumbers=1
let g:NERDTreeMapJumpNextSibling = 'Ê'
let g:NERDTreeMapJumpPrevSibling = 'Ë'
let g:NERDTreeWinSize=50



"##################################################################################################
"######################################################################################## AIR-LINE
"##################################################################################################

let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#buffer_min_count =2
let g:airline#extensions#tabline#show_tabs = 0
let g:airline_exclude_preview = 1
let g:airline#extensions#whitespace#checks = ['']
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#hunks#enabled = 1
map <leader>1 <Plug>AirlineSelectTab1
map <leader>2 <Plug>AirlineSelectTab2
map <leader>3 <Plug>AirlineSelectTab3
map <leader>4 <Plug>AirlineSelectTab4
map <leader>5 <Plug>AirlineSelectTab5
map <leader>6 <Plug>AirlineSelectTab6
map <leader>7 <Plug>AirlineSelectTab7
map <leader>8 <Plug>AirlineSelectTab8
map <leader>9 <Plug>AirlineSelectTab9
let g:airline#extensions#tabline#buffer_nr_show=0
let g:airline#extensions#tabline#buffer_id_show=0
let g:airline#extensions#tabline#filename_show=1
let g:airline#extensions#tabline#filename_only=1
let g:airline#extensions#tabline#show_tabs=1
let g:airline#extensions#tabline#show_splits=0




"##################################################################################################
"############################################################################################# FZF
"##################################################################################################


"##################################################################################################
"############################################################################################# ALE 
"##################################################################################################
" Configura ALE para java
let g:ale_linters = {
     \ 'java': ['checkstyle -Dcheckstyle.header.filetypes=java -Dcheckstyle.language=java -Dcheckstyle.version=8.0']
     \ }
let g:ale_java_checkstyle_config = '/path/to/checkstyle.xml'
let g:ale_java_javac_options = '-Xlint:all -source 11'
