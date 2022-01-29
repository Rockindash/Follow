//
//  ViewController.swift
//  Follow
//
//  Created by Amol Kumar on 2022-01-29.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    // Bool to manage state of hamburger menu
    var isToggled = false
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Loading the The Bay website on to the WebView
        let url = URL(string: "https://www.thebay.com/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    @IBAction func toggleMenu(_ sender: Any) {
        
        // Checking the state of hamburger menu
        // By fetching the value of 'aria-expanded'
        webView.evaluateJavaScript(checkToggle, completionHandler: { (html: Any?, error: Error?) in
            self.isToggled = (html as! String).toBool()
            self.handleToggle()
        })
    }
    
    func handleToggle() {
        
        // Opening or clossing the menu based on isToggled
        if isToggled {
            webView.evaluateJavaScript(closeMenu, completionHandler: nil)
        } else {
            webView.evaluateJavaScript(openMenu, completionHandler: nil)
        }
    }
}
