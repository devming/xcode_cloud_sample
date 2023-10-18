#!/bin/sh

#  ci_post_clone.sh
#  Coffee
#
#  Created by devming on 10/18/23.
#  

unzip firebase-tools-macos.zip
chmod +x ./firebase-tools-macos
./firebase-tools-macos login:ci

exit 0
