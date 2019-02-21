//
//  ViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/14/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    
        // Removes navBar GREY and lines
        
        
//        UITabBar.appearance().backgroundColor = UIColor.clear
//        UITabBar.appearance().backgroundImage = UIImage()
//
       
    
         let menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as! UISideMenuNavigationController
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        SideMenuManager.default.menuFadeStatusBar = false
        
         SideMenuManager.default.menuShadowColor = UIColor.black
        
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        self.navigationController!.navigationBar.tintColor = UIColor.black
        
//        let image: UIImage = UIImage(named: "UNMCiconWhite.png")!
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
//        imageView.contentMode = .scaleAspectFit
//        imageView.image = image
//        self.navigationItem.titleView = imageView
        
       
//        let image: UIImage = UIImage(named: "UNMCiconWhite.png")!
//    addLogoImage(image: image, navItem: title)
    }


    
    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToWeb", sender: self)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToWeb" {
//
//        }
//    }
    
   
   
    
}
//
//extension UINavigationController {
//    func addLogoImage(image: UIImage, navItem: UINavigationItem) {
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFit
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
//        view.addSubview(imageView)
//
//        navItem.titleView = view
//        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
//        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//
//        view.heightAnchor.constraint(equalTo: navigationBar.heightAnchor).isActive = true
//        view.centerXAnchor.constraint(equalTo: navigationBar.centerXAnchor).isActive = true
//        view.centerYAnchor.constraint(equalTo: navigationBar.centerYAnchor).isActive = true
//    }
//}

