//
//  ShadowView.swift
//  breakpoint
//
//  Created by Fitri San on 07/12/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }
}
