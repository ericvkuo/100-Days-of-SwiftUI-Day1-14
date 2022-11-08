import Cocoa

protocol Building {
    var kind: String { get }
    var room: Int { get }
    var cost: Int { get }
    var agentName: String { get }
    func printSummary()
}

extension Building {
    func printSummary() {
        print("This is a \(room) room \(kind) and cost $\(cost). Contact \(agentName) if you are interested in purchasing this property.")
    }
}
struct House: Building {
    let kind = "house"
    let room = 4
    let cost = 500_000
    let agentName = "William Black"
}
struct Office: Building {
    let kind = "office"
    let room = 12
    let cost = 2_000_000
    let agentName = "Leo Smith"
}
let house = House()
house.printSummary()
