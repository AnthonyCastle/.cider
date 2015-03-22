# If not running interactively, don't do anything
if [ -z "$PS1" ]; then
	return;
fi

export PS1="\n\w\n\u@\h \$ "
export EDITOR=subl
export GPG_TTY=`tty`

# adding Homebrew paths
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# adding Go paths
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# add home bin paths
export PATH="$HOME/bin:$PATH"

source ~/git-completion.sh

# ruby install
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.2.0
