export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# エディタ
export EDITOR=/usr/bin/vim

# PATH の設定（お好みで）
if [ `uname` =  "Darwin" ] ; then
  export PATH="~/scripts:/usr/local/bin:$PATH"
# For Cygwin.
elif [ "$( uname -o )" = 'Cygwin' ]; then
  cd
# For Cygwin.
elif [ "$( uname -o )" = 'GNU/Linux' ]; then
  cd
fi
# PATH の内容と同期している配列変数 path も使える
# もし .zshenv を複数のマシンで共有していて、
# あるマシンには存在するが別のマシンには存在しないパスを PATH に追加したいなら、
# パスの後ろに (N-/) をつけるとよい
# こうすると、パスの場所にディレクトリが存在しない場合、パスが空文字列に置換される
# 詳細は `man zshexpn` の Glob Qualifiers を参照
path=(
    ~/scripts(N-)
    $path
)
