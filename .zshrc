export TERM="xterm-256color"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER="massim"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial zsh-iterm-touchbar zsh-autosuggestions)

# Include custom aliases
source ./addons/.aliases

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

# user PHP from brew
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

export DATABASE_WORDPRESS_USER="root"
export DATABASE_WORDPRESS_PASSWORD="veelData"
export DATABASE_WORDPRESS_HOST="127.0.0.1"
export APP_ENV="dev"

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/sbin:$PATH"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if [ -d "$HOME/Library/Python/2.7/bin" ]; then
    PATH="$HOME/Library/Python/2.7/bin:$PATH"
fi
