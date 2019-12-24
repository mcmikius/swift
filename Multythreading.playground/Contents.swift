import UIKit

var str = "Hello, playground"
print("\(str)")

//DispatchQueue.global(qos: .userInitiated).sync {
//    for i in 0...100 {
//        print("userInitiated \(i)")
//    }
//}
//
//DispatchQueue.global(qos: .background).sync {
//    for i in 0...100 {
//        print("background \(i)")
//    }
//}

let myQueue = DispatchQueue(label: "mySerialQueue")

myQueue.async {
    print("AAAAA")
    myQueue.async {
        print("CCCCC")
    }
    print("BBBB")
}

print("end of file")
