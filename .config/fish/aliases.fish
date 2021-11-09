#!/usr/bin/env bash

# Easier navigation: .., ..., ...., ....., ~ and -
# alias .. "cd .."
# alias ... "cd ../.."
# alias .... "cd ../../.."
# alias ..... "cd ../../../.."
# alias ~ "cd ~"
# alias -- - "cd -"

# Customs
set ssd = '/../../Volumes/Ritesh/'
set ssd_cs = '$ssd/cs'
alias corporate "cd $ssd_cs/corporate"
alias learning "cd $ssd_cs/learning"
alias gsoc "cd $ssd_cs/gsoc"
alias opensource "cd $ssd_cs/opensource"
alias hackathons "cd $ssd_cs/hackathons"
alias webDev "cd $ssd_cs/projects/web-dev"
alias appDev "cd $ssd_cs/projects/app-dev"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS "--color auto"` is deprecated, hence the alias usage.
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo 'sudo '

# Get week number
alias week 'date +%V'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update 'sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# Google Chrome
alias chrome '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias canary '/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'

# IP addresses
alias ip "dig +short myip.opendns.com @resolver1.opendns.com"
alias localip "ipconfig getifaddr en0"
alias ips "ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive "ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# JavaScriptCore REPL
# jscbin "/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc";
# [ -e "$jscbin" ] && alias jsc="$jscbin";
# unset jscbin;

# Recursively delete `.DS_Store` files
alias cleanup "find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash "sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias show "defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide "defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hideDesktop "defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showDesktop "defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode 'python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Disable Spotlight
alias spotoff "sudo mdutil -a -i off"
# Enable Spotlight
alias spoton "sudo mdutil -a -i on"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill "ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Reload the shell (i.e. invoke as a login shell)
alias reload "exec $SHELL -l"

# Print each PATH entry on a separate line
alias path 'echo -e $PATH//:/\\n'
