//
//  CashReturn.swift
//  Strategy
//
//  Created by 情风 on 2018/7/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

/// 收费返利类
class CashReturn: CashSuper {

    var feeCondition: Double = 0.0
    var feeReturn: Double = 0.0
    
    init(conditionFee: Double, returnFee: Double) {
        self.feeReturn = returnFee
        self.feeCondition = conditionFee
    }
    
    override func acceptCash(originFee: Double) -> Double {
        if originFee >= feeCondition {
            return originFee - feeReturn * Double((Int(originFee) / Int(feeCondition)))
        } else {
            return originFee
        }
    }
    
}
