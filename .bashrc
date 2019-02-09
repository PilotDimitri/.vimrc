TH=$PATH:~/bin
export PS1="\W \$"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

n() {
        vi  ~/Notes/"$*".txt
}

nls() {
        ls -c ~/Notes/ | grep "$*"
}	
set -o vi

export PATH="/Users/tarasowski/.nvm/versions/node/v10.14.2/bin:/Users/tarasowski/Library/Python/3.7/bin::/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/tarasowski/.vimpkg/bin"

export PATH="/Users/tarasowski/.nvm/versions/node/v10.14.2/bin:/Users/tarasowski/Library/Python/3.7/bin::/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/tarasowski/.vimpkg/bin:/Users/tarasowski/.vimpkg/bin"

export NNN_TMPFILE="/tmp/nnn"

n()
{
        nnn "$@"

        if [ -f $NNN_TMPFILE ]; then
                . $NNN_TMPFILE
                rm -f $NNN_TMPFILE > /dev/null
        fi
}
