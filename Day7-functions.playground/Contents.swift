import Cocoa

let root = sqrt(169)
print(root)
func rollDice() -> Int {
    Int.random(in: 1...6)
}

print(rollDice())

/*
func areLettersIdentical (_ string1: String, _ string2: String) -> Bool{
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
*/
func areLettersIdentical (_ string1: String, _ string2: String) -> Bool{
    string1.sorted() == string2.sorted()
}
areLettersIdentical("one", "two")
areLettersIdentical("one","neo")

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

pythagoras(a: 4, b: 6)


func getName() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}
let user = getName()
print("Name: \(user.firstName) \(user.lastName)")

