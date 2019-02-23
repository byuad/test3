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
    

    @IBOutlet weak var parallaxImageView: UIImageView!
    
    
    @IBAction func schedulePressed(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setupParallax()
        
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
    
   
//    func setupParallax() {
//        let min = CGFloat(-30)
//        let max = CGFloat(30)
//
//        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
//        xMotion.minimumRelativeValue = min
//        xMotion.maximumRelativeValue = max
//
//        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
//        yMotion.minimumRelativeValue = min
//        yMotion.maximumRelativeValue = max
//
//        let motionEffectGroup = UIMotionEffectGroup()
//        motionEffectGroup.motionEffects = [xMotion, yMotion]
//
//        parallaxImageView.addMotionEffect(motionEffectGroup)
//    }

    
    
    
}

