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

class UITabBarControllerHelper {
  class func generate() -> MainViewController {
    
    let tabBarController = MainViewController()
    
    let tableViewController : UINavigationController = self.buildItem(TableViewController(),
      title: "list".localized, image: "cameras", tagValue: 0)
    
    let mapViewController : UINavigationController = self.buildItem(MapViewController(),
      title: "map".localized, image: "mapa", tagValue: 1)
    
    tabBarController.viewControllers = [tableViewController, mapViewController]
    return tabBarController
  }
  
  class func buildItem(viewController : UIViewController, title : String,
    image : String, tagValue : NSInteger) -> UINavigationController {
      let otherNavigationController = UINavigationController(rootViewController: viewController)
      otherNavigationController.navigationBarHidden = true
      otherNavigationController.tabBarItem = UITabBarItem(
        title: title.localized,
        image: UIImage(named: image),
        tag: tagValue)
      return otherNavigationController
  }
  
}