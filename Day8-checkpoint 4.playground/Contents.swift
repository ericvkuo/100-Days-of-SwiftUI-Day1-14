import Cocoa

enum FindSquareRootError: Error {
    case outOfBound, noRoot
}
func findSquareRoot (_ number: Int) throws -> Int {
    var answer = 0
    
    if number > 10_000 || number < 1 {
        throw FindSquareRootError.outOfBound
    }
    
    for i in 1...100{
        var j = i
        j = j * j
        if number == j {
            answer = i
            return Int(answer)
            
        }
    }
    throw FindSquareRootError.noRoot
}

let test = 143

do {
    let result = try findSquareRoot(test)
    print("The square root of \(test) is \(result).")
} catch FindSquareRootError.noRoot {
    print("There is no Integer square root for \(test).")
} catch FindSquareRootError.outOfBound {
    print("\(test) is out of bound.")
}
