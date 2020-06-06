# PannarioKit

[![iOS Version](https://img.shields.io/badge/iOS_Version->=_11.0-brightgreen?logo=apple&logoColor=green)]() 
[![Swift Version](https://img.shields.io/badge/Swift_Version-5.2-green?logo=swift)](https://docs.swift.org/swift-book/)
[![Supported devices](https://img.shields.io/badge/Supported_Devices-iPhone/iPad-green)]()
[![Version](https://img.shields.io/cocoapods/v/PannarioKit.svg?style=flat)](http://cocoapods.org/pods/PannarioKit)
[![License](https://img.shields.io/cocoapods/l/PannarioKit.svg?style=flat)](http://cocoapods.org/pods/PannarioKit)

- [Requirements](#requirements)
- [Installation](#installation)
- [Overview](#overview)
- [Usage](#usage)
- [Author](#author)
- [License](#license)

## Requirements

- iOS 11.0+
- Xcode 11.0+
- Swift 5.2

## Installation

### CocoaPods

`PannarioKit` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PannarioKit'
```

Then just run `pod install`.

### Manually

Just drag and drop `PannarioKit.xcframework` into your project and select `Copy items if needed`.

## Overview

It's a framework which can be used to report various types of errors, bug etc. directly from the iOS application. These reports can later be seen and managed inside the administration interface.

## Usage

First make sure that you have imported a `PannarioKit`.

```swift
import PannarioKit
```

Then make sure that you add a new application with given bundleID in administrative interface. After that you receive token which you will use in the process of initialization of `PannarioKit`.

Initialize `PannarioKit` like so:

```swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Pannario.shared.configure(recognitions: [.shakeGesture, .imageCapture], token: "PLACE_YOUR_TOKEN_HERE")
        
        return true
    }

}
```

You can choose from different types of recognitions like `shakeGesture` and `imageCapture`. These recognitions are used to trigger and show `PannarioKit` over your application.

You can also show `PannarioKit` as you can see below:

```swift
final class MainViewController: UIViewController {
    
    // MARK: - IBAction
    
    @IBAction func showPannario(_ sender: UIButton) {
        Pannario.shared.present(over: self)
    }

}
```

And that's all. You have successfully integrated `PannarioKit`.

## Author

Pavol Kmet

- Email: [pavolkmet@icloud.com](mailto:pavolkmet@icloud.com)
- Twitter: [@PavolKmet](https://twitter.com/PavolKmet)

## License

PannarioKit is available under the MIT license. See the LICENSE file for more info.
