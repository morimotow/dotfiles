@echo off

if not exist %USERPROFILE%\.gitignore_global (
  mklink %USERPROFILE%\.gitignore_global %~dp0\..\.gitignore_global
)
if not exist %USERPROFILE%\.gitconfig (
  mklink %USERPROFILE%\.gitconfig %~dp0\..\.gitconfig.win
)
if not exist %USERPROFILE%\.gitconfig.local (
  copy %USERPROFILE%\.gitconfig.local %~dp0\..\.gitconfig.local
)