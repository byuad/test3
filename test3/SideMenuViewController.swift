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
    
    var menuItems = ["Parameters of Care by AAOMS","Is my patient an outpatient anesthesia candidate?", "Typical Free Flap Protocol", "Other Resources"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        menuTableView.dataSource = self
        
        let background = UIImageView(image: UIImage(named: "andre-iv-1310544-unsplash.jpg"))
        self.menuTableView.backgroundView = background
        background.contentMode = .scaleAspectFill
    
    
    
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
        
//         cell.backgroundColor = UIColor.white
//        cell.contentView.layer.opacity = 0.4
      
        
        return cell
        
       }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    

}



