import UIKit

class Human {
    deinit {
        print("Human deinit")
    }
}

if true {
    var x = Human()
}
