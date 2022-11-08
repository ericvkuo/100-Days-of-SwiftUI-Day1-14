import Cocoa

let guests = ["Mario", "Luigi", "Peach"]

//Array, Set, and Dictionary all conform to a built-in protocol called Collection
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}
