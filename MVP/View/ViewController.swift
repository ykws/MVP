//
//  ViewController.swift
//  MVP
//
//  Created by KAWASHIMA Yoshiyuki on 2019/04/13.
//  Copyright © 2019 ykws. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

  // MARK :- Outlets
  
  @IBOutlet weak var counterLabel: UILabel!
  
  // MARK :- Actions
  
  @IBAction func touchPlusButton(_ sender: Any) {
    presenter.didTapPlus()
  }
  
  @IBAction func touchMinusButton(_ sender: Any) {
    presenter.didTapMinus()
  }
  
  // MARK :- Properties
  
  private var presenter: CounterPresenterInput!
  
  func inject(presenter: CounterPresenterInput) {
    self.presenter = presenter
  }
}

extension ViewController: CounterPresenterOutput {
  func updateCount(_ count: Int) {
    counterLabel.text = count.description
  }
}
