//: [⇐ Previous: 01 - Introduction](@previous)
//: ## Episode 02: Enumerations

import UIKit
import SwiftUI

enum Month: Int {
  case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

let month: Month = .october
let rawMonth = Month(rawValue: 3)

func monthsUntilJingleBells(from month: Month) -> Int {
  Month.december.rawValue - month.rawValue
}

monthsUntilJingleBells(from: .november)


enum Season: String, CaseIterable {
  /// ☃️
  case winter
  
  /// 🌸
  case spring
  
  /// 😎
  case summer
  
  /// 🍂
  case autumn
}

Season.winter.rawValue

Season.allCases.filter {
  $0.rawValue.first == "s"
}





//: [⇒ Next: 03 - Challenge - Enumerations](@next)
