//
//  VideosViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/15/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideosViewController: UIViewController {
    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let videoString:String? = Bundle.main.path(forResource: "wisdom_teeth_management", ofType: ".mp4")
        
        if let url = videoString {
            let videoURL = NSURL(fileURLWithPath: url)
            
            self.player = AVPlayer(url: videoURL as URL)
            
            self.playerController.player = self.player
        }
    }
    
    @IBAction func goButton(_ sender: Any) {
        self.present(self.playerController, animated: true, completion: {
            
            self.playerController.player?.play()
        })
    }
}
