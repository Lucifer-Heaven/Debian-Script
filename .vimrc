" ##################
" vision
set background=dark
set cursorline
syntax on
if has('termguicolors')
    set termguicolors
endif
" turn relative line numbers on
set relativenumber "rnu
set number "nu

" ##################
" format
" tabs
set tabstop=4
set expandtab " using space instead of tab
" backspace can del 4 spaces if sts == shiftwidth
" sts == shiftwidth can shift back and forth
" higer priority than tabstop
set softtabstop=4
set shiftwidth=4
set si " smartindent
set ai " autoindent
filetype plugin indent on "sensible overwritten
set foldmethod=indent
set nofoldenable
" set backspace=indent,eol,start "sensible overwritten
set wrap

" ##################
" search
" Incremental search, sensible overwritten
" c-l cancel highlight search result
" set incsearch
set hlsearch " highlight search
set ignorecase
set smartcase " mixed cases search=case sensitive

" ##################
" functionality
let g:vim_json_syntax_conceal = 1 
"set encoding=UTF-8 " ryanoasis/vim-devicons may need 
set clipboard=unnamed
set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.
set autowrite  " Automatically save before commands like :next and :make
set mouse=a
set mousefocus " focus follow mouse not working
set hidden " Hide buffers when they are abandoned
set nocompatible " Set compatibility to Vim only.
set wildmode=longest:full,full " auto completion cmd


" ##################
" window
set splitright
set splitbelow

" ##################
" key mapping
let mapleader=' '
" insert only one key without gettin insert mode
" https://superuser.com/a/1249453
nnoremap <leader><leader> i_<Esc>r
nnoremap <leader>so :source $MYVIMRC<CR>
" select mode; cut into blackhole like /etc/null
" more https://stackoverflow.com/a/41717224
xnoremap x "_xh
nnoremap x "_xh 
nnoremap c "_c
xnoremap c "_c
nnoremap cc "_S
nnoremap C "_C
xnoremap C "_C

" ##################
" plugins
call plug#begin('~/.vim/vim_plugins')
Plug 'sainnhe/sonokai' " theme
Plug 'tpope/vim-sensible' " essential
if !has('nvim')
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " file displays
Plug 'vim-airline/vim-airline' " status line
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color' " show code with colorfrozen
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'Yggdroot/indentLine' " show indent symble
Plug 'jiangmiao/auto-pairs', {'frozen':1} " auto brackets /coc has it?
Plug 'tpope/vim-commentary' " comment codes
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'preservim/tagbar',{'on':'TagbarToggle'} "code navigation&statusline
Plug '/usr/local/opt/fzf' ", { 'do': { -> fzf#install() } } "fuzzy search
Plug 'dense-analysis/ale' " linter and fixer
Plug 'rhysd/vim-lsp-ale' " connector
Plug 'prabirshrestha/vim-lsp' "lsp engine
Plug 'mattn/vim-lsp-settings' "lsp config 
Plug 'mcchrish/nnn.vim' " finder
Plug 'unblevable/quick-scope' "tf motion highlight
endif
if has('nvim')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif
" Plug 'ycm-core/YouCompleteMe', {'do': './install.py'}
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'

" Plug 'davidhalter/jedi' " python autocompletion

" Plug 'SirVer/ultisnips' " snippet engine
" Plug 'honza/vim-snippets' " snippet files 

" default completion enhance, needs complier only 
" Plug 'lifepillar/vim-mucomplete' 

" too many plug inside. conflict: auto pair, ale
" Plug 'neoclide/coc.nvim',{'branch':'release'} "auto completion

call plug#end()

" ##################
" plugin configuration
let plug_dir = $HOME . '/.vim/vim_plugins/'
let conf_dir = $HOME . '/.vim/plug_config/'

" ##################
" Mac 
if system('uname') =~ 'Darwin'
    execute 'source' conf_dir . 'mac_conf.vim'
endif

" ##################
" sonokai
let conf_name = 'sonokai'
if isdirectory(plug_dir.conf_name)
    let plug_vim = conf_dir . conf_name .'_conf.vim'
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif

" function! PlugLoaded(name)
"
"     return(
"         \ has_key(g:plugs,a:name) && 
"         \ isdirectory(g:plugs[a:name].dir) &&
"         \ stridx(&rtp, g:plugs[a:anme].dir) >=0)
" endfunction


" https://vi.stackexchange.com/questions/10939/how-to-see-if-a-plugin-is-active
if match(&runtimepath, 'sonokai') != -1
    " echo 'ha?sup'
endif
if has ('nvim')

" ##################
" coc
" needs more conf if using coc as plugin manager
let conf_name = 'coc'
if (isdirectory(plug_dir.'coc.nvim')) && (match(&runtimepath, 'coc.nvim') != -1)
    let plug_vim = conf_dir . conf_name .'_conf.vim'
    echo $plug_vim
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif
endif


if !has('nvim')
" ##################
" nerdtree
if isdirectory(plug_dir.'nerdtree')
    let plug_vim = conf_dir . 'nerd_conf.vim'
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif
 
" ##################
" airline
if isdirectory(plug_dir.'vim-airline')
    let plug_vim = conf_dir . 'airline_conf.vim'
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif


" ##################
" indentline
let conf_name = 'indentLine'
if isdirectory(plug_dir.conf_name)
    let plug_vim = conf_dir . conf_name .'_conf.vim'
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif

" ##################
" auto-pair
let conf_name = 'auto-pairs'
if isdirectory(plug_dir.conf_name)
    let plug_vim = conf_dir . conf_name .'_conf.vim'
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif

" ##################
" tagbar
let conf_name = 'tagbar'
if isdirectory(plug_dir.conf_name)
    let plug_vim = conf_dir . conf_name .'_conf.vim'
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif

" ##################
" ALE
let conf_name = 'ale'
if isdirectory(plug_dir.conf_name)
    let plug_vim = conf_dir . conf_name .'_conf.vim'
    if filereadable(plug_vim)
        execute 'source' plug_vim
    endif
endif


" ##################
" FZF
nnoremap <leader>f :FZF<cr>
nnoremap <leader>fr :call fzf#run({'source': 'git ls-files', 'sink': 'e'})<cr>
" install from homebrew
set rtp+=/usr/local/opt/fzf


" ##################
" commentary
let conf_name = 'commentary'
if isdirectory(plug_dir.'vim-commentary')
    let plug_vim = conf_dir . conf_name .'_conf.vim'
    if filereadable(plug_vim)
      execute 'source' plug_vim
    endif
end



" ##################
" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"


" ##################
" virtual multi
let g:VM_default_mappings = 0
let g:VM_mouse_mappings = 1
let g:VM_leader = '<leader>'
let g:VM_maps = {}
let g:VM_maps['Find Under'] = '<leader>v'
let g:VM_maps['Find Subword Under'] = '<leader>v'
let g:VM_maps["Select Cursor Down"] = '<C-Down>'
let g:VM_maps["Select Cursor Up"] = '<C-Up>'

" ##################
" deoplete
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('sources', {
" 		\ '_': ['buffer'],
"         \ 'c':['buffer','tag'],
" 		\ 'cpp': ['buffer', 'tag'],
" 		\})
" 
" set completeopt+=noselect
" call deoplete#custom#option('omni_patterns', {
" \ 'c': ['[^. *\t]\%(\.\|->\)\w*'],
" \ 'cpp': ['[^. *\t]\%(\.\|->\)\w*', '[a-zA-Z_]\w*::'],
" \})
" 
" call deoplete#custom#source('buffer',
" 		\ 'filetypes', ['c', 'cpp'])
" 
" ##################
" completor
" let g:completor_clang_binary = '/usr/local/Cellar/llvm/15.0.2/bin/clang-15'
" map <buffer> <tab> <Plug>CompletorCppJumpToPlaceholder
" imap <buffer> <tab> <Plug>CompletorCppJumpToPlaceholder
" let g:completor_clang_disable_placeholders = 1


" ycm
let g:ycm_enable_inlay_hints =1
let g:ycm_use_clangd = 0


" vim-lsp-ale
if executable('ccls')
    autocmd User lsp_setup call lsp#register_server({
        \   'name': 'ccls',
        \   'cmd': ['ccls'],
        \ })
endif

" vim-lsp-setting
let g:lsp_settings_servers_dir='/Users/cd/.vim/plug_config/'

" nnn
" Disable default mappings
let g:nnn#set_default_mappings = 0
" Set custom mappings
nnoremap <silent> <leader>nn :NnnPicker<CR>
" Start n³ in the current file's directory
nnoremap <leader>n :NnnPicker %:p:h<CR>

" quick-scope
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
endif
