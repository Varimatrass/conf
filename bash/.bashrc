HISTFILE=~/.bashrc_history

if [[ -f ~/.mybashrc ]]; then
  source ~/.mybashrc
fi

if [[ -f ~/.mybashrc_git ]]; then
  source ~/.mybashrc_git
fi

USER=`/usr/bin/whoami`
export USER
GROUP=`/usr/bin/id -gn $user`
export GROUP
MAIL="$USER@student.42.fr"
export MAIL
