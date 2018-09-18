//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by Kevin Janvier on 18/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        recipImg.layer.cornerRadius = 10
        
    }
    
    func configureCell(recipe:Recipe) {
        recipImg.image = UIImage(named:recipe.imageName )
    }
}
