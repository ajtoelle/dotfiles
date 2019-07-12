# helper to re source fish configs
echo sourcing fish configs

# .cfg stuff
abbr -a cfg  "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
abbr -a cfgs "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME status"
abbr -a cfga "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME add"
abbr -a cfgd "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME diff"
abbr -a cfgm "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME commit --message"


abbr -a coded "cd $HOME/code"
abbr -a l ls -la

alias aa "source $HOME/.config/fish/aliases.fish"
alias vaa "vim $HOME/.config/fish/aliases.fish"

alias a "source .config/fish/aliases.fish"
alias va "vim .config/fish/aliases.fish"
# .env stuff
abbr -a e source .env
abbr -a et source .env.local.test
abbr -a eq source .env.qa
abbr -a ve vim .env
abbr -a vet vim .env.local.test
abbr -a veq vim .env.qa

#typo fixes
abbr -a claer clear
abbr -a clera clear
abbr -a celar clear
abbr -a lear clear
abbr -a dcoker docker

abbr -a v vim

# Git Stuff
# gf = show files changed in a given commit
abbr -a g        git
abbr -a ga       git add
abbr -a gd       git diff
abbr -a gs       git status
abbr -a gf       git show --pretty=\"\" --name-only
abbr -a gl       git log --graph --pretty=oneline --abbrev-commit
abbr -a gco      git checkout
abbr -a gcm      git commit --message
abbr -a gcam     git commit --all --message
abbr -a gcamend  git commit --amend --no-edit

abbr -a ok ok.sh

abbr -a dc       docker-compose
abbr -a dcps     docker-compose ps
abbr -a dcnuke   echo 'bash sudo docker stop $(sudo docker ps -aq);sudo docker rm $(sudo docker ps -aq);sudo docker rmi $(sudo docker images -q)'
abbr -a dcrebuild docker-compose up -d --build --no-deps

abbr -a npmr     npm run

abbr -a p        pwd

alias f         find-file-by-name-in-subdir
alias fi        find-file-by-name-in-subdir-case-insensitive

abbr -a ascii 'ls /usr/local/lib/node_modules/asciimo/fonts | cut -d "." -f 1| ipt | xargs asciimo '
alias chomp 'asciimo "_[h0m8p!" alligator2'
abbr -a vpn 'sudo killall openvpn; sudo openvpn --config /Users/ajtoelle/.config/ovpn/andrew.toelle.waltz.ovpn &'
abbr -a bye 'pmset sleepnow'
abbr -a uuid "npx uuid v4 | tr -d '\n' | pbcopy"
