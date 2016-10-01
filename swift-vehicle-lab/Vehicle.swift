//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Michael Young on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init(name:String, weight:Double, maxSpeed:Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    
    // Should not increase speed beyond maxSpeed
    func accelerate() {
        if speed + (maxSpeed / 10) < maxSpeed {
            speed += (maxSpeed * 0.1)
        }
    }
    // Should not decrease speed below 0
    func decelerate() {
        if speed - (maxSpeed / 10) > 0 {
            speed -= (maxSpeed * 0.1)
        }
    }
    
    // Heading is between 0 and 360
    // Should have no effect on a stationary vehicle
    
    func turnRight() {
        if speed > 0 {
            speed /= 2
            heading += 90.0
            if heading > 360 {
                heading = Double(Int(heading) % 360)
            }
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            speed /= 2
            heading -= 90
            if heading < 0 && heading > -360 {
                heading = Double((Int(heading) + 360) % 360)
            }
        }
    }
    
    
    
    
}
