#!/bin/bash
set -e
cd ${0%/*}
cd ../3rdparty/Riru-ModuleTemplate
git reset --hard HEAD
git clean -df .


cd ../FingerprintIdentify


sed -i "/jcenter()/a \        maven {\n            url 'https://maven.scijava.org/content/repositories/public/'\n        }" build.gradle


sed -i 's/com.novoda:bintray-release:0.9/com.novoda:bintray-release:0.9.2/g' build.gradle

