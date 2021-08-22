#  Ngrok
 alias ngtoken='1Yf1P0WF7L6EbtA60oBJiGQ9Xs0_3LQH1xLnGGwFBYDeQd6QV'

 ## Flutter/Dart/Pub

 alias flak='flutter clean'
 alias fpg='flutter pub get'

 # Find all Dart projects and fetch dependencies. TODO: Fix -- for some reason kicks back to ~/.
#  alias fpgall="find `pwd` -name "pubspec.yaml" -print0 | xargs -0 -n1 dirname | sort --unique | xargs -L 1 sh -c '(cd $1 && pwd && flutter pub get)' sh"

 alias iosde='flutter pub get && (cd ios && pod install)'

 alias regen-mockito='flutter pub get && rm test/*.mocks.dart || true && flutter pub run build_runner build'
