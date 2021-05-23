//
//  main.swift
//  classesDemo
//
//  Created by Matheus Lenke on 21/05/21.
//

import Foundation

let skeleton = Enemy(health: 100, attackStrength: 10)
let skeleton2 = skeleton

skeleton.takeDamage(amount: 10)
print(skeleton.health)
skeleton.move()
skeleton.attack()

print(skeleton2.health)
//
//let dragon = Dragon(health: 300, attackStrength: 50)
//print(dragon.health)
//Dragon.wingSpan = 5
//dragon.move()
//dragon.attack()
