#!/bin/sh

#  ci_post_clone.sh
#  Coffee
#
#  Created by devming on 10/18/23.
#  

curl -sL https://firebase.tools | upgrade=true bash

firebase login:ci

path=$CI_DEVELOPMENT_SIGNED_APP_PATH

echo "${path}"

exit 0
