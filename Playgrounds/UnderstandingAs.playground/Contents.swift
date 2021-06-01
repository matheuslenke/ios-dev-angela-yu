import UIKit

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let lenke = Human(n: "Lenke")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")
let num: NSNumber = 12
let word: NSString = "abc"

// This creates an array with elements of class Animal
let neighbours = [lenke, jack, nemo]

let neighbour1 = neighbours[0] // It has type animal, even if lenke is of type Human

if neighbour1 is Human {
    print("First neighbour is a Human")
}

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            let fish = animal as! Fish
            print(animal.name)
            fish.breatheUnderWater()
            let animalFish = fish as Animal // Upcasting again to Animal
        }
    }
}

findNemo(from: neighbours)

if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
}

// Any, AnyObject, NSObject
// Any -> Any object
// AnyObject -> Any object but only derived from classes
// NSObject -> Foundation objects

let neighbours2: [Any] = [lenke, jack, nemo]
let nsobjects: [NSObject] = [num, word]
