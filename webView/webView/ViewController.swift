//
//  ViewController.swift
//  webView
//
//  Created by Vijay Parmar on 29/09/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate{
    
    @IBOutlet weak var WebView: UIView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    var web : WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // web.frame = WebView.frame
        web = WKWebView(frame: self.WebView.frame)
        web.navigationDelegate = self
        let myurlstring = "https://mkbhavuni.edu.in/mkbhavuniweb/"
        let url = URL(string: myurlstring)
        let request = URLRequest(url: url!)
        web.load(request)
        
        self.WebView.addSubview(web)
        self.activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.activity.startAnimating()
        print("Strat to load")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.activity.stopAnimating()
        self.activity.isHidden = true
        print("finish to load")
    }
    
}

