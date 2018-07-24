//
//  Component.swift
//  Decorator
//
//  Created by qingfeng on 2018/7/23.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

/// Component 定义一个对象接口，可以给这些对象动态地添加职责
class Component: NSObject {
    func operation() {
        print("Component.operation")
    }
}
