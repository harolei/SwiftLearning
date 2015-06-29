//
//  BookMeetingViewController.swift
//  BookMyMeeting
//
//  Created by leiyu on 6/29/15.
//  Copyright (c) 2015 leiyu. All rights reserved.
//

import Foundation
import UIKit
import AVOSCloud

class BookMeetingViewController:UIViewController, UITableViewDataSource {

    var list: [String] = []
    var meetingRoom: MeetingRoom!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var testObject:AVObject = AVObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.save()
    }
    
    override func loadView() {
        var meetingTable = UITableView(frame: CGRectMake(0, 0, 320, 568))
        meetingTable.dataSource = self
        self.view = meetingTable
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "cell"
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier)
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
}