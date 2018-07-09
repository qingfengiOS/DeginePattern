//
//  CashRebate.swift
//  Strategy
//
//  Created by 情风 on 2018/7/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

/// 收费折扣类
class CashRebate: CashSuper {

    var feeRate: Double = 1.0
    
    init(feeRate: Double) {
        self.feeRate = feeRate
    }
    
    override func acceptCash(originFee: Double) -> Double {
        return originFee * feeRate
    }
    
}
