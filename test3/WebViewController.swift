//
//  ViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/14/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.

import Foundation
import WebKit

class WebViewController: UIViewController, UIWebViewDelegate, WKNavigationDelegate {
    
    
      var webView: WKWebView!
    

   
    override func loadView() {
        webView = WKWebView()
       webView.navigationDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(),for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        // Do any additional setup after loading the view, typically from a nib.

        let localHtmlFile = Bundle.main.url(forResource: "intern2", withExtension: "html");

        //creating request
        let request = NSURLRequest(url: localHtmlFile!);

        //loading request
        webView.load(request as URLRequest);
        
       
       
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        let css = "body {background-color: transparent; background-image: url(drywall.jpg); background-size: cover }"
        
        let js = "var style = document.createElement('style'); style.innerHTML = '\(css)'; document.head.appendChild(style);"
        
        webView.evaluateJavaScript(js, completionHandler: nil)
    }
    
    


}


    

