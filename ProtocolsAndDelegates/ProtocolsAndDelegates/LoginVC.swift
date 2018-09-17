//
//  LoginVC.swift
//  ProtocolsAndDelegates
//
//  Created by Kevin Janvier on 17/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var usernameEntryTxt: UITextField!
    var delegate:LoginCompleteDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneClicked(_ sender: Any) {
        delegate?.userCreated(name: usernameEntryTxt.text ?? "No name")
        dismiss(animated: true, completion: nil)
    }
    

}
