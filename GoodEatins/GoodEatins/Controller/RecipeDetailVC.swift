//
//  RecipeDetailVC.swift
//  GoodEatins
//
//  Created by Kevin Janvier on 18/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class RecipeDetailVC: UIViewController {

    
    
    
    @IBOutlet weak var recipeImg: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipDetails: UILabel!
    
    var selectedRecipe : Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipeImg.image = UIImage(named: selectedRecipe.imageName)
        recipeTitle.text = selectedRecipe.title
        recipDetails.text = selectedRecipe.instructions
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

   
}
