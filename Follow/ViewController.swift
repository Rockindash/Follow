//
//  ViewController.swift
//  Follow
//
//  Created by Amol Kumar on 2022-01-29.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.thebay.com/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    @IBAction func toggleMenu(_ sender: Any) {
    }
    
}

