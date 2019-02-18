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
    
    var selectedVideoFileName : String = ""
    let videoArray = ["thirdmolar", "implantClip", "canineClip", "TADClip", "orthogClip", "missingToothClip"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image: UIImage = UIImage(named: "UNMCicon.png")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
        
        }
    
    
    
    @IBAction func goButton(_ sender: UIButton) {
        
        selectedVideoFileName = videoArray[sender.tag-1]
        
       playVideo()
   
      }


    func playVideo() {
        
        let videoString:String? = Bundle.main.path(forResource: selectedVideoFileName, ofType: ".mp4")
        
        if let url = videoString {
            let videoURL = NSURL(fileURLWithPath: url)
            
            self.player = AVPlayer(url: videoURL as URL)
            
            self.playerController.player = self.player
            
            self.present(self.playerController, animated: true, completion: {
                
                self.playerController.player?.play()
        
    })
    
}

}

}
