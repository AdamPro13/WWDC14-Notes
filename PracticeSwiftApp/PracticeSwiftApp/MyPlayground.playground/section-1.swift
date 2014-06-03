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

if convertedNumber
{
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
}
else
{
    println("\(possibleNumber) could not be converted to an integer")
}

let possibleString: String? = "An optional string"
println(possibleString)

let assumedString: String! = "An implicitly unwrapped optional string."
println(assumedString)

let anotherString: String = "Another string"
println(anotherString)

let apples = 3
let oranges = 5
let name = "Adam"
let halfFruit: Float = 1.5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
let summary = "\(name) has \(halfFruit) pieces of fruit"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
println(shoppingList)
var shoppingListCopy = shoppingList.copy()
println(shoppingListCopy)

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores
{
    if (score > 50)
    {
        teamScore += 3
    }
    else
    {
        teamScore += 1
    }
}

teamScore

var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

if let newName = optionalName
{
    greeting = "Hello, \(newName)"
}

// NOTE: If you switch newName to nil, control statement will
// evaluate to false

let vegetable = "red pepper"

switch vegetable
{
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

