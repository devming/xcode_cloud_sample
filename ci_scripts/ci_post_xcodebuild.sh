#!/bin/sh

#  ci_post_xcodebuild.sh
#  Coffee
#
#  Created by devming on 10/18/23.
#

echo "Uploading Firebase Debug Build"

unzip firebase-tools-macos.zip
chmod +x ./firebase-tools-macos

echo "==1 "
ls $CI_DEVELOPMENT_SIGNED_APP_PATH
echo "==2"
ls $CI_ARCHIVE_PATH
echo "==3"
ls $CI_APP_STORE_SIGNED_APP_PATH
echo "==4"
ls $CI_AD_HOC_SIGNED_APP_PATH
echo "==5"

./firebase-tools-macos appdistribution:distribute $CI_DEVELOPMENT_SIGNED_APP_PATH/Coffee-.ipa --app $FIREBASE_APP_ID --token $FIREBASE_TOKEN --release-notes "Test 배포"

exit 0
