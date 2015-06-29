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
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var qingYangGong: UIButton!
    
    @IBAction
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.bounds.size
        scrollView.delegate = self
        
        qingYangGong.addTarget(self, action: Selector("navigateToBookView:"), forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func navigateToBookView(button:UIButton) {
        var meetingRoom = MeetingRoom(roomName: button.titleLabel!.text!)
        println(button.titleLabel!.text!)
        
        var bookMeetingViewController = BookMeetingViewController()
        bookMeetingViewController.meetingRoom = meetingRoom
        self.navigationController?.pushViewController(bookMeetingViewController, animated: true)
    }

}

