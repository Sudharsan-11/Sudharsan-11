//
//  ViewController.swift
//  webView
//
//  Created by Apple on 18/10/22.
//

import UIKit
import WebKit
  
  
class ViewController: UIViewController {
  
  
    var webView : WKWebView!
    let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicator.startAnimating()
        webView = WKWebView()
        webView.navigationDelegate = self
        self.view = webView
        let loadURL = "https://www.google.co"
        let url = URL(string: loadURL)!
        webView.load(URLRequest(url: url))
        activityIndicator.stopAnimating()
        webView.allowsBackForwardNavigationGestures = true
    }
}
  
  
extension ViewController : WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
