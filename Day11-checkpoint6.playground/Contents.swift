import Cocoa

struct Car {
    private var gear = 1
    //Use private for “don’t let anything outside the struct use this.”
    
    static let model = "Toyota RAV4"
    static let seats = 5
    //static means both the model property and seats property belong to the Car struct itself, rather than to individual instances of the struct.
    
    mutating func changeGear (_ change: String) {
        if change == "up" && gear <= 9{
            gear += 1
            print("The gear is up to \(gear).")
        }
        else if change == "down" && gear >= 2{
            gear -= 1
            print("The gear is down to \(gear).")
        }
        else {
            print("Cannot change gear.")
        }
    }
}
print("This is a \(Car.model) and it has \(Car.seats) seats.")

print(Car.model)

var myCar = Car()

