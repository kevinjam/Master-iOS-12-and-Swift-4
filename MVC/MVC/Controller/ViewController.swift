//
//  ViewController.swift
//  MVC
//
//  Created by Kevin Janvier on 17/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var detdescLabel: UILabel!
    
    //create an object to pass into our label
    let movie = Movie(title: incrediblesTitle, description: incrediblesDescription, detailDescrition: incrediblesDetailsDescription)
    
    @IBAction func updateBtnWasPressed(_ sender: Any) {
        titleLabel.text = movie.title
        descLabel.text = movie.description
        detdescLabel.text = movie.detailDescrition
      
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

