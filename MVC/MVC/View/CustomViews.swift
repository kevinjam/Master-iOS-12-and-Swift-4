//
//  CustomViews.swift
//  MVC
//
//  Created by Kevin Janvier on 17/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class CustomViews: UIView {

    override func awakeFromNib() {
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 4
        layer.cornerRadius = 15
        clipsToBounds = true
    }

}
