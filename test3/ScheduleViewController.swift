//
//  ScheduleViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/22/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://docs.google.com/spreadsheets/d/e/2PACX-1vTZLdqUXe4zDET-WaQTazwduPRXDZepx1y5CVwA3H6J-2S3NVCsWknNoiJWVq02yEJzaET4MeCfqnMP/pubhtml?gid=0&single=true")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
