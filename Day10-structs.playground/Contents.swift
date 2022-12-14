import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
print(red.title)
print(red.artist)
red.printSummary()

struct Employee {
    let name: String
    var vacationRemaing: Int


    mutating func takeVacation(outside days: Int) {
        if vacationRemaing > days {
            vacationRemaing -= days
            print("I'm going on vacation!")
            print("Days remaing: \(vacationRemaing)")
        } else {
            print("Oops! There aren't enough days remaing.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaing: 14)
archer.takeVacation(outside:5)

print(archer.vacationRemaing)

//practice: How to compute property values dynamically

struct EmployeeTwo {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaing: Int {
        vacationAllocated - vacationTaken
    }
}
var edward = EmployeeTwo(name: "James Edward", vacationAllocated: 14, vacationTaken: 0)
edward.vacationTaken += 4
print (edward.vacationRemaing)

struct EmployeeThree {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaning: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
var rachel = EmployeeThree(name: "Rachel Sterlings", vacationAllocated: 14, vacationTaken: 0)
rachel.vacationTaken += 4
print("rachel vacation \(rachel.vacationRemaning) ")


rachel.vacationRemaning = 1
print(rachel.vacationAllocated)
print(rachel.vacationRemaning)

struct Game {
    
    var score = 0 {
        didSet {
            print("The score is now \(score)!")
        }
    }
}

var game = Game()
game.score += 10

game.score -= 3

struct App {
    var contacts = [String]() { // [String]() : Array with String
        willSet {
            print("Current value is \(contacts).")
            print("New value will be \(newValue).")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue).")
        }
        
    }
}

var app = App()
app.contacts.append("Adrian K")
app.contacts.append("Laura J")
