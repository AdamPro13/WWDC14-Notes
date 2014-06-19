//
//  RestClient.swift
//  PracticeSwiftApp
//
//  Created by Adam Proschek on 6/2/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

import Foundation

let apiKeyParameter = "&key=AIzaSyAzxj_oRQqOcYGhNIgOAReZk1lj32gvlzw"
let baseUrlString = "https://maps.googleapis.com/maps/api/place/autocomplete/json?input="
let languageParameter = "&language=en"
let sensorParameter = "&sensor=true"

protocol RestClientDelegate
{
    
}

class RestClient : NSObject, NSURLConnectionDataDelegate
{
    func requestCityForString(searchString: NSString, success: ())
    {
        let urlString = baseUrlString + searchString + languageParameter + sensorParameter + apiKeyParameter
        println(urlString)
        let urlRequest: NSURLRequest = NSURLRequest(URL: NSURL(string: urlString))
        
        let operation = AFHTTPRequestOperation(request: urlRequest)
        operation.responseSerializer = AFJSONResponseSerializer()
        
        // If you know of a cleaner way of writing this, please let me know. This looks gross.
        operation.setCompletionBlockWithSuccess(
            {(operation: AFHTTPRequestOperation!, responseObject: AnyObject!) in
                if let response = responseObject as? Dictionary<String, AnyObject>
                {
                    let predictions : AnyObject? = response["predictions"]
                    
                    var autoCompleteResponses:Array<AutoCompleteResponse> = []
                    for prediction in predictions as Array<Dictionary<String, AnyObject>>
                    {
                        let autoCompleteObject = AutoCompleteResponse(dict: prediction)
                        autoCompleteResponses.append(autoCompleteObject)
                    }
                }
            },
            failure: {(operation: AFHTTPRequestOperation!, error: NSError!) in
                
        })
        
        operation.start()
    }
    
    
}