#!/bin/sh
xctool -workspace Fish.xcworkspace -scheme Fish -sdk iphonesimulator   test
xctool -workspace Fish.xcworkspace -scheme Fish -configuration Release -sdk iphoneos7.1 CONFIGURATION_BUILD_DIR='~/build/' build