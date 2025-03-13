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
alias pacyay="yay" # This is mostly for the giggles.

eval "$(zoxide init bash)" # For Zoxide. <https://github.com/ajeetdsouza/zoxide>
eval "$(thefuck --alias)" # https://archlinux.org/packages/extra/any/thefuck/
