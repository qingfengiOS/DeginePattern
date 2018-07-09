//
//  OperationDiv.swift
//  Caculator
//
//  Created by qingfengiOS on 2018/7/7.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

class OperationDiv: Operation {
    override func getResult() -> Double {
        
        assert(numberTwo != 0,"除数不能为0")
    
        return Double(numberOne / numberTwo)
    }
}
