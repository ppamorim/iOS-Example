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
import PureLayout

class TableViewController : UIViewController {
  
  var didUpdateViews = false
  
  let tableView : UITableView = {
    let tableView = UITableView.newAutoLayoutView()
    return tableView
  }()
  
  override func loadView() {
    super.loadView()
    self.view.addSubview(tableView)
    self.view.setNeedsUpdateConstraints()
  }
  
  override func updateViewConstraints() {
    if(!didUpdateViews) {
      tableView.autoMatchDimension(.Width, toDimension: .Width, ofView: self.view)
      tableView.autoMatchDimension(.Height, toDimension: .Height, ofView: self.view)
      didUpdateViews = true;
    }
    super.updateViewConstraints()
  }
  
}