# GWSimpleAlert

[![Version](https://img.shields.io/cocoapods/v/GWSimpleAlert.svg?style=flat)](http://cocoapods.org/pods/GWSimpleAlert)
[![License](https://img.shields.io/cocoapods/l/GWSimpleAlert.svg?style=flat)](http://cocoapods.org/pods/GWSimpleAlert)
[![Platform](https://img.shields.io/cocoapods/p/GWSimpleAlert.svg?style=flat)](http://cocoapods.org/pods/GWSimpleAlert)

## Example

Usage

Standard
```swift
GWAlert(title: "Title", message: "Message")
           .setActionConfirm(title: "OKActionTitle", complete: { action in
                // Set Confirm Action
           }).setActionCancel(title: "CancelActionTitle", complete: { action in
                // set Cancel Action
           }).show()
```

AddTextField
```swift
GWAlert(title: "Title", message: "Message")
            .addTextField(placeholder: "placeholder", keyboardType: .default)
            .setActionConfirm(title: "ActionTitle", complete: { action in
                // Set Confirm Action
            }, tfHandler: { text in
                // Return TextField Text
            })
            .setActionCancel(title: "ActionTItle", complete: { action in
                // set Cancel Action
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
