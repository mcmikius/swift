import UIKit

var str = "Hello, playground"
print("\(str)")

DispatchQueue.global(qos: .userInitiated).async {
    for i in 0...20 {
        print("GlonalQueue \(i)")
    }
}

print("end of file")
