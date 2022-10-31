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

// Switch statement

let vegetable = "blue pepper"

switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}

// For loop

let userScores = [
    "Boris": [75, 43, 103, 87, 12],
    "John": [75, 43, 103, 87, 12],
    "Jane": [75, 43, 103, 87, 12]
]

var totalScore2 = 0

for (name, scores) in userScores {
    print("Names: \(name)")
    print("Scores: \(scores)")
    for score in scores {
        if (score > totalScore2) {
            totalScore2 = score
        }
    }
}

print(totalScore2)

// While loop

var counter = 0

while counter < 10 {
    print(counter)
    counter += 1
}

print(counter)

// Repeat while

var counter2 = 0

repeat {
    print(counter2)
    counter2 += 1
} while counter2 < 0

// index in a loop
print("---- Loop ----")

var total = 0

for i in 0..<4 {
    total += i
}

print("Total: \(total)")

// Functions
func showMessage(type: String, name: String) -> String {
    return "\(type): Hello, \(name)"
}

var res = showMessage(type: "Success", name: "Boris")

print(res)

func showMessage2(_ type: String, nickName name: String) -> String {
    return "\(type): Hello, \(name)"
}

res = showMessage2("Error", nickName: "Boris")

print(res)