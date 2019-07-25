//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var data2 = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
       var fill = maxFuel - fuelLevel
       fuelLevel = 5000
    self.fuelCost += fill * data2.fuelPrices[location]!
       return fill
    }
    
    
    func flyTo(destination : String) {
        var newDistance = distanceTo(location: self.location, target: destination)
        distanceTraveled += newDistance
        self.location = destination
        self.fuelLevel = fuelLevel - (Double(newDistance) * milesPerGallon)
    }
    
    func distanceTo(location: String, target : String) -> Int {
        return data2.knownDistances[location]![target]!

    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
        
    }
    var author = "author"
    init(authorName: String) {
        author = authorName
    }
   
} //end of class
