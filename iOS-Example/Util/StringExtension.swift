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
import Foundation

extension String {
  
  var localized : String {
    return NSLocalizedString(self, value: "", comment: "")
  }
  
  func subString(startIndexx: Int, length: Int) -> String {
    let start = startIndex.advancedBy(startIndexx)
    let end = startIndex.advancedBy(startIndexx + length)
    return self.substringWithRange(Range<String.Index>(start: start, end: end))
  }
  
}