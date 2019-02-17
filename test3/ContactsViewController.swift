//
//  ContactsViewController.swift
//  test3
//
//  Created by Adam Robinson on 2/16/19.
//  Copyright © 2019 Adam Robinson. All rights reserved.
//

import UIKit
import WebKit

class ContactsViewController: UIViewController, UIWebViewDelegate {

    
    @IBOutlet weak var textWebView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let localHtmlFile = Bundle.main.url(forResource: "contactsText", withExtension: "html");
        
        //creating request
        let request = NSURLRequest(url: localHtmlFile!);
        
        //loading request
        textWebView.load(request as URLRequest);
        
    }
    

    

}
