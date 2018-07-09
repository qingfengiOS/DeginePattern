//
//  OperationFactory.swift
//  Caculator
//
//  Created by qingfengiOS on 2018/7/7.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

/// 计算类简单工厂方法
class OperationFactory: NSObject {

    class func operationCreate(_ operation: String) -> Operation? {
        
        
        switch operation {
        case "+":
            return OperationAdd()
        case "-":
            return OperationSub()
        case "*":
            return OperationMul()
        case "/":
            return OperationDiv()
        default:
            break
        }
        return nil
    
    }
}
