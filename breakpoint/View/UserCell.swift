//
//  UserCell.swift
//  breakpoint
//
//  Created by Fitri San on 24/12/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    func configureCell(profileImage image : UIImage, email : String, isSelected : Bool){
        self.profileImage.image = image
        self.emailLbl.text = email
        if isSelected{
            self.checkImage.isHidden = false
        }else{
            self.checkImage.isHidden = true
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
