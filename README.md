# GWSimpleAlert

[![CI Status](http://img.shields.io/travis/Gilwan Ryu/GWSimpleAlert.svg?style=flat)](https://travis-ci.org/Gilwan Ryu/GWSimpleAlert)
[![Version](https://img.shields.io/cocoapods/v/GWSimpleAlert.svg?style=flat)](http://cocoapods.org/pods/GWSimpleAlert)
[![License](https://img.shields.io/cocoapods/l/GWSimpleAlert.svg?style=flat)](http://cocoapods.org/pods/GWSimpleAlert)
[![Platform](https://img.shields.io/cocoapods/p/GWSimpleAlert.svg?style=flat)](http://cocoapods.org/pods/GWSimpleAlert)

## Example

Usage
```swift
GWAlert(title: "Title", message: "Message", style: .alert)
           .setActionOK(title: "OKActionTitle", complete: { action in
           // setOK Action
           }).setActionCancel(title: "CancelActionTitle", complete: { action in
           // setCancel Action
           }).show()
```

## Requirements

Xcode 8+ , Swift 3.2+

## Installation

GWSimpleAlert is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```swift
pod 'GWSimpleAlert'
```

## Author

Gilwan Ryu, opop_gwhi@naver.com

## License

GWSimpleAlert is available under the MIT license. See the LICENSE file for more info.
