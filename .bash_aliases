self_dir="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"
. "${self_dir}/.bash_functions"

# General Bash Utilities
alias untar='tar -zxvf '

## IP utils
### Get external IP (echo for the newline)
alias ipe='curl ipinfo.io/ip && echo ""'
### Get local IP
alias ipi='ipconfig getifaddr en0'

##  Ngrok
alias ngtoken='1Yf1P0WF7L6EbtA60oBJiGQ9Xs0_3LQH1xLnGGwFBYDeQd6QV'

## Flutter/Dart/Pub
if doesCommandExist fvm; then
    addPath "$HOME/fvm/default/bin/"
fi

alias flak='flutter clean'
alias fpg='flutter pub get'

# Find all Dart projects and fetch dependencies. TODO: Fix -- for some reason kicks back to ~/.
# alias fpgall="find `pwd` -name "pubspec.yaml" -print0 | xargs -0 -n1 dirname | sort --unique | xargs -L 1 sh -c '(cd $1 && pwd && flutter pub get)' sh"

alias iosde='flutter pub get && (cd ios && pod install)'

alias regen-mockito='flutter pub get && rm test/*.mocks.dart || true && flutter pub run build_runner build'

## Safety nets

### do not delete / or prompt if deleting more than 3 files at a time
alias rm='rm -i'

### confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

## ls shortcuts
alias ls='ls -F'
alias ll='ls -lh'
alias la='ls -a'
