cite about-alias
about-alias 'custom aliases'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias sub=subl

alias sudo='sudo '

alias mamp=/Applications/mampstack/ctlscript.sh

alias mkdir="mkdir -pv"
alias wget="wget -c"

alias mamp=/Applications/mampstack-5.5.25-0/ctlscript.sh

# make executable
alias ax="chmod a+x"
# edit .bash_profile
alias bp="$EDITOR ~/.bash_profile"
# edit keybindings.dict
alias kb="$EDITOR ~/Library/KeyBindings/DefaultKeyBinding.dict"
# reload your bash config
alias src="source ~/.bash_profile"

# find files in our current directory
alias fhere="find . -name "

# copy output of last command to clipboard
alias cl="fc -e -|pbcopy"

# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

# copy the working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'

# DNS (with update thanks to @blanco)
alias flush="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# share history between terminal sessions
alias he="history -a" # export history
alias hi="history -n" # import history

# recursively delete Dropbox conflicted files
alias rmdbc="find . -name *\ \(*conflicted* -exec rm {} \;"

# list TODO/FIX lines from the current project
alias todos="ack -n --nogroup '(TODO|FIX(ME)?):'"

# Easy editing of hosts file
alias edithosts="sub -n -w /private/etc/hosts"

# Launch Chrome in insecure mode
alias insecurechrome="open /Applications/Google\ Chrome.app --args --allow-running-insecure-content --ignore-certificate-errors"

# change mac address for airport wifis
alias changemacaddress="sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -z \
    && openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' \
    | xargs sudo ifconfig en0 ether \
    && sudo ifconfig en0 down \
    && sudo ifconfig en0 up"

# easy access to brew cask commands
alias cask="brew cask"
