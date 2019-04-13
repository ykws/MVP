//
//  CounterPresenter.swift
//  MVP
//
//  Created by KAWASHIMA Yoshiyuki on 2019/04/13.
//  Copyright © 2019 ykws. All rights reserved.
//

import Foundation

protocol CounterPresenterInput {
  func didTapPlus()
  func didTapMinus()
}

protocol CounterPresenterOutput {
  func updateCount(_ count: Int)
}

final class CounterPresenter: CounterPresenterInput {
  private var view: CounterPresenterOutput
  private var model: CounterModel
  
  init(view: CounterPresenterOutput, model: CounterModel) {
    self.view = view
    self.model = model
  }
  
  func didTapPlus() {
    model.countUp()
    view.updateCount(model.count)
  }
  
  func didTapMinus() {
    model.countDown()
    view.updateCount(model.count)
  }
}
