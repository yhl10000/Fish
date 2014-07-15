#!/bin/sh
xctool -workspace Fish.xcworkspace -scheme Fish -sdk iphonesimulator   test
xctool -workspace Fish.xcworkspace -scheme Fish -configuration Release -sdk iphoneos CONFIGURATION_BUILD_DIR='~/build/' build