import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var oddNumbers = luckyNumbers.filter{ $0 % 2 == 1 }.sorted().map {(Int) -> String in
    print("\(Int) is a lucky number")
    return "\(Int) is a lucky number"
    
}
let oddNumbers2 = luckyNumbers.filter{ !$0.isMultiple(of: 2) }
print(oddNumbers)
print(oddNumbers2)
