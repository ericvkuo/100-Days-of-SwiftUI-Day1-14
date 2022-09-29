import UIKit

enum City {
    case NewYork, Taipei, London, Toronto, LosAngeles, Menphis, Chicago, Sydney
}
let someCity = City.NewYork
switch someCity {
    
case .NewYork:
    print("Welcome to \(someCity)!")
case .Taipei:
    print("Welcome to \(someCity)!")
case .London:
    print("Welcome to \(someCity)!")
case .Toronto:
    print("Welcome to \(someCity)!")
case .LosAngeles:
    print("Welcome to \(someCity)!")
case .Menphis:
    print("Welcome to \(someCity)!")
case .Chicago:
    print("Welcome to \(someCity)!")
case .Sydney:
    print("Welcome to \(someCity)!")
}

let age = 18
let canVote = age >= 18 ? "Yes" : "NO"

var roll = 0

while roll != 20{
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll).")
}

print("Critical Hit!")

