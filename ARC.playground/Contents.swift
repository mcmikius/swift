import UIKit

class Human {
    
    var pet: Animal?
    
    deinit {
        print("Human deinit")
    }
}

class Animal {
    
    var owner: Human?
    deinit {
        print("Animal deinit")
    }
}

if true {
    var human = Human()
    var animal = Animal()
    human.pet = animal
    animal.owner = human
}
