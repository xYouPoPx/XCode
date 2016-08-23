//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by YCourteau on 2015-10-12.
//  Copyright © 2015 YCourteau. All rights reserved.
// http://www.raywenderlich.com/115279/swift-2-tutorial-part-2-a-simple-ios-app
//

import Foundation

class TipCalculatorModel{
	
	// 2
	var total: Double
	var taxPct: Double

	
	var subtotal: Double {
  		get {
				return total / (taxPct + 1)
  		}
	}
	
	// 3
	init(total: Double, taxPct: Double) {
		self.total = total
		self.taxPct = taxPct
	}
	
	// 4
	func calcTipWithTipPct(tipPct: Double) -> Double {
		return subtotal * tipPct
	}
	
	// 1
	func returnPossibleTips() -> [Int: Double] {
		
		let possibleTipsInferred = [0.15, 0.18, 0.20]
		
		// 2
		var retval = [Int: Double]()
		for possibleTip in possibleTipsInferred {
			let intPct = Int(possibleTip*100)
			// 3
			retval[intPct] = calcTipWithTipPct(possibleTip)
		}
		return retval
		
	}
	
}
