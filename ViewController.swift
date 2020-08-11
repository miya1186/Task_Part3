//
//  ViewController.swift
//  課題3
//
//  Created by miyazawaryohei on 2020/08/11.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var switch1: UISwitch!
    @IBOutlet var switch2: UISwitch!
    @IBOutlet var formula: UILabel!
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calc(_ sender: Any) {
        
        var text1 = Int(textField1.text!) ?? 0
        var text2 = Int(textField2.text!) ?? 0
        
        switch  status(){
        case 1:
            formula.text = String("\(-text1)       +        \(-text2)")
            result.text = String(-text1 + -text2)
            
        case 2:
            formula.text = String("\(-text1)       +        \(text2)")
            result.text = String(-text1 + text2)
        case 3:
            formula.text = String("\(text1)        +        \(-text2)")
            result.text = String(text1 + -text2)
        case 4:
            formula.text = String("\(text1)        +        \(text2)")
            result.text = String(text1 + text2)
        default:
            break
        }
    }
    
    func status () -> Int {
        if switch1.isOn == true && switch2.isOn == true {
            return 1
        }else if switch1.isOn == true && switch2.isOn == false {
            return 2
        }else if switch1.isOn == false && switch2.isOn == true {
            return 3
        }else if switch1.isOn == false && switch2.isOn == false {
            return 4
        }
        return 0
    }
    
}
