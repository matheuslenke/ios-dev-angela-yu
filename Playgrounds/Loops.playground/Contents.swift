import UIKit

func fibonacci(n: Int) {
    var fibArray = [Int]()
    fibArray.append(0)
    if n == 0 {
       print(fibArray)
       return
    }
    fibArray.append(1)
    if n == 1 {
        print(fibArray)
        return
    }
    for number in 2..<n {
        let nextNumber = fibArray[number - 1] + fibArray[number - 2]
        fibArray.insert(nextNumber, at: number)
    }
    print(fibArray)

}

fibonacci(n: 5)
print("Foi")

