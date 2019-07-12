set EDITOR vim

#function fish_right_prompt -d "Write out the right prompt"
#  echo "whutup snood?" 
#end

source $HOME/.config/fish/aliases.fish

# DOCKER stuff
set -x DOCKER_HIDE_LEGACY 1

# add path to icloud dir
set -x MOBILE_DOCS "$HOME/Library/Mobile Documents"

set -gx PATH /usr/local/opt/python/libexec/bin $PATH

# allow locally installed npm binaries to be executed;
# added by `npm i -g add-local-binaries-to-path`
set -gx PATH $PATH ./node_modules/.bin

# allow locally installed npm binaries to be executed;
# added by `npm i -g add-local-binaries-to-path`
set -gx PATH $PATH ./bin
set -gx PATH $PATH /usr/local/sbin

# start gpg agent <- added for blackbox
#eval (gpg-agent --daemon)
ssh-add -K /Users/ajtoelle/.ssh/id_rsa
