//
//  FeedCell.swift
//  breakpoint
//
//  Created by Fitri San on 16/12/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage : UIImage, email : String, content : String){
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
