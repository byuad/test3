//
//  MapViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/22/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit
 import WebKit

class MapViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
            
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string: "https://www.unmc.edu/map/")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }}
