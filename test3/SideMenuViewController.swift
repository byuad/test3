//
//  SideMenuViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/17/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit
import SideMenu

class SideMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

 
    @IBOutlet var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        menuTableView.dataSource = self
    
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        
        return cell
    }
  


}



