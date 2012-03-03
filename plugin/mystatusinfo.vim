"""""""""""""""""""""""""""""""" Reference to Author
" VERSION 1.1I
"""""""""""""""""""""""""""""""" Reference to Author

if exists("loaded_myinfile") || &cp
    finish
endif
let loaded_myinfile = 1

set statusline=%{CurTabColor()}\ %<%F%h%m%r%h%w%y\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ l:%l\,%L\ c:%c%V\ ps:%o\ hex:%b\ %P

fu! CurTabColor()

  let currentTab = tabpagenr()
  let s_line= '(tb=' . currentTab . ')'
  return s_line

endf

