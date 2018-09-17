//
//  ViewController.swift
//  FlightSwitch
//
//  Created by Kevin Janvier on 07/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //create a variable
    var isOn = true
    
    @IBOutlet weak var lighlabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonWasPressed(_ sender: Any) {
//        lighlabel.text = "WOWO"
//        lighlabel.textColor = .blue
        if isOn {
            view.backgroundColor = .white
            lighlabel.text = "Lights On"
            lighlabel.textColor = .black
            isOn = false
        }else{
            view.backgroundColor = .black
            lighlabel.text = "Lights Off"
            lighlabel.textColor = .white
            isOn = true
        }
    }
}

