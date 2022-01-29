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
    
    // Bool to manage state of hamburger menu
    var isToggled = false
    
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
        webView.evaluateJavaScript("document.getElementsByClassName('navbar-toggler svg-svg-20-hamburger svg-image d-lg-none')[0].getAttribute('aria-expanded')", completionHandler: { (html: Any?, error: Error?) in
            self.isToggled = (html as! String).toBool()
            self.handleToggle()
        })
    }
    
    func handleToggle() {
        
        // Opening or clossing the menu based on isToggled
        if isToggled {
            webView.evaluateJavaScript("document.getElementsByClassName('close-button')[0].click()", completionHandler: nil)
        } else {
            webView.evaluateJavaScript("document.getElementsByClassName('navbar-toggler svg-svg-20-hamburger svg-image d-lg-none')[0].click()", completionHandler: nil)
        }
    }
}
