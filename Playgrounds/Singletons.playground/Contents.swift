import UIKit

// Without singleton
class Car1 {
    var colour = "Red"
}

let myCar = Car1()
myCar.colour = "Blue"

let yourCar = Car1()
print(yourCar.colour)

// With Singleton

class Car {
    var colour = "Red"
    
    static let singletonCar = Car()
}

let myCar2 = Car.singletonCar
myCar.colour = "Blue"

let yourCar2 = Car.singletonCar
print(yourCar.colour)

