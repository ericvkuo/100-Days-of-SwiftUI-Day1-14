import Cocoa

class Animal {
    var legs: Int
    
    init (legs: Int){
        self.legs = legs
    }
}

class Dog: Animal {
    func speak(){
        print("Woof! Woof! Woof!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool){
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Corgi: Dog {
    override func speak() {
        print("woof! by Corgi")
    }
    
}
class Poodle: Dog {
    override func speak() {
        print("woof! woof! by Poodle")
    }
}

class Persian: Cat {
    
}
class Lion: Cat {
    
}
let vermont = Corgi(legs: 4)
vermont.speak()

let simon = Persian(legs: 4, isTame: true)
print(vermont.legs)
print(simon.legs)
