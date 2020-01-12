//
//  GroupFeedCell.swift
//  breakpoint
//
//  Created by Fitri San on 09/01/2020.
//  Copyright © 2020 Fitri San. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage : UIImage, email : String, content : String){
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
    
}
