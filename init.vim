" $HOME/.config/nvim配下に設置する

" util
set clipboard=unnamedplus 	"クリップボードの有効化
set autowrite			"build時にオートセーブ	

"キーコンフィグ
"画面分割周り
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w
nnoremap sn gt
nnoremap sp gT


" deinの設定
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/umino/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/umino/.vim/bundles')
  call dein#begin('/home/umino/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/home/umino/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " TOMLファイルの読み込み
  let g:config_dir = expand('~/.vim/bundles/dein')
  let s:toml = g:config_dir . '/plugins.toml'
  call dein#load_toml(s:toml, {'lazy': 0})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

