# some history configuration
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="%F %T "
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

export HISTORY_SUBSTRING_SEARCH_FUZZY=1
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

setopt autocd
setopt autopushd

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

alias wla=~/Code/personal/worklog/worklog.py
#alias toggl=~/go/bin/toggl
alias tf=terraform
alias aws_prod="AWS_USE_YUBIKEY=true ~/Code/glitchdotcom/Glitch/aws/sh/select_profile.py production_admin"
alias aws_staging="AWS_USE_YUBIKEY=true ~/Code/glitchdotcom/Glitch/aws/sh/select_profile.py staging_admin"
alias gls="git log --stat"
alias gcamend="git commit --amend -m"
alias gd='GIT_PAGER="delta --features default decorations" git diff'
alias gdcopy='GIT_PAGER="delta --features copy" git diff'
#	Fastly
#alias fastly-staging='export FASTLY_API_TOKEN=$STAGING_FASTLY_API_TOKEN; export FASTLY_CUSTOMER_ID=$STAGING_FASTLY_CUSTOMER_ID;'
#alias fastly-dev='export FASTLY_API_TOKEN=$DEV_FASTLY_API_TOKEN; export FASTLY_CUSTOMER_ID=$DEV_FASTLY_CUSTOMER_ID;'
#alias fastly-prod='export FASTLY_API_TOKEN=$PRODUCTION_FASTLY_API_TOKEN; export FASTLY_CUSTOMER_ID=$PRODUCTION_FASTLY_CUSTOMER_ID;'
#alias fastly-status='if [[ "$FASTLY_API_TOKEN" == "$PRODUCTION_FASTLY_API_TOKEN" ]]; then echo "prod"; else echo "staging or dev"; fi'
alias tl='~/code/personal/osx-timelapse/timelapse.sh'
alias lg='nvm exec 12 lazygit'

alias wakatime=wakatime-cli

alias -- -="cd -"
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'

alias shm='aws ssm start-session --region us-east-2 --target '

#	additional terraform aliases
#alias tfw='terraform workspace'
#alias tfo="terraform output"

eval "$(thefuck --alias pls)"
eval "$(atuin init zsh)"

function sshu() { ssh -oStrictHostKeyChecking=no "ubuntu@$1" -i~/.ssh/id_glitch_ubuntu -Jjump.glitch.com -oIdentitiesOnly=yes; }
function ssshu() { ssh -oStrictHostKeyChecking=no "ubuntu@$1" -i~/.ssh/id_glitch_ubuntu -Jjump.staging.glitch.com -oIdentitiesOnly=yes; }

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH="~/dotfiles/scripts/:$PATH"
PATH="/Users/cori/.cargo/bin${PATH:+:${PATH}}";
export PATH=$PATH:/Users/cori/bin;
export PATH;

export ZSH_WAKATIME_PROJECT_DETECTION=true

###	ZPLUG	###
# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# Make sure to use double quotes to prevent shell expansion
zplug "djui/alias-tips", from:github
#zplug "MichaelAquilina/zsh-auto-notify", from:github
zplug "t413/zsh-background-notify", from:github
zplug "qoomon/zsh-lazyload", from:github
zplug "tom-auger/cmdtime", from:github
# zplug "Valiev/almostontop", from:github
zplug "wbingli/zsh-wakatime", from:github
zplug "xav-b/zsh-extend-history", from:github
zplug "zsh-users/zsh-completions", from:github
zplug "zsh-users/zsh-syntax-highlighting", from:github
zplug "zshzoo/macos", from:github
zplug "ellie/atuin", from:github

# zplug "plugins/timer", from:oh-my-zsh
# zplug "plugins/thefuck", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/history-substring-search", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh

#   do these last
zplug "unixorn/fzf-zsh-plugin", from:github
zplug "pschmitt/emoji-fzf", from:github
# zplug "Aloxaf/fzf-tab", from:github   

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

#   key bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

alias tfd='docker run -it -e MONGODB_ATLAS_PUBLIC_KEY="$MONGODB_ATLAS_PUBLIC_KEY" -e MONGODB_ATLAS_PRIVATE_KEY="$MONGODB_ATLAS_PRIVATE_KEY" -v ~/.aws:/root/.aws -v $(pwd):/data hashicorp/terraform:latest -chdir=/data'

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"  # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion" ] && . "$(brew --prefix nvm)/etc/bash_completion"  # This loads nvm bash_completion

#export AWS_USE_YUBIKEY=1
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#eval $(thefuck --alias)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

