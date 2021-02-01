# Aliases
alias vim=nvim
alias view="nvim -R"
alias em="emacsclient -c -nw"

# Appearance
function fish_greeting; end

# Path
set SPICETIFY_INSTALL $HOME/.local/bin/spicetify-cli/
set PATH /var/lib/snapd/snap/bin $PATH
set PATH $SPICETIFY_INSTALL $PATH

# Tools
set FZF_DEFAULT_COMMAND "rg --hidden --files -g '!.git'"
