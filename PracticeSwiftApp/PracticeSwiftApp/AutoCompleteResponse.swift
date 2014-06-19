//
//  AutoCompleteResponse.swift
//  PracticeSwiftApp
//
//  Created by Adam Proschek on 6/10/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

import Foundation

class AutoCompleteResponse
{
    let terms:Array<(String, String)>?
    
    let id:String?
    
    let reference:String?
    
    let types:String?
    
    let description:String?
    
    let matchedSubstrings:Array<String>?
    
    init(dict: Dictionary<String, AnyObject>)
    {
        for (key, value : AnyObject) in dict
        {
            switch key {
            case "terms":
                terms = value as? Array<(String, String)>
            case "id":
                id = value as? String
            case "reference":
                println(value)
                reference = value as? String
            case "types":
                types = value as? String
            case "description":
                description = value as? String
            case "matched_substrings":
                matchedSubstrings = value as? Array<String>
            default:
                println("New key returned with autocomplete")
            }
        }
    }
}