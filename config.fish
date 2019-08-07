# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end
#

#------ Git ------
abbr g 'git'
abbr ga 'git add'
abbr gb 'git branch'
abbr gc 'git commit -m'
abbr gco 'git checkout'
abbr gd 'git diff'
abbr gf 'git fetch'
abbr gm 'git merge'
abbr gp 'git push'
abbr gpl 'git pull'
abbr gs 'git status'
abbr gst 'git stash'

#------ Scripts ------
#abbr headset 'bash -c ~/scripts/connectQC35.sh'

#------ Other ------
abbr p3 'python3'
abbr newidea 'vim ~/Docs/ideas/newideas'
abbr update 'sudo pacman -Syu && pacaur -Syu'
