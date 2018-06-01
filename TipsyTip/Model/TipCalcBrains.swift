//
//  TipCalcBrains.swift
//  TipsyTip
//
//  Created by Sharon Lin on 6/1/18.
//  Copyright © 2018 Sharon Lin. All rights reserved.
//

import Foundation

class TipCalcBrains {
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    private var _splitAmount: Int = 0
    private var _splitTotalAmount: Double = 0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var splitAmount: Int {
        get {
            return _splitAmount
        } set {
            _splitAmount = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    var splitTotalAmount: Double {
        return _splitTotalAmount
    }
    
    init(billAmount: Double, tipPercent: Double, splitAmount: Int) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
        self._splitAmount = splitAmount
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAmount + billAmount
        _splitTotalAmount = totalAmount / Double(splitAmount)
    }
}
