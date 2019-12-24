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
for i in 0...100 {
    myQueue.async {
        print("A-\(i)")
    }
    myQueue.async {
        print("B-\(i)")
    }
}

print("end of file")
