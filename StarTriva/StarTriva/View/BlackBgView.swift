//
//  BlackBgView.swift
//  StarTriva
//
//  Created by Kevin Janvier on 24/09/2018.
//  Copyright © 2018 Kevin Janvier. All rights reserved.
//

import UIKit

class BlackBgView: UIView{
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
class BlackBgButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
