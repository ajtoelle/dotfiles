" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'dag/vim-fish'

" Gotta run :PlugInstall to load the plugins

"Plug 'vim-syntastic/syntastic'

""Easy Motion Install And Mods
"Plug 'easymotion/vim-easymotion'
"map <Leader> <Plug>(easymotion-prefix)
"
"Plug 'ahw/vim-pbcopy'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'

" Look at this if you feel like deving a vim plugin -
" https://github.com/tpope/vim-scriptease


" Initialize plugin system
call plug#end()

" Use the system clipboard
set clipboard=unnamed

syntax enable

set pastetoggle=<F10>

" Indentation Shtuff
Plug 'tpope/vim-sleuth'
:set expandtab
:set nomodeline
:set tabstop=2
:set shiftwidth=2

" View Whitespace
":set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
:set showbreak=↪\ 
:set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
:set list

" show gutters
set number

" ale linter stuff
let g:ale_sign_column_always = 1

" Then configure its actual display in vim
"set statusline+=%#warningmsg#%{ALEGetStatusLine()}
"set statusline+=%*

"use ~/.vim/tmp for all swapfiles (prevent watchfile churn)
set directory^=$HOME/.vim/tmp//

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-A> :ZoomToggle<CR>
colorscheme pablo
