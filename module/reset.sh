#!/bin/bash
set -e
cd ${0%/*}
cd ../3rdparty/Riru-ModuleTemplate
git reset --hard HEAD
git clean -df .


cd ${0%/*}
cd ../3rdparty/FingerprintIdentify

sed -i 's/com.novoda:bintray-release:0.9/com.novoda:bintray-release:0.9.2/g' build.gradle

