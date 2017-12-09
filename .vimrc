execute pathogen#infect()
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
filetype indent on
set showmatch
set incsearch
set hlsearch
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif


if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    set termguicolors
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    if (has("termguicolors"))
        set termguicolors
    endif
endif

filetype plugin indent on
syntax on

let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
colorscheme onedark


