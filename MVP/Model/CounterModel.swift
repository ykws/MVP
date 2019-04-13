//
//  CounterModel.swift
//  MVP
//
//  Created by KAWASHIMA Yoshiyuki on 2019/04/13.
//  Copyright © 2019 ykws. All rights reserved.
//

struct CounterModel {
  private(set) var count: Int = 0
  
  mutating func countDown() { count -= 1 }
  mutating func countUp()   { count += 1 }
}

