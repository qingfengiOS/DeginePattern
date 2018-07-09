//
//  CashContext.swift
//  Strategy
//
//  Created by 情风 on 2018/7/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit


/// 策略模式
/**
 
 */
class CashContext: NSObject {

    var cs: CashSuper = CashSuper()
    
    init(type: String) {
        switch type {
        case "正常收费":
            cs = CashNormal()
        case "打折收费":
            cs = CashRebate(feeRate: 0.7)
        case "返利收费":
            cs = CashReturn(conditionFee: 300, returnFee: 100)
        default: break
        }
    }
    
    func getResult(fee: Double) -> Double {
        return cs.acceptCash(originFee: fee)
    }
    
}
