//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Michael Young on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double
    
    
    var inFlight: Bool {
        if speed > 0 && altitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        
    }
    
    func takeoff() {
        if !inFlight {
            speed = (super.maxSpeed * 0.1)
            altitude = (self.maxAltitude * 0.1)
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    // Should not exceed maxAltitude
    func climb() {
        if inFlight && altitude < maxAltitude {
            altitude += maxAltitude * 0.1
            decelerate()
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            }
        }



    func dive() {
        if altitude > 0 {
            altitude -= (maxAltitude * 0.1)
            super.accelerate()
        }; if altitude < 0 {
            altitude = 0
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            speed -= (speed * 0.1)
        }; if heading > 360 {
            heading = Double(Int(heading) % 360)
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            speed -= (speed * 0.1)
        }; if heading < 0 && heading > -360 {
            heading = Double((Int(heading) + 360) % 360)
        }
    }
}










