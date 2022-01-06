#!/bin/sh
echo "#include \"$(echo $DART_DEFINES | base64 -d | tr ',' '\n' | grep 'FLAVOR' | sed 's/.*=//').xcconfig\"" > $SRCROOT/Flutter/DartDefine.xcconfig
