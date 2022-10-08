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
    
    mutating func takeVacation(days: Int) {
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
archer.takeVacation(days: 5)

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
var rachel = EmployeeThree(name: "Rache Sterlings", vacationAllocated: 14, vacationTaken: 0)
rachel.vacationTaken += 4
print(rachel.vacationAllocated)

rachel.vacationRemaning = 1
print(rachel.vacationAllocated)
