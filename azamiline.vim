" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer/Chiho Oka
" Last Change/2018-09-11

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "azamiline"

" カーソル行を強調表示しない
set nocursorline
" 挿入モードの時のみ、カーソル行をハイライトする
" autocmd InsertEnter,InsertLeave * set cursorline!

highlight Comment	 ctermfg=12 ctermbg=15 guifg=#0000ff guibg=#ffffff
highlight Constant	 ctermfg=15 ctermbg=12 cterm=bold  guifg=#00ffff gui=bold
highlight Identifier ctermfg=15 guifg=#00c0c0
highlight Statement  ctermfg=15 cterm=bold guifg=#ffffff gui=bold
highlight PreProc	 ctermfg=15 guifg=#00ff00
highlight Type		 ctermfg=15 guifg=#00c000
highlight Special	 ctermfg=12	cterm=bold guifg=#0000ff
highlight SpecialKey ctermfg=15 cterm=bold
highlight Error		 ctermfg=15 ctermbg=9 guibg=#ff0000
highlight Todo		 ctermfg=15	ctermbg=11  guifg=#000080 guibg=#c0c000
highlight Directory  ctermfg=15	guifg=#00c000
highlight StatusLine ctermfg=12 ctermbg=15 cterm=none guifg=#ffff00 guibg=#0000ff gui=none
highlight Normal	 ctermfg=15	guifg=#ffffff guibg=#000000
highlight Search	 ctermfg=12 ctermbg=11 guifg=#0000ff guibg=#ffff00
highlight Visual	 ctermbg=15 ctermfg=12
highlight WarningMsg ctermfg=15 ctermbg=9
highlight Nomal ctermfg=12 ctermbg=15
highlight Folded	 ctermfg=12 ctermbg=15
highlight LineNr	 ctermfg=15
