//
//  AppDelegate.swift
//  PannarioKit - Example
//
//  Created by Pavol Kmeť on 06/06/2020.
//  Copyright © 2020 Pannario. All rights reserved.
//

import UIKit
import PannarioKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Pannario.shared.configure(recognitions: [.shakeGesture, .imageCapture], token: "fdc90d43-03b3-5462-84da-01caa05e7cc9")
        
        return true
    }

}

