//
//  ViewController.swift
//  CrazyCash
//
//  Created by Никита Степанов on 11/7/20.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.allowsInlineMediaPlayback = true
        webConfiguration.mediaTypesRequiringUserActionForPlayback = []
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://c1b-wylk.com/register/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if #available(iOS 13, *)
        {
            let statusBar = UIView(frame: (UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame)!)
            statusBar.backgroundColor = #colorLiteral(red: 0.1226496473, green: 0.1204237118, blue: 0.1641577482, alpha: 1)
            UIApplication.shared.keyWindow?.addSubview(statusBar)
        }
    }

}
