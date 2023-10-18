#!/bin/sh

#  ci_post_xcodebuild.sh
#  Coffee
#
#  Created by devming on 10/18/23.
#  

firebase appdistribution:distribute $CI_DEVELOPMENT_SIGNED_APP_PATH/Coffee.ipa --app $FIREBASE_APP_ID --token $FIREBASE_TOKEN --release-notes "Test 배포"

exit 0
