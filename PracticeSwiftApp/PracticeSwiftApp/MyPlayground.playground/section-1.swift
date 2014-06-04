import Cocoa

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

var cheers = "Cheers! "
var 🍻 = "Beer"

println()
