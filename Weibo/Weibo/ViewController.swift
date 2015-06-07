//
//  ViewController.swift
//  Weibo
//
//  Created by leiyu on 5/31/15.
//  Copyright (c) 2015 leiyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var helloLabel : UILabel!
    var swipeLabel : UILabel!
    var swipeGesture = UISwipeGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showHelloMessage()
        addGesture()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showHelloMessage() {
        helloLabel = UILabel(frame: CGRectMake(self.view.frame.size.width/4,self.view.frame.size.height/4 ,self.view.frame.size.width*3/4,100))
        swipeLabel = UILabel(frame: CGRectMake(self.view.frame.size.width/4,self.view.frame.size.height/3 ,self.view.frame.size.width*3/4,100))
        helloLabel.text = "Welcome to myWeibo!"
        swipeLabel.text = "Swipe to start..."
        self.view.addSubview(helloLabel)
        self.view.addSubview(swipeLabel)
    }
    
    func addGesture() {
        swipeGesture.addTarget(self, action: "navigateToNextView")
        swipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeGesture)
    }
    
    func navigateToNextView() {
        var weiboView = WeiboViewController()
        self.navigationController?.pushViewController(weiboView, animated: true)
    }
    

}

