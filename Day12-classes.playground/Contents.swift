import Cocoa

//class are reference types. It means that if you assign an instance of the class to a variable, it will hold only the reference to the instance and not the copy.
class SomeClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var firstClass = SomeClass(name: "Bob")
var secondClass = firstClass
// firstClass and secondClass now reference the same instance
secondClass.name = "Sue"

print(firstClass.name) // "Sue"
print(secondClass.name) // "Sue"




//struct are value types. It means that if you copy the instance of the structure to another variable, it's just copied to the variable.

struct SomeStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var firstStruct = SomeStruct(name: "Bob")
var secondStruct = firstStruct
// firstStruct and secondStruct are two structs with the same value
secondStruct.name = "Sue"

print(firstStruct.name) // "Bob"
print(secondStruct.name) // "Sue"






struct Rect{
    var length : Int
    var breadth : Int
    
    init(_ length: Int, _ breadth: Int) {
        self.length =  length + 10
        self.breadth = breadth + 10
    }
}
var r = Rect(10, 10)
print(r.breadth)
print(r.length)

//second practice

class Employee { // parent class
    var hours: Int {
        didSet {
            print("Welcome to the company!")
        }
    }
    init(hours: Int) {
        self.hours = hours
        print("Welcome to the company!")
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee { //subclass inherits from Employee parent class
    func work (){
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary() {
        print("I'm a develper who will somtimes work \(hours) hours a day.")
    }
}

final class Manager: Employee { //subclass inherits from Employee parent class
    // final keyword means you couldn't make an subclass from this class
    let age: Int
    
    init(hours:Int, age: Int){
        self.age = age
        super.init(hours: hours)
    }
    func work (){
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10, age: 50)
robert.work()
joseph.work()
robert.printSummary()

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")
