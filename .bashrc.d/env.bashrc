# PHP
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

export EDITOR="/usr/local/bin/nvim -u ~/.vim/.vimrc.git --noplugin"

# Extend cf tab completion
export CDPATH=$CDPATH:.
export CDPATH=$CDPATH:/Users/Guillaume/Documents/Informatique/Web/

# enables extended globbing, usefull for ls !(*.*)
shopt -s extglob

set -o vi
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

