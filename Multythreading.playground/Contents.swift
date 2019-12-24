import UIKit

var str = "Hello, playground"
print("\(str)")

DispatchQueue.global(qos: .userInitiated).async {
    for i in 0...100 {
        print("userInitiated \(i)")
    }
}

DispatchQueue.global(qos: .background).async {
    for i in 0...100 {
        print("background \(i)")
    }
}

print("end of file")
