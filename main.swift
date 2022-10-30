// Variables
var myVariable = 42
myVariable = 50

print(myVariable)

// Constants
let myConstant = 42

print(myConstant)

// Type implicit
let implicitInteger = 70
let implicitDouble = 70.0

// Type explicit
let explicitDouble: Double = 70
let explicitFloat: Float = 4

print(type(of: implicitInteger))
print(type(of: implicitDouble))
print(type(of: explicitDouble))
print(type(of: explicitFloat))

// Type conversion
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

print(widthLabel)

// Type conversion with interpolation
let oranges = 10
let pineapples = 3

let fruitSummary = "I have \(oranges) oranges and \(pineapples) pineapples. In total I have \(oranges + pineapples) fruits."

print(fruitSummary)

// Double quotes

let quotation = """
Hello, my name is Boris and I have \(oranges + pineapples) pieces of fruit.
But I just have \(pineapples) pineapples.
I need \(oranges - pineapples) more it.
"""

print(quotation)

// Arrays

var games = [
    "Minecraft",
    "Fortnite",
    "Call of Duty"
]

games[0] = "Minecraft: Story Mode"

print(games)

var people = [
    "Boris": "Developer",
    "John": "Designer",
    "Jane": "Tester"
]

people["Boris"] = "Developer and Designer"

print(people)

// Append

games.append("GTA V")

print(games)

// Empty array

var emptyArray : [String] = []
var emptyArray2: [String: Float] = [:]

print(emptyArray)
print(emptyArray2)

// Array inffered

// var emptyArray3 = []  Error
// var emptyArray4 = [:] Error

// Loops

let gameScore = [75, 43, 103, 87, 12]

var totalScore = 0


for score in gameScore {
    if score > 50 { // Pharenteses are optional
        totalScore += 3
    } else {
        totalScore += 1
    }
}

print(totalScore)

// If statement

var optionalString: String? = "World"
print(optionalString == nil)

var optionalNoun : String? = nil //"You"

var greeting = "Hello, me"

if let noun = optionalNoun {
    greeting = "Hello, \(noun)"
}

print(greeting)

// Missing value

let nickName: String? = nil
let fullName: String = "Boris"

let informalGreeting = "Hi \(nickName ?? fullName)"

print(informalGreeting)

// If statement

if let nickName {
    print("Hello, \(nickName)")
}