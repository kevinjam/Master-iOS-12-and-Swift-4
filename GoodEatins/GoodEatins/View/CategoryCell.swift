//
//  CategoryCell.swift
//  GoodEatins
//
//  Created by Kevin Janvier on 17/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    
    @IBOutlet weak var categoryImage: UIImageView!
    
    
    @IBOutlet weak var categoryTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       categoryImage.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    func configureCell(category:FoodCategory){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    
    }

}
