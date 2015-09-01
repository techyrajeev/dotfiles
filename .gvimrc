" Make external commands work through a pipe instead of a pseudo-tty
set noguipty
let &guicursor = &guicursor . ",a:blinkon0"
set guioptions-=e "No gui-like tabs
set guioptions-=T "No toolbar
set guioptions-=m "No menubar
set guioptions-=r "No scroolbar (right)
set guioptions-=L "No scroolbar (left)
set guioptions+=c "Console dialogs (no popup)
"set guioptions+=a "Gui visual w/ mouse (yank to "*)

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13
