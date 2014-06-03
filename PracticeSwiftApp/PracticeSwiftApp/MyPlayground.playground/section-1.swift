// Playground - noun: a place where people can play

import Cocoa
import Foundation

//class ResponseHandler : NSURLConnectionDelegate
//{
//    
//}

var str = "Hello, playground"

var requestUrl: NSURL = NSURL(string: "www.google.com")

let urlRequest: NSURLRequest = NSURLRequest(URL: requestUrl)

//let urlConnection: NSURLConnection = NSURLConnection(request: urlRequest, delegate: self)

let possibleNumber = "123"

let convertedNumber = possibleNumber.toInt()
let convertedNumber2 = 123

if convertedNumber
{
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
}
else
{
    println("\(possibleNumber) could not be converted to an integer")
}

if convertedNumber2
{
    println("\(possibleNumber) has an integer value of \(convertedNumber2!)")
}
else
{
    println("\(possibleNumber) could not be converted to an integer")
}