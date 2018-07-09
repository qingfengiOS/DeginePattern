//
//  OperationAdd.swift
//  Caculator
//
//  Created by qingfengiOS on 2018/7/7.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

class OperationAdd: Operation {

    override func getResult() -> Double {
        return Double(numberOne + numberTwo)
    }
}
