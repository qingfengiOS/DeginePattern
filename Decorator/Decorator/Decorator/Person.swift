//
//  Person.swift
//  Strategy
//
//  Created by qingfeng on 2018/7/17.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

class Person: NSObject {

    /// 姓名
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
 
    func show(){
        print("装扮对象：\(self.name)")
    }
    
}
