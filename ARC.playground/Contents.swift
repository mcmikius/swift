import UIKit

//class Human {
//
//    var pet: Animal?
//
//    deinit {
//        print("Human deinit")
//    }
//}
//
//class Animal {
//
//    weak var owner: Human?
//    deinit {
//        print("Animal deinit")
//    }
//}
//
//if true {
//    var human = Human()
//    var animal = Animal()
//    human.pet = animal
//    animal.owner = human
//}

class MyClass {
    var number = 10
    lazy var closure: (Int) -> Void = { [unowned self] (number1) in
        self.number += number1
    }
    deinit {
        print("MyClass deinit")
    }
}

if true {
    var x = MyClass()
    x.closure(5)
}
