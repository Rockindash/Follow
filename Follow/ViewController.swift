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
    var isToggled = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.thebay.com/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    @IBAction func toggleMenu(_ sender: Any) {
        webView.evaluateJavaScript("document.getElementsByClassName('navbar-toggler svg-svg-20-hamburger svg-image d-lg-none')[0].getAttribute('aria-expanded')", completionHandler: { (html: Any?, error: Error?) in
            self.isToggled = (html as! String).toBool()
            self.handleToggle()
        })
    }
    
    func handleToggle() {
        if isToggled {
            webView.evaluateJavaScript("document.getElementsByClassName('close-button')[0].click()", completionHandler: nil)
        } else {
            webView.evaluateJavaScript("document.getElementsByClassName('navbar-toggler svg-svg-20-hamburger svg-image d-lg-none')[0].click()", completionHandler: nil)
        }
    }
}

extension String {
    func toBool() -> Bool {
        switch self {
            case "true":
                return true
            default:
                return false
        }
    }
}
