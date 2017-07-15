//
//  Beer.swift
//  PUNKBeers
//
//  Created by Cristiana  Passos on 15/07/17.
//  Copyright © 2017 Cristiana. All rights reserved.
//

import Foundation

class Beer {
    var id: Int?
    var name: String
    var tagline: String
    var description : String
    var image: String
    var abv: Double
    var ibu: Double
    
    init (name: String, tagline: String, description: String, image: String, abv:Double, ibu:Double){
        self.name = name
        self.tagline = tagline
        self.description = description
        self.image = image
        self.abv = abv
        self.ibu = ibu
    }
    
}
