//
//  learnerMode.swift
//  learnerOOP
//
//  Created by Stefandi Glivert on 15/05/19.
//  Copyright © 2019 Stefandi Glivert. All rights reserved.
//

import Foundation
class learnerModel {
    var name: String
    var age:Int
    var gender: String
    var imageProfile: String
    
    init(nameLearner: String, ageLearner: Int, genderLearner: String, imageProfileLearner: String) {
        self.name = nameLearner
        self.age = ageLearner
        self.gender = genderLearner
        self.imageProfile = imageProfileLearner
    }
    
    func increaseAge() {
        self.age += 1
    }
}

class Lamborghini
{
    var name: String
    var horsePower: Int
    var speed: Int

    init(carName: String, carHorsePower: Int, carSpeed: Int) {
        self.name = carName
        self.horsePower = carHorsePower
        self.speed = carSpeed
    }
    
    func increaseSpeed(){
        self.speed += 10
    }
    
    func reduceSpeed()  {
        self.speed -= 5
    }
    
    func stopCar() {
        self.speed -= speed
    }
    
    func useNOS() {
        self.horsePower += 50
        self.speed += 30
    }
}
