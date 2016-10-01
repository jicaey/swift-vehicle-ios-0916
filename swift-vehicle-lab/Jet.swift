//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Michael Young on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        if altitude < maxAltitude &&
            inFlight == true {
            altitude += (maxAltitude * 0.20)
            super.decelerate()
        }
    }
    
    override func dive() {
        if inFlight && altitude - (maxAltitude / 5) > 0 {
            altitude -= (maxAltitude * 0.2)
            accelerate()
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = (maxSpeed * 2)
        }
    }
    
    
    
    
}
