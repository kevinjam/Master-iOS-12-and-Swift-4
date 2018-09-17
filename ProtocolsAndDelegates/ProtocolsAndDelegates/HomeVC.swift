//
//  ViewController.swift
//  ProtocolsAndDelegates
//
//  Created by Kevin Janvier on 17/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, LoginCompleteDelegate{

    @IBOutlet weak var UsernameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func userCreated(name: String) {
        UsernameLabel.text = name
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? LoginVC{
            destination.delegate =  self
        }
    }

}

