#!/bin/bash

VersionString=`grep -E 's.version.*=' WGBCommonAlertSheetView.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' WGBCommonAlertSheetView.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" WGBCommonAlertSheetView.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod trunk push ./WGBCommonAlertSheetView.podspec --allow-warnings --use-libraries
