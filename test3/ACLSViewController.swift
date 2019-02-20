//
//  ACLSViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/20/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit
import WebKit

class ACLSViewController: UIViewController, UIWebViewDelegate, WKNavigationDelegate  {

    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let localHtmlFile = Bundle.main.url(forResource: "Cardiac Arrest Circular Algorithm One", withExtension: "pdf");
        
        //creating request
        let request = NSURLRequest(url: localHtmlFile!);
        
        //loading request
        webView.load(request as URLRequest);

       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
