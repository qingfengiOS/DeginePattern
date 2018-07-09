//
//  CashNormal.swift
//  Strategy
//
//  Created by 情风 on 2018/7/9.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

/// 正常收费类
class CashNormal: CashSuper {

    override func acceptCash(originFee: Double) -> Double {
        return originFee
    }
}
