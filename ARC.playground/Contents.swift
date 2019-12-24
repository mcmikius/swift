import UIKit

class Human {
    
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
}
