//
//  Planet.swift
//  Galactic Guidebook
//
//  Created by Anna Diederich on 6/29/20.
//  Copyright © 2020 Hailey Bixler. All rights reserved.
//

import Foundation
import UIKit

var globalPlanets : [Planet] = [] 

class Planet{
    var name : String
    var description : String
    var image : UIImage
    
    init(name:String, description:String, image:UIImage) {
        self.name = name
        self.description = description
        self.image = image
    }
}
