

' Vim関係
if not exist %USERPROFILE%\vimfiles (
  mkdir %USERPROFILE%\vimfiles
)
if not exist %USERPROFILE%\vimfiles\bundle (
  mkdir %USERPROFILE%\vimfiles\bundle
  git clone https://github.com/Shougo/neobundle.vim %USERPROFILE%\vimfiles\bundle\neobundle.vim
)
if not exist %USERPROFILE%\_vimrc (
  mklink %USERPROFILE%\_vimrc %USERPROFILE%\dotfiles\.vimrc
)
if not exist %USERPROFILE%\_gvimrc (
  mklink %USERPROFILE%\_gvimrc %USERPROFILE%\dotfiles\.gvimrc
)
if not exist %USERPROFILE%\.gitignore_global (
  mklink %USERPROFILE%\.gitignore_global %USERPROFILE%\dotfiles\.gitignore_global
)

if not exist %USERPROFILE%\vimfiles\morimoto (
  mklink /d %USERPROFILE%\vimfiles\morimoto %USERPROFILE%\dotfiles\.vim\morimoto
)
if not exist %USERPROFILE%\vimfiles\g_morimoto (
  mklink /d %USERPROFILE%\vimfiles\g_morimoto %USERPROFILE%\dotfiles\.vim\g_morimoto
)

