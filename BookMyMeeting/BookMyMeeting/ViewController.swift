//
//  ViewController.swift
//  BookMyMeeting
//
//  Created by leiyu on 6/10/15.
//  Copyright (c) 2015 leiyu. All rights reserved.
//

import UIKit
import AVOSCloud


class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var scrollView: UIScrollView!

    @IBOutlet weak var officeImageView: UIImageView!
    
    @IBOutlet weak var qingYangPalaceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var testObject:AVObject = AVObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.save()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

