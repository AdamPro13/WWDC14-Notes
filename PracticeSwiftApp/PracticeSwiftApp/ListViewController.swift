//
//  ListViewController.swift
//  PracticeSwiftApp
//
//  Created by Adam Proschek on 6/2/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var sampleProperty: NSString?
    
    var tableView: UITableView
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
    {
        self.sampleProperty = "Hello, World"
        self.tableView = UITableView(frame: CGRectMake(0, 0, 320, 568), style: UITableViewStyle.Plain)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
