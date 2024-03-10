# Load antigen.zsh
source $ZDOTDIR/antigen/antigen.zsh

antigen bundle alpaca-honke/prowpt --branch=main
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply installation
antigen apply