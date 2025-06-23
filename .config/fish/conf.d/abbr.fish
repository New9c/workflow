#
# abbrs
#

set -q MY_ABBRS_INITIALIZED; and return

abbr tarls 'tar -tvf'
abbr untar 'tar -xv'

# single key
abbr n nvim
abbr nl "nvim leetcode.nvim"
abbr e exit
abbr c clear
abbr h history

# date/time
abbr ds 'date +%Y-%m-%d'
abbr ts 'date +%Y-%m-%dT%H:%M:%SZ'
abbr yyyymmdd 'date +%Y%m%d'

# sudo
abbr s "sudo"
abbr sp "sudo pacman"
abbr sps "sudo pacman -S --noconfirm --needed"
abbr spr "sudo pacman -Rns"
abbr spu "sudo pacman -Syu"
# git
abbr gad 'git add'
abbr gad. 'git add .'
abbr gbn 'git rev-parse --abbrev-ref HEAD'
abbr gcl 'git clean'
abbr gcm 'git commit -m'
abbr gco 'git checkout'
abbr gcob 'git checkout -b'
abbr gcod 'git checkout develop'
abbr gcom 'git checkout master'
abbr glg 'git log'
abbr glog git\ log\ --graph\ --pretty=\'\%Cred\%h\%Creset\ -\%C\(auto\)\%d\%Creset\ \%s\ \%Cgreen\(\%ad\)\ \%C\(bold\ blue\)\<\%an\>\%Creset\'\ --date=short
abbr gpll 'git pull'
# abbr gpristine 'git reset --hard && git clean -fdx'
abbr gpsh 'git push'
# abbr gpsuo 'git push --set-Upstream origin (git rev-parse --abbrev-ref HEAD)'
abbr grm 'git rm'
abbr grv 'git remote -v'
# abbr gsh 'git stash'
abbr gst 'git status -sb'
abbr gclone 'git clone '
abbr gwhoami 'echo "user.name:" (git config user.name) && echo "user.email:" (git config user.email)'

# no need to run over-and-over
set -g MY_ABBRS_INITIALIZED true
