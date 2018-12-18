//
//  ViewController.swift
//  webView1
//
//  Created by student on 2018/12/12.
//  Copyright © 2018年 李琳. All rights reserved.
//

import UIKit
import WebKit //引入包
class ViewController: UIViewController {

    
    @IBOutlet var urlTF: UITextField!
    
    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //编写代码
        if let url = URL(string: "https://www.baidu.com"){
            webView.load(URLRequest(url:url))
        }
    }

    
    
    
    
    
    
    @IBAction func go(_ sender: Any) {
       //此处需要在左侧“Info.plist”中修改。改变其安全性，降低其安全性使得在textfield框中输入的链接可以被执行。
        if let url = URL(string: urlTF.text!){
            webView.load(URLRequest(url: url))
        }
    }
    
    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func forward(_ sender: Any) {
        webView.goForward()
    }
    
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
    
}

