//
// Created by Pedro Paulo Amorim on 10/03/2015.
// Copyright (c) 2015 Pedro Paulo Amorim. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    self.window = UIWindow(frame: CGRectMake(0, 0,
      CGRectGetWidth(UIScreen.mainScreen().bounds),
      CGRectGetHeight(UIScreen.mainScreen().bounds)))
    self.window!.backgroundColor = UIColor.whiteColor()
    let tabBar : MainViewController = UITabBarControllerHelper.generate()
    self.window!.rootViewController = tabBar
    self.window!.makeKeyAndVisible()
    return true
  }

}

