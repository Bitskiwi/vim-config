set mouse=a
syntax on
set number
"set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set whichwrap+=<,>,h,l
set backspace=indent,eol,start
set fillchars+=eob:\|
set list
set listchars=tab:\|-,trail:-
set termguicolors
set cursorline
set wildmenu
colorscheme habamax " retrobox, slate, 
set laststatus=2
set statusline=
set statusline+=[%{StatuslineMode()}]
set statusline+=%F
set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=%=
set statusline+=%l/
set statusline+=%c
set statusline+=\|
set statusline+=%{strlen(&fenc)?&fenc:'none'}
set statusline+=%y
set statusline+=\|
set statusline+=%L

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

nnoremap <C-t> :Explore<CR>
nnoremap <C-y> :terminal<CR>
nnoremap <C-n> :new<CR>
nnoremap <C-w> :close<CR>
