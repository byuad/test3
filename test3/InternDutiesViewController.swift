//
//  ViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/14/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.

import UIKit


class InternDutiesController: UIViewController, UITextViewDelegate {
    
    
    @IBOutlet weak var tv: UITextView!
    
//
//    override func loadView() {
//        webView = WKWebView()
//       webView.navigationDelegate = self
//        view = webView
//    }
//
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationController?.hidesBarsOnSwipe = false
      
        let url = Bundle.main.url(forResource: "intern2", withExtension: "rtf")!
        let opts : [NSAttributedString.DocumentReadingOptionKey : Any] =
            [.documentType : NSAttributedString.DocumentType.rtf]
        let s = try! NSAttributedString(url: url, options: opts, documentAttributes: nil)
        tv.attributedText = s
       
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(),for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        let image: UIImage = UIImage(named: "UNMCicon.png")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
        
    }
    
    
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//
//        let css = "body {background-color: transparent; background-image: url(drywall.jpg); background-size: cover }"
//
//        let js = "var style = document.createElement('style'); style.innerHTML = '\(css)'; document.head.appendChild(style);"
//
//        webView.evaluateJavaScript(js, completionHandler: nil)
//    }
//
    


}


    

