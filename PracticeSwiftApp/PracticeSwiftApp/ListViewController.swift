//
//  ListViewController.swift
//  PracticeSwiftApp
//
//  Created by Adam Proschek on 6/2/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

import UIKit

class ListViewController: UIViewController
{
    var sampleProperty: NSString?
    
    var tableView: UITableView?
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let success() -> void {
            
        }
        
        let restClient = RestClient()
        restClient.requestCityForString("detroit")
        {
            // This is the success closure
            var i = 0
        }
    }
    
}
