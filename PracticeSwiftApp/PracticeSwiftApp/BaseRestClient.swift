//
//  BaseRestClient.swift
//  PracticeSwiftApp
//
//  Created by Adam Proschek on 6/2/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

import Foundation

protocol RestClientDelegate
{
    
}

class BaseRestClient
{
    var requestUrl: NSURL = NSURL(string: "www.google.com")
    
    func sendRequest()
    {
        let urlRequest: NSURLRequest = NSURLRequest(URL: self.requestUrl)
    }
}