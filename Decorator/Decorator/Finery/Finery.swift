//
//  Finery.swift
//  Decorator
//
//  Created by qingfeng on 2018/7/23.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

/// 服饰类
class Finery: Person {
    
    var component: Person?
    
    func decorate(_ component: Person) {
        self.component = component
    }
    
    override func show() {
        if self.component != nil {
            self.component?.show()
        }
    }
    
}
