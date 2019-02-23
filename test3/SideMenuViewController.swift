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
    
    var menuItems = ["ACLS Protocols", "Parameters of Care by AAOMS","Is my patient an outpatient anesthesia candidate?", "Typical Free Flap Protocol", "Other Resources"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        menuTableView.dataSource = self
        menuTableView.delegate = self
        
//        let background = UIImageView(image: UIImage(named: "andre-iv-1310544-unsplash.jpg"))
//        self.menuTableView.backgroundView = background
////        background.contentMode = .scaleAspectFill
//        background.alpha = 0.8
//    
    
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
//     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return ""
//    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = menuItems[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
//        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        cell.textLabel?.font = UIFont(name: "Baskerville-SemiBold", size: 18)
        
//         cell.backgroundColor = UIColor.white
//        cell.contentView.layer.opacity = 0.4
      
        
        return cell
        
       }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
        
        let segueIdentifier: String
        switch indexPath.row {
        case 0: //For "one"
            segueIdentifier = "ACLSsegue"
        case 1: //For "two"
            segueIdentifier = "showView2"
        default: //For "three"
            segueIdentifier = "showView3"
        }
        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

    
    

}



