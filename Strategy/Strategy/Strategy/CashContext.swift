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
 策略模式是一种定义一系列算法的方法，从概念上来看，所有这些算法完成的都是相同的工作，只是实现不同，它可以以相同的方式调用所有的算法，减少了各种算法类与使用算法的耦合
 
 策略模式的Strategy类层次为Context定义可一系列可供重用的算法或行为。继承有助于析取出这些算法的公共功能
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
    
    
    /// 获取最终结果
    ///
    /// - Parameter fee: 源费用
    /// - Returns: 结果费用
    func getResult(fee: Double) -> Double {
        return cs.acceptCash(originFee: fee)
    }
    
}
