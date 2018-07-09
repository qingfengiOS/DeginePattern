//
//  ViewController.swift
//  Caculator
//
//  Created by qingfengiOS on 2018/7/7.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondTF: UITextField!
    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK:-Actions
    @IBAction func add(_ sender: Any) {
        
        if (self.firstTF.text?.count)! == 0 || (self.secondTF.text?.count)! == 0 {
            return
        }
        let operatoion = OperationFactory.operationCreate("+")!
        operatoion.numberOne = (self.firstTF.text! as NSString).doubleValue
        operatoion.numberTwo = (self.secondTF.text! as NSString).doubleValue
        let res = operatoion.getResult()
        resultLabel.text = String(res)
        
    }

    @IBAction func sub(_ sender: Any) {
        if (self.firstTF.text?.count)! == 0 || (self.secondTF.text?.count)! == 0 {
            return
        }
        let operatoion = OperationFactory.operationCreate("-")!
        operatoion.numberOne = (self.firstTF.text! as NSString).doubleValue
        operatoion.numberTwo = (self.secondTF.text! as NSString).doubleValue
        let res = operatoion.getResult()
        resultLabel.text = String(res)
    }
    
    @IBAction func mul(_ sender: Any) {
        if (self.firstTF.text?.count)! == 0 || (self.secondTF.text?.count)! == 0 {
            return
        }
        let operatoion = OperationFactory.operationCreate("*")!
        operatoion.numberOne = (self.firstTF.text! as NSString).doubleValue
        operatoion.numberTwo = (self.secondTF.text! as NSString).doubleValue
        let res = operatoion.getResult()
        resultLabel.text = String(res)
    }
    
    @IBAction func div(_ sender: Any) {
        if (self.firstTF.text?.count)! == 0 || (self.secondTF.text?.count)! == 0 {
            return
        }
        let operatoion = OperationFactory.operationCreate("/")!
        operatoion.numberOne = (self.firstTF.text! as NSString).doubleValue
        operatoion.numberTwo = (self.secondTF.text! as NSString).doubleValue
        let res = operatoion.getResult()
        resultLabel.text = String(res)
    }
}

