//
//  Decorator.swift
//  Decorator
//
//  Created by qingfeng on 2018/7/23.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

/**
 * 装饰抽象类
 * 继承了Component，从外类来扩展Component类的功能，但对于Component来说，时无需知道Decorator的存在
 */
class Decorator: Component {

    fileprivate var component: Component?

    func setComponent(_ component: Component) {
        self.component = component
    }
    
    override func operation() {
        if self.component != nil {
            self.component?.operation()
        }
    }
    
    
    
}
