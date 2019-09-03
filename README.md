# WGBCommonAlertSheetView

[![CI Status](https://img.shields.io/travis/Wangguibin/WGBCommonAlertSheetView.svg?style=flat)](https://travis-ci.org/Wangguibin/WGBCommonAlertSheetView)
[![Version](https://img.shields.io/cocoapods/v/WGBCommonAlertSheetView.svg?style=flat)](https://cocoapods.org/pods/WGBCommonAlertSheetView)
[![License](https://img.shields.io/cocoapods/l/WGBCommonAlertSheetView.svg?style=flat)](https://cocoapods.org/pods/WGBCommonAlertSheetView)
[![Platform](https://img.shields.io/cocoapods/p/WGBCommonAlertSheetView.svg?style=flat)](https://cocoapods.org/pods/WGBCommonAlertSheetView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
 
## Usage
 
 ```objc
 
     UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 500) style:(UITableViewStylePlain)];
     tableView.backgroundColor = randomColor;
     WGBCommonAlertSheetView *sheet = [[WGBCommonAlertSheetView alloc] initWithFrame:UIScreen.mainScreen.bounds containerView:tableView];
     sheet.isNeedBlur = arc4random()%2;
     sheet.blurStyle = arc4random()%2+1;
     sheet.touchDismiss = YES;
     [sheet show];
 ```

## Requirements

 Support iOS8.0+

## Installation

WGBCommonAlertSheetView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WGBCommonAlertSheetView'
```

## Author

Wangguibin, 864562082@qq.com

## License

WGBCommonAlertSheetView is available under the MIT license. See the LICENSE file for more info.
