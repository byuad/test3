//
//  ViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/14/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.

import Foundation
import WebKit

class InternDutiesController: UIViewController, UIWebViewDelegate, WKNavigationDelegate {
    
    
      var webView: WKWebView!
    

   
    override func loadView() {
        webView = WKWebView()
       webView.navigationDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        
        
        navigationController?.hidesBarsOnSwipe = false
      
        
        
        // Do any additional setup after loading the view, typically from a nib.

        let localHtmlFile = Bundle.main.url(forResource: "intern2", withExtension: "html");

        //creating request
        let request = NSURLRequest(url: localHtmlFile!);

        //loading request
        webView.load(request as URLRequest);
        
       
       
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
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        let css = "body {background-color: transparent; background-image: url(drywall.jpg); background-size: cover }"
        
        let js = "var style = document.createElement('style'); style.innerHTML = '\(css)'; document.head.appendChild(style);"
        
        webView.evaluateJavaScript(js, completionHandler: nil)
    }
    
    


}


    

