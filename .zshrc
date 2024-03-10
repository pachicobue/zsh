# Load config
for ZSH_RC in $ZDOTDIR/config/[0-9][0-9]-*.zsh; do
    echo "[${ZDOTDIR}/.zshrc] source ${ZSH_RC}"
    source ${ZSH_RC}
done
