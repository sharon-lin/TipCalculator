//
//  ViewController.swift
//  TipsyTip
//
//  Created by Sharon Lin on 5/31/18.
//  Copyright © 2018 Sharon Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterBillTF: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var splitNumLabel: UILabel!
    @IBOutlet weak var splitNumSlider: UISlider!
    @IBOutlet weak var splitTotalLabel: UILabel!
    
    var tipCalcBrains = TipCalcBrains(billAmount: 25.00, tipPercent: 0.15, splitAmount: 2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipPercentValue()
    }
    
    @IBAction func billAmountChange(_ sender: Any) {
        calculateTip()
    }
    
    @IBAction func tipPercentChange(_ sender: Any) {
        tipPercentValue()
        calculateTip()
    }
    
    @IBAction func splitAmountChange(_ sender: Any) {
        splitAmountValue()
        calculateTip()
    }
    
    func calculateTip() {
        tipCalcBrains.tipPercent = Double(tipPercentSlider.value)
        tipCalcBrains.billAmount = ((enterBillTF.text)! as NSString).doubleValue
        tipCalcBrains.splitAmount = Int(splitNumSlider.value)
        tipCalcBrains.calculateTip()
        updateBillUI()
    }
    
    func updateBillUI() {
        totalAmount.text = String(format: "$%0.2f", tipCalcBrains.totalAmount)
        tipAmountLabel.text = String(format: "$%0.2f", tipCalcBrains.tipAmount)
        splitTotalLabel.text = String(format: "$%0.2f", tipCalcBrains.splitTotalAmount)
    }
    
    func tipPercentValue() {
        tipPercentLabel.text = "Tip: \(Int(tipPercentSlider.value * 100))%"
    }
    
    func splitAmountValue() {
        splitNumLabel.text = "Split \(Int(splitNumSlider.value))"
    }
    
}

