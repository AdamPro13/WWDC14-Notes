import UIKit
//import XCPlayground

func greet(name: String, special: String) -> String {
    return "Hello \(name), today' special is \(special)."
}
greet("Bob", "bologna")

func sumOf(numbers: Int...) -> Int
{
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    
    return sum
}

sumOf()
sumOf(42, 597, 12)

func average(numbers: Int...) -> Int
{
    var sum = 0
    
    for number in numbers
    {
        sum += number
    }
    
    if numbers.count > 0
    {
        return sum/numbers.count
    }
    else
    {
        return 0;
    }
}

average()
average(2,3,4,7)

var numbers = [20, 19, 7, 12]

numbers.map({
    (number : Int) -> Int in
    let result = 3 * number
    
    if (number % 2 == 1)
    {
        return 0;
    }
    else
    {
     return result
    }
})

numbers.map({number in 3 * number})
println(numbers)

class Shape
{
    var numberOfSides = 0
    
    let title = "Shape"
    
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides."
    }
    
    func setTitle(name:String)
    {
        
    }
}

var shape = Shape()
shape.numberOfSides = 3

for i in 0 .. 10
{
    i * i
}

let color = UIColor.blueColor()
let attributedString = NSAttributedString(string: "my plaground", attributes: [NSForegroundColorAttributeName:color, NSFontAttributeName : UIFont.systemFontOfSize(42.0)])

class DataSource: NSObject, UITableViewDataSource
{
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return 1;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        cell.textLabel.text = "Text"
        
        if let detailTextLabel = cell.detailTextLabel
        {
            detailTextLabel.text = "Detail Text"
        }
        
        return cell
    }
}

let ds = DataSource()
let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))

let anotherPoint = (2, 0)

var viewController = UIViewController(nibName: nil, bundle: nil)
var navigationController = UINavigationController(rootViewController: viewController)
navigationController.navigationBar
navigationController.navigationBar.backgroundColor = UIColor.purpleColor()
viewController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
viewController.view.backgroundColor = UIColor.lightGrayColor()
let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: viewController.view.frame.width, height:44.0))
navBar.backgroundColor = UIColor.purpleColor()


viewController.view.addSubview(navBar)


viewController.view
viewController
navigationController

