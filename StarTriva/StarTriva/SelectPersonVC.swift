//
//  ViewController.swift
//  StarTriva
//
//  Created by Kevin Janvier on 20/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var heighLbl: UILabel!
    @IBOutlet weak var hairLbL: UIStackView!
    @IBOutlet weak var yearLbL: UILabel!
    @IBOutlet weak var genderLbL: BlackBgView!
    
    @IBOutlet weak var massLbl: UIStackView!
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personApi.getRandomPersonSession()
        //make network request
    }



}

