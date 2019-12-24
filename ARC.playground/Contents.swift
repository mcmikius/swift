import UIKit

class Human {
    
    var pet: Animal?
    
    deinit {
        print("Human deinit")
    }
}

class Animal {
    
    deinit {
        print("Animal deinit")
    }
}

if true {
    var human = Human()
    var animal = Animal()
    human.pet = animal
}
