#!/bin/sh

#  springboard_build.sh
#  Springboard91
#
#  Created by Vinod pandey on 21/06/18.
#  Copyright © 2018 Vinod pandey. All rights reserved.

appname="Springboard91"
target_name="$appname"
sdk="iphoneos"    #or simulator
certificate=""
project_dir="$HOME/Documents/Project/Springboard91/$appname"
build_location="$Home/Builds/$appname
#/Users/vinodpandey/Documents/Project/Springboard91

if [ ! -d "$build_location" ]; then
mkdir -p "$build_location"
fi

cd "$project_dir"
xcodebuild -target "$appname" OBJROOT="$build_location/obj.root" SYMROOT="$build_location/sym.root"
xcrun -sdk iphoneos PackageApplication -v "$build_location/sym.root/Release-iphoneos/$appname.app" -o "$build_location/$appname.ipa" --sign "$certificate"
