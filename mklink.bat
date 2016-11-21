

' Vim関係
if not exist %USERPROFILE%\vimfiles (
  mkdir %USERPROFILE%\vimfiles
)
if not exist %USERPROFILE%\vimfiles\bundle (
  mkdir %USERPROFILE%\vimfiles\bundle
  git clone https://github.com/Shougo/neobundle.vim %USERPROFILE%\vimfiles\bundle\neobundle.vim
)
if not exist %USERPROFILE%\_vimrc (
  mklink %USERPROFILE%\_vimrc %~dp0\.vimrc
)
if not exist %USERPROFILE%\_gvimrc (
  mklink %USERPROFILE%\_gvimrc %~dp0\.gvimrc
)
if not exist %USERPROFILE%\.gitignore_global (
  mklink %USERPROFILE%\.gitignore_global %~dp0\.gitignore_global
)
if not exist %USERPROFILE%\.gitconfig (
  mklink %USERPROFILE%\.gitconfig %~dp0\.gitconfig
)
if not exist %USERPROFILE%\.gitconfig.win (
  mklink %USERPROFILE%\.gitconfig.win %~dp0\.gitconfig.win
)

if not exist %USERPROFILE%\vimfiles\morimoto (
  mklink /d %USERPROFILE%\vimfiles\morimoto %~dp0\.vim\morimoto
)
if not exist %USERPROFILE%\vimfiles\g_morimoto (
  mklink /d %USERPROFILE%\vimfiles\g_morimoto %~dp0\.vim\g_morimoto
)
if not exist %USERPROFILE%\vimfiles\colors (
  mklink /d %USERPROFILE%\vimfiles\colors %~dp0\.vim\colors
)

