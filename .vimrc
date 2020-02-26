" if has('vim_starting')

" 初回起動時のみruntimepathにneobundleのパスを指定する
"set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif

" NeoBundleを初期化
"call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/vimfiler'
"NeoBundle 'sbl/scvim'
"NeoBundle 'tomasr/molokai'
"NeoBundle 'simonhicks/foxdot.vim'
"NeoBundle 'whatyouhide/vim-gotham'
"NeoBundle 'python-mode/python-mode'
" NeoBundle 'neovimhaskell/haskell-vim'
"NeoBundle 'tpope/vim-commentary'
"NeoBundle 'munshkr/vim-tidal' , '0.3.3-tidal-1.0.0-pre'
" NeoBundle 'munshkr/vim-tidal'
" NeoBundle 'kana/vim-filetype-haskell'
"call neobundle#end()

call plug#begin('~/.vim/plugged')

Plug 'sbl/scvim'
Plug 'tpope/vim-commentary'
Plug 'tidalcycles/vim-tidal'
" Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/AutoComplPop'
Plug 'nathanaelkane/vim-indent-guides'
Plug 't9md/vim-textmanip'

call plug#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=4 " 画面上でタブ文字が占める幅
set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=4 " smartindentで増減する幅

" 行番号を表示
set number

" vim の矩形選択で文字がなくても右へ進める
set virtualedit=block

" insert modeでバックスペース削除
set backspace=indent,eol,start
set nrformats=octal
set pumheight=10

" wildmenuオプションを有効化（vimバーからファイル選択可能）
set wildmenu

" 検索結果をハイライト表示
set hlsearch
" 大文字と小文字を区別しない
set ignorecase

"コメントの色を水色
hi Comment ctermfg=3

"シンタックスハイライト
syntax enable 
colorscheme azamiline
highlight Normal ctermbg=none

" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

" fold設定
set foldmethod=marker
set foldlevel=0
set foldcolumn=3

" Ledaer キーバインド
let mapleader = "\<Space>"

let g:python_executable_path = '/Users/azamiline/.pyenv/shims/python'
let g:sclang_executable_path = '/Users/azamiline/foxdotstart.scd'

" tidalの文字列変更
autocmd FileType tidal setlocal commentstring=--\ %s

" インデントガイド
set tabstop=2
set shiftwidth=2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=blue   ctermbg=21
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=27

" 行下ライン
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
highlight CursorLine gui=underline guifg=NONE guibg=NONE

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap " ""<ESC>i
inoremap "<Enter> ""<Left><CR><ESC><S-o>
inoremap < <><ESC>i
inoremap <<Enter> <><Left><CR><ESC><S-o>

" Tidal Templates

function! Stack()
    :r ~/tidal_templates/stack.tidal
endfunction
command Stack :call Stack()

function! Cdrum1()
    :r ~/tidal_templates/drum1.tidal
endfunction
command Cdrum1 :call Cdrum1()

function! Cdrum2()
    :r ~/tidal_templates/drum2.tidal
endfunction
command Cdrum2 :call Cdrum2()

function! Ckick1()
    :r ~/tidal_templates/kicks1.tidal
endfunction
command Ckick1 :call Ckick1()

function! Ckick2()
    :r ~/tidal_templates/kicks2.tidal
endfunction
command Ckick2 :call Ckick2()

function! Ckick3()
    :r ~/tidal_templates/kicks3.tidal
endfunction
command Ckick3 :call Ckick3()

function! Cpad1()
    :r ~/tidal_templates/pad1.tidal
endfunction
command Cpad1 :call Cpad1()

function! Cpad2()
    :r ~/tidal_templates/pad2.tidal
endfunction
command Cpad2 :call Cpad2()

function! Cef1()
    :r ~/tidal_templates/ef1.tidal
endfunction
command Cef1 :call Cef1()

function! Carpy1()
    :r ~/tidal_templates/arpy1.tidal
endfunction
command Carpy1 :call Carpy1()

function! Angel1()
    :r ~/tidal_templates/angel1.tidal
endfunction
command Angel1 :call Angel1()

function! C160_1()
    :r ~/tidal_templates/160_1.tidal
endfunction
command C160no1 :call C160_1()










