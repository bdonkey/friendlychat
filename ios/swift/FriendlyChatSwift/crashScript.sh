#!/bin/sh

#  crashScript.sh
#  FriendlyChatSwift
#
#  Created by Scott Schmidt on 5/21/16.
#  Copyright © 2016 Google Inc. All rights reserved.
# Replace this path with the path to the key you just downloaded

JSON_FILE=/Users/scottschmidt/AppleDev/firebase/friendlychat/FriendlyChat-e73544464129.json

# Replace this with the GOOGLE_APP_ID from your GoogleService-Info.plist file
GOOGLE_APP_ID=1:1:131693268371:ios:19116ced38073d91

defaults write com.google.SymbolUpload version -integer 1   # creates file if it does not exist
JSON=$(cat "${JSON_FILE}")
/usr/bin/plutil -replace "app_${GOOGLE_APP_ID//:/_}" -json "${JSON}" "$HOME/Library/Preferences/com.google.SymbolUpload.plist"
"${PODS_ROOT}"/FirebaseCrash/upload-sym