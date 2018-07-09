//
//  Operation.swift
//  Caculator
//
//  Created by qingfengiOS on 2018/7/7.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

/// 抽象类 定义方法，具体计算细节子类实现
class Operation: NSObject {

    var numberOne: Double = 0.0
    var numberTwo: Double = 0.0
 
    func getResult() -> Double {
        return 0.0
    }
}
