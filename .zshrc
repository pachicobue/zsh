# Load config
for ZSH_RC in $ZDOTDIR/config/[0-9][0-9]-*.zshrc; do
    echo "[sho] source ${ZSH_RC}"
    source ${ZSH_RC}
done
