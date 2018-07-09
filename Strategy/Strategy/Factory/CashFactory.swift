//
//  CashFactory.swift
//  Strategy
//
//  Created by 情风 on 2018/7/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

/// 收费工厂类
class CashFactory: NSObject {

    class func createCash(type: String) -> CashSuper {
        
        switch type {
        case "正常收费":
            return CashNormal()
        case "打折收费":
            return CashRebate(feeRate: 0.7)
        case "返利收费":
            return CashReturn(conditionFee: 300, returnFee: 100)
        default:
            return CashSuper()
        }
        
    }
    
}
