//
//  GroupCell.swift
//  breakpoint
//
//  Created by Fitri San on 01/01/2020.
//  Copyright © 2020 Fitri San. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title : String, description : String, memberCount : Int){
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members."
    }
    
    
    
}
