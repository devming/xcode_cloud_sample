#!/bin/sh

#  ci_post_clone.sh
#  Coffee
#
#  Created by devming on 10/18/23.
#  

curl -sL https://firebase.tools | bash

firebase login

firebase appdistribution:distribute $CI_DEVELOPMENT_SIGNED_APP_PATH/Coffee.ipa --app 1:150620856531:ios:7654e882fed44a1799b426 --release-notes "Test 배포"

exit 0
