export EDITOR="/usr/local/bin/nvim -u ~/.vim/.vimrc.git --noplugin"

# Extend cf tab completion
export CDPATH=$CDPATH:.
export CDPATH=$CDPATH:/Users/Guillaume/Documents/Informatique/Web/

# enables extended globbing, usefull for ls !(*.*)
shopt -s extglob

export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
   find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      sed s/^..//) 2> /dev/null'

set -o vi
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
