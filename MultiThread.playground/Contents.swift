import UIKit

//let queue = DispatchQueue(label: "queue")
//queue.async {
//    for i in 0..<15 {
//        print("number_B: ", i)
//    }
//}
//for i in 0..<15 {
//    print("number_C: ", i)
//}
//queue.sync {
//    for i in 0..<15 {
//        print("number_A: ", i)
//    }
//}
//
//let queueBackGround = DispatchQueue.global(qos: .background)
//let queueDefault = DispatchQueue.global(qos: .default)
//let queueUserInteractive = DispatchQueue.global(qos: .userInteractive)
//
//queueBackGround.async {
//    for i in 0..<15 {
//        print("number Back Ground: ", i)
//    }
//}
//queueDefault.async {
//    for i in 0..<15 {
//        print("number Default: ", i)
//    }
//}
//queueUserInteractive.async {
//    for i in 0..<15 {
//        print("number User Interactive: ", i)
//    }
//}

let time = DispatchTime.init(uptimeNanoseconds: 9999999999999999999)
let queue = DispatchQueue.global(qos: .default)
queue.asyncAfter(deadline: time) {
    for i in 0..<10 {
        print("Delay \(i)")
    }
}
queue.async {
    for i in 0..<10 {
        print("Not Delay \(i)")
    }
}
