export PATH=~/Library/Python/3.7/bin::$PATH
PS1='\w\$ '
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export AWS_PROFILE=default

alias lst='~/.bash/find.sh'
alias system='open "x-apple.systempreferences:"'
alias apps='open /Applications/'
alias chrome='open -a "Google Chrome"'
alias calendar='open -a "Calendar"'
alias tomato='open -a "Tomato One"'
alias itunes='open -a "iTunes"'
alias reminders='open -a "Reminders"'
alias dash='open -a "Dash"'
alias relax='open -a "Relax Melodies"'
alias gist='open -a "Lepton"'
alias clean='open -a "AppCleaner"'
alias authy='open -a "Authy Desktop"'
alias contacts='open -a "Contacts"'
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias text='open -a "TextEdit"'
alias downloads='open ~/Downloads'
alias c='clear'
alias desktop='open ~/Desktop'
alias last='ls -tU | head -n5'
alias messages='open -a "Messages"'
