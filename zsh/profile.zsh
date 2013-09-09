HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=1000
setopt appendhistory autocd extendedglob

export LC_JANDERS="janders"
export GIT_EXTERNAL_DIFF=/home/janders/code.work/project/scripts/git/git_side_by_side_diff.sh
export RESEARCH=/home/btt/remote/blaze1/scratch-1/jon/research
export PROJECT=/home/janders/code.work/project

export PATH=${PATH}:/home/janders/bin:${PROJECT}/build/gcc-x86-64/bin:${PROJECT}/source/research/scripts

source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/scripts.zsh

if [[ "$TERM" != "screen-256color" ]]
then
  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
exit
fi
