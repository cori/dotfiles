# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/cori/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wedisagree-cori"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.dotfiles/oh-my-zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git history terraform thefuck encode64 autojump vscode aws iterm2 timer urltools xcode ripgrep docker-compose vagrant git-extras colored-man-pages colorize macos alias-tips )

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias wla=~/Code/personal/worklog/worklog.py
alias tf=terraform
alias aws_prod="AWS_USE_YUBIKEY=true ~/Code/glitchdotcom/Glitch/aws/sh/select_profile.py production_admin"
alias aws_staging="AWS_USE_YUBIKEY=true ~/Code/glitchdotcom/Glitch/aws/sh/select_profile.py staging_admin"
alias gls="git log --stat"
alias gcamend="git commint --amend -m"
alias ld='date +"%F %X" | tee >( tr -d "\n" | pbcopy)'
alias ud='date -u +"%F %X" | tee >( tr -d "\n" | pbcopy)'

#	Fastly
alias fastly-staging='export FASTLY_API_TOKEN=$STAGING_FASTLY_API_TOKEN; export FASTLY_CUSTOMER_ID=$STAGING_FASTLY_CUSTOMER_ID;'
alias fastly-dev='export FASTLY_API_TOKEN=$DEV_FASTLY_API_TOKEN; export FASTLY_CUSTOMER_ID=$DEV_FASTLY_CUSTOMER_ID;'
alias fastly-prod='export FASTLY_API_TOKEN=$PRODUCTION_FASTLY_API_TOKEN; export FASTLY_CUSTOMER_ID=$PRODUCTION_FASTLY_CUSTOMER_ID;'
alias fastly-status='if [[ "$FASTLY_API_TOKEN" == "$PRODUCTION_FASTLY_API_TOKEN" ]]; then echo "prod"; else echo "staging or dev"; fi'
alias tl='~/code/personal/osx-timelapse/timelapse.sh'
alias lg='nvm exec 12 lazygit'

eval "$(thefuck --alias pls)"

function sshu() { ssh -oStrictHostKeyChecking=no "ubuntu@$1" -i~/.ssh/id_glitch_ubuntu -Jjump.glitch.com -oIdentitiesOnly=yes; }
function ssshu() { ssh -oStrictHostKeyChecking=no "ubuntu@$1" -i~/.ssh/id_glitch_ubuntu -Jjump.staging.glitch.com -oIdentitiesOnly=yes; }

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH="~/dotfiles/scripts/:$PATH"
PATH="/Users/cori/perl5/bin${PATH:+:${PATH}}";
PATH="/Users/cori/.cargo/bin${PATH:+:${PATH}}";
export PATH;

PERL5LIB="/Users/cori/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/cori/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/cori/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/cori/perl5"; export PERL_MM_OPT;

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#	test "$(ps -ocommand= -p $PPID | awk '{print $1}')" = 'script' || (script -a -F $HOME/cmdlogs/$(date +"%Y-%m-%d").${HOSTNAME:-$(hostname)}.log)

export AWS_USE_YUBIKEY=1
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export ATUIN_NOBIND="true" 
eval "$(atuin init zsh)"

bindkey '^[[5~' _atuin_search_widget
