
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH=/Users/cori/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#
#ZSH_THEME="random"
#ZSH_THEME="wedisagree-cori"
#ZSH_THEME="rkj-repos-cori"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY
#HIST_STAMPS="yyyy-mm-dd"
export HISTTIMEFORMAT="%F %T "
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

setopt autocd
setopt autopushd

# Would you like to use another custom folder than $ZSH/custom?
#ZSH_CUSTOM=~/.dotfiles/oh-my-zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git history terraform thefuck encode64 autojump vscode aws colored-man-pages iterm2 timer urltools xcode ripgrep docker-compose vagrant git-extras colored-man-pages colorize )

#source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias wla=~/Code/personal/worklog/worklog.py
#alias toggl=~/go/bin/toggl
#alias tf=terraform
#alias aws_prod="AWS_USE_YUBIKEY=true ~/Code/glitchdotcom/Glitch/aws/sh/select_profile.py production_admin"
#alias aws_staging="AWS_USE_YUBIKEY=true ~/Code/glitchdotcom/Glitch/aws/sh/select_profile.py staging_admin"
alias gls="git log --stat"
alias gcamend="git commint --amend -m"
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

eval "$(thefuck --alias pls)"

#function sshu() { ssh -oStrictHostKeyChecking=no "ubuntu@$1" -i~/.ssh/id_glitch_ubuntu -Jjump.glitch.com -oIdentitiesOnly=yes; }
#function ssshu() { ssh -oStrictHostKeyChecking=no "ubuntu@$1" -i~/.ssh/id_glitch_ubuntu -Jjump.staging.glitch.com -oIdentitiesOnly=yes; }

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH="~/dotfiles/scripts/:$PATH"
#PATH="/Users/cori/perl5/bin${PATH:+:${PATH}}";
PATH="/Users/cori/.cargo/bin${PATH:+:${PATH}}";
export PATH=$PATH:/Users/cori/bin;
export PATH;

export ZSH_WAKATIME_PROJECT_DETECTION=true

#PERL5LIB="/Users/cori/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/Users/cori/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/Users/cori/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Users/cori/perl5"; export PERL_MM_OPT;

###	ZPLUG	###
# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# Make sure to use double quotes to prevent shell expansion
# zplug "plugins/timer", from:oh-my-zsh
# zplug "plugins/thefuck", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/cmdtime", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh

zplug "djui/alias-tips", from:github
zplug "MichaelAquilina/zsh-auto-notify", from:github
zplug "qoomon/zsh-lazyload", from:github
zplug "Valiev/almostontop", from:github
zplug "wbingli/zsh-wakatime", from:github
zplug "xav-b/zsh-extend-history", from:github
zplug "zsh-users/zsh-completions", from:github
zplug "zsh-users/zsh-history-substring-search", from:github
zplug "zsh-users/zsh-syntax-highlighting", from:github
zplug "zshzoo/macos", from:github

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

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"  # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion" ] && . "$(brew --prefix nvm)/etc/bash_completion"  # This loads nvm bash_completion

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#	test "$(ps -ocommand= -p $PPID | awk '{print $1}')" = 'script' || (script -a -F $HOME/cmdlogs/$(date +"%Y-%m-%d").${HOSTNAME:-$(hostname)}.log)

#export AWS_USE_YUBIKEY=1
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
