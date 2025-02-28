#
# ~/.bashrc
#

PS1='[ \w ] '
# [ ~ ]

alias cls="clear"
alias lg="lazygit"
alias ls="ls --color=auto -hsa"
alias grep="grep --color=auto"
alias vim="nvim" # I like nvim a lot.
alias fp="flatpak" # If I ever need flatpak. AKA whenever I need to download/update Bottles or Sober.

eval "$(zoxide init bash)" # For Zoxide. <https://github.com/ajeetdsouza/zoxide>
