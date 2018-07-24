//
//  ViewController.swift
//  Decorator
//
//  Created by qingfeng on 2018/7/17.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let person = Person("qingfeng")
        
        let dtx = Tie(person.name)
        let kk = LeatherShoses(person.name)
        let qpx = Suit(person.name)
        
        dtx.decorate(person)
        kk.decorate(dtx)
        qpx.decorate(kk)
        qpx.show()
        
        
    }

    


}

