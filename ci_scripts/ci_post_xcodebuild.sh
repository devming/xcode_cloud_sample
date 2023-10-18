#!/bin/sh

#  ci_post_xcodebuild.sh
#  Coffee
#
#  Created by devming on 10/18/23.
#

echo "Uploading Firebase Debug Build"

unzip firebase-tools-macos.zip
chmod +x ./firebase-tools-macos

./firebase-tools-macos appdistribution:distribute $CI_DEVELOPMENT_SIGNED_APP_PATH/DevCoffeeeeeMing.ipa --app $FIREBASE_APP_ID --token $FIREBASE_TOKEN --release-notes "Test 배포"

exit 0
