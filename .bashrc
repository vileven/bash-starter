export GOPATH=$HOME/go:$HOME/mailapi
export GOROOT=/usr/local/opt/go/libexec
PATH=$PATH:$GOPATH/bin
PATH=$PATH:$GOROOT/bin
PATH=$PATH:/usr/local/bin/

export PATH;

# added by travis gem
[ -f /Users/anatolijostapenko/.travis/travis.sh ] && source /Users/anatolijostapenko/.travis/travis.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
