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

    var list: [Meeting] = []
    var meetingRoom: MeetingRoom!
    var meetingTable = UITableView(frame: CGRectMake(0, 0, 320, 568))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    override func loadView() {
        meetingTable.dataSource = self
        self.view = meetingTable
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "cell"
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier)
        cell.textLabel?.text = list[indexPath.row].meetingRoom
        cell.detailTextLabel?.text = list[indexPath.row].time
        
        return cell
    }
    
    private func loadData() {
        AVQuery(className: "Meeting").findObjectsInBackgroundWithBlock { (success: [AnyObject]!, error: NSError!) -> Void in
            if error != nil {
                return
            }
            self.list = success.map({ (object: AnyObject) -> Meeting in
                return Meeting(object: object as! AVObject)
            }).filter({$0.meetingRoom == self.meetingRoom.roomName as String})
        
            self.meetingTable.reloadData()
        }
    }
}