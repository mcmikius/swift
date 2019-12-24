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
        
        guard let strongSelf = self else { return }
        
        strongSelf.number += 10
        
        if let mySelf = self {
            mySelf.number += number1
            print("number += number1")
        } else {
            print("object already free")
        }
        
        self?.number += 10
        print("object already free")
        
    }
    deinit {
        print("MyClass deinit")
    }
}

var ssss = 4

var closure: (Int) -> Void = {
    print($0 + ssss)
}

if true {
    var x = MyClass()
    closure = x.closure
    x.closure(5)
}

closure(5)
