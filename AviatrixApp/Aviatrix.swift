//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        self.location = destination
    }
    
    func distanceTo(target : String) -> Int {
        return data2.knownDistances[location]![target]!

    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
        
    }
    var author = "author"
    init(authorName: String) {
        author = authorName
    }
    var data2 = AviatrixData()
    var location = "St. Louis"
} //end of class
