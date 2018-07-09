//
//  ViewController.swift
//  Strategy
//
//  Created by 情风 on 2018/7/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:-Properties
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var countTextField: UITextField!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var totoalPrice: Double = 0
    
    var priceInfoArray = Array<Any>()
    
    //MARK:-View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK:-Actions
    @IBAction func normalBtnAction(_ sender: Any) {
        
        if !self.verfyValue() {
            return
        }
        
        let type = "正常收费"
        
        let resultTotalFee = self.useFactory(fee: totoalPrice, type: type)
        let resultTotalFee2 = self.useStrategy(fee: totoalPrice, type: type)
        totalPriceLabel.text = "工厂模式:\(String(resultTotalFee))\n策略模式:\(String(resultTotalFee2))"
    
    }
    
    
    @IBAction func discoutAction(_ sender: Any) {
        if !self.verfyValue() {
            return
        }
        
        let type = "打折收费"
        let resultTotalFee = self.useFactory(fee: totoalPrice, type: type)
        let resultTotalFee2 = self.useStrategy(fee: totoalPrice, type: type)
        totalPriceLabel.text = "工厂模式:\(String(resultTotalFee))\n策略模式:\(String(resultTotalFee2))"
    }
    
    @IBAction func returnAction(_ sender: Any) {
        
        if !self.verfyValue() {
            return
        }
        let type = "返利收费"
        let resultTotalFee = self.useFactory(fee: totoalPrice, type: type)
        let resultTotalFee2 = self.useStrategy(fee: totoalPrice, type: type)
        totalPriceLabel.text = "工厂模式:\(String(resultTotalFee))\n策略模式:\(String(resultTotalFee2))"
    }
    
    //MARK:-CustomMethods
    
    /// 输入框验证
    ///
    /// - Returns: 是否计算
    func verfyValue() -> Bool {
        guard priceTextField.text?.count != 0 else {
            return false
        }
        
        guard countTextField.text?.count != 0 else {
            return false
        }
        
        let price = (priceTextField.text! as NSString).doubleValue
        let productCount = (countTextField.text! as NSString).doubleValue
        totoalPrice = price * productCount
        
        return true
    }
    
    
    /// 使用简单工程模式
    ///
    /// - Parameters:
    ///   - fee: 费用
    ///   - type: 收费类型
    /// - Returns: 最终结果
    func useFactory(fee: Double, type: String) -> Double {
        let cash: CashSuper = CashFactory.createCash(type: type)
        let price = cash.acceptCash(originFee: fee)
   
        return price
        /*
         简单工程模式需要让客户端认识两个类：CashSuper 和 CashFactory
         */
    }
    
    /// 使用策略模式
    ///
    /// - Parameters:
    ///   - fee: 费用
    ///   - type: 收费类型
    /// - Returns: 最终结果
    func useStrategy(fee: Double, type: String) -> Double {
        let cs: CashContext = CashContext(type: type)
        let ratePrice = cs.getResult(fee: totoalPrice)
        return ratePrice
        /*
         策略模式只需要让客户端认识一个类CashContext，耦合更低
         */
    }
    
}

