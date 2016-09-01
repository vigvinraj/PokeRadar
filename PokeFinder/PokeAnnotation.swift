//
//  PokeAnnotation.swift
//  PokeFinder
//
//  Created by Vignesh Kumar on 9/1/16.
//  Copyright © 2016 Vignesh Kumar. All rights reserved.
//

import Foundation
import MapKit

class PokeAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    var pokeId: Int
    var pokeName: String
    var title: String?

    
    
    init(coordinate: CLLocationCoordinate2D, pokeId: Int, pokeName: String) {
        self.coordinate = coordinate
        self.pokeId = pokeId
        self.pokeName = pokeName.capitalized
        self.title = self.pokeName
    }
    
    
}
