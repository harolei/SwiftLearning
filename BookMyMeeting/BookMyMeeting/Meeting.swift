//
//  Meeting.swift
//  BookMyMeeting
//
//  Created by leiyu on 7/2/15.
//  Copyright (c) 2015 leiyu. All rights reserved.
//

import Foundation
import AVOSCloud

class Meeting: NSObject {
    var meetingRoom: String?
    var time: String?
    
    init(object: AVObject) {
        self.meetingRoom = object.objectForKey("meetingRoom") as? String
        self.time = object.objectForKey("time") as? String
        super.init()
    }
}