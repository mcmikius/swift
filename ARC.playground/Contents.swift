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
    lazy var closure: (Int) -> Void = { [weak self] (number1) in
        self?.number += number1
//        if let mySelf = self {
//            mySelf.number += number1
//            print("number += number1")
//        } else {
//            print("object already free")
//        }
        
    }
    deinit {
        print("MyClass deinit")
    }
}

var closure: (Int) -> Void = {
    $0
}

if true {
    var x = MyClass()
    closure = x.closure
    x.closure(5)
}

closure(5)
