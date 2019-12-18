//
//  FirstViewController.swift
//  breakpoint
//
//  Created by Fitri San on 22/11/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {
    
    var messageArray = [Message]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        DataService.instance.getAllFeedMessages{(returnedMessagesArray) in
            self.messageArray = returnedMessagesArray
            self.tableView.reloadData()
            
        }
        
    }

}

extension FeedVC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as? FeedCell else { return UITableViewCell() }
        let image = UIImage(named : "defaultProfileImage")
        let message = messageArray[indexPath.row]
        
        cell.configureCell(profileImage: image!, email: message.senderId, content: message.content)
        return cell
    }
}
