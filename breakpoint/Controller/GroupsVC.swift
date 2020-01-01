//
//  SecondViewController.swift
//  breakpoint
//
//  Created by Fitri San on 22/11/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit

class GroupsVC: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.delegate = self
        groupsTableView.dataSource = self
    }


}

extension GroupsVC : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupsTableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else { return UITableViewCell()}
        cell.configureCell(title: "Hey nerd", description: "The nerdiest nerd around.", memberCount: 3)
        return cell
    }
}



