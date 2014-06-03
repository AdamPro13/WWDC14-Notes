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
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.sampleProperty = "Hello, World"
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
