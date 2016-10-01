//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Michael Young on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name:String, weight:Double, maxSpeed:Double, transmission:String, cylinders:Int, milesPerGallon:Double, driver:String, sponsors:[String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
        
    }
    
    
    // should not exceed maxspeed
    override func accelerate() {
        speed += maxSpeed / 5
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    // should not fall below 0
    override func decelerate() {
        speed -= maxSpeed / 5
        if speed < 0 {
            speed = 0
        }
    }
        
    func driftRight() {
        if speed > 0 {
            heading += 90
            speed -= (speed * 0.25)
            if heading > 360 {
                heading = Double(Int(heading) % 360)
            }
        }
    }
    
    func driftLeft() {
        if speed > 0 {
            heading -= 90
            speed -= (speed * 0.25)
            if heading < 0 {
                //if heading > -360 {
                    heading = Double((Int(heading) + 360) % 360)
                //}
            }
        }
    }
    
    
    
    
    
    
    
}
