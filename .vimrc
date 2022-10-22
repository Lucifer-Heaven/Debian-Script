" for mac
if has('mac')
    "" Vundle setup
    set nocompatible              " be iMproved, required
    filetype off                  " required
    
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')
    
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    
    " All of your Plugins must be added before the following line
    Plugin 'ycm-core/YouCompleteMe'
    Plugin 'puremourning/vimspector'
    Plugin 'chriskempson/base16-vim'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'rdnetto/YCM-Generator'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'Yggdroot/indentLine'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'tmhedberg/simpylfold'
    Plugin 'mhinz/vim-signify'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'preservim/nerdtreed' "not installed
    Plugin 'preservim/tagbar' "not working,key mapping
    Plugin 'Lokaltog/vim-easymotion'
    
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
    
    " Vundle setup end
    
    " for tabs
    " for command mode
    nnoremap <S-Tab> <<
    " for insert mode
    inoremap <S-Tab> <C-d>
    set nosmarttab
    
    " vimspector
    let g:vimspector_enable_mappings = 'HUMAN'
    let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
    
    let base16colorspace=256
    set termguicolors
    
    " >>>>>>>> YCM-generator
    " Ctrl+I generate .ycm_extra_conf.py
    noremap <C-I> :YcmGenerateConfig -c g++ -v -x c++ -f -b make .<CR>
    
    " >>>> indentline >>>>>>
    let g:indentLine_char_list = ['|', '¦', '┆', '┊']
    let g:indentLine_enabled = 1
    let g:indentLine_leadingSpaceEnabled = 1
    " ..| format
    set listchars=tab:·\ ,trail:·,extends:»,precedes:« " Unprintable chars mapping
    set list " Display unprintable characters f12 - switches
    
    " >>> airline
    let g:airline_solarized_bg='dark'
    let g:airline#extensions#whitespace#enabled = 0 "turn off the trailing whitespace
    let g:airline_powerline_fonts = 1
    let g:airline_section_y = ''
    let g:airline_section_z = '%p%% %l:%c' 
    let g:airline#extensions#tagbar#enabled = 0 "bcz error: https://github.com/vim-airline/vim-airline/issues/1313#issuecomment-311866347
    
    " >>> tagbar
    noremap <M-t> :TagbarToggle<CR>
    noremap <F2> :TagbarToggle<CR>
    
    " >> iterm
    if has('mouse_sgr')
        set ttymouse=sgr
    endif
    
    " >> macvim
    if has('gui_running')
        set guifont=MesloLGS\ NF:h18
    endif
    
    colorscheme base16-default-dark
endif
"##############################
syntax on
set background=dark
set number
set mouse+=a
"colorscheme solarized
"colorscheme base16-solarized-dark
set tabstop=4
set ai
set foldmethod=indent
set backspace=indent,eol,start
set ignorecase
set hlsearch
