# my fish config

# TODO: might use later
# if status is-interactive
    # Commands to run in interactive sessions can go here
# end

command zoxide init fish | source
set -gx BROWSER librewolf

# stuff that i dont wanna write functions for
abbr nv nvim
abbr vim nvim
abbr v nvim
abbr cd z
abbr sudo doas
abbr lg lazygit
abbr cls clear

# pacman
function pm ; sudo pacman $argv ; end
function pmi ; sudo pacman -S $argv ; end
function pmr ; sudo pacman -R $argv ; end
function syu ; sudo pacman -Syu ; end

# flatpak
function fp ; flatpak $argv ; end 
function fpu ; flatpak update $argv ; end
function fpi ; flatpak install $argv ; end
function fpd ; flatpak remove $argv ; end
function fpr ; flatpak run $argv ; end

# basically just aliases kind of but more
function ls ; command ls --color=auto -hsa $argv ;end
function grep ; command grep --color=auto $argv ; end

# [ ~ ]
function fish_prompt
    string join '' -- '[' ' ' (prompt_pwd) ' ' ']' ' '
end

# down down down..
function .. ; cd .. ; end
function .... ; cd ../.. ; end
function ...... ; cd ../../.. ; end
