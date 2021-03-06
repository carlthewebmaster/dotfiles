set nocp
execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>
" cmap w!! w !sudo tee % >/dev/null
filetype plugin indent on
set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set t_Co=256
colorscheme molokai     " colorscheme desert
set statusline=%<%F%h%m%r\ [%{&ff}]\ %{fugitive#statusline()}\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P
" highlight LineNr ctermbg=lightgray ctermfg=black
set nobackup            " get rid of anoying ~file
set laststatus=2
