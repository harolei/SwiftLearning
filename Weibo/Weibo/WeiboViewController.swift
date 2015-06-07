//
//  WeiboViewController.swift
//  Weibo
//
//  Created by leiyu on 6/4/15.
//  Copyright (c) 2015 leiyu. All rights reserved.
//

import UIKit

class WeiboViewController:UIViewController, UITableViewDataSource {
    var list:[String] = []
    
    override func loadView() {
        var swiftTable = UITableView(frame: CGRectMake(0, 0, 320, 568))
        swiftTable.dataSource = self
        self.view = swiftTable
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 1...10 {
            list.append("Weibo Data No.\(index)" )
        }
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
