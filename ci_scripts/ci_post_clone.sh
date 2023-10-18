#!/bin/sh

#  ci_post_clone.sh
#  Coffee
#
#  Created by devming on 10/18/23.
#  

curl -sL https://firebase.tools | bash

firebase login:ci

exit 0
