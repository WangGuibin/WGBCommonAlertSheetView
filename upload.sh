#!/bin/bash
git add .
git commit -am  "1.0.2"
git tag  1.0.2
git push origin master --tags
pod trunk push ./WGBCommonAlertSheetView.podspec --allow-warnings --verbose
