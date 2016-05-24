//
//  PositionOfInterest.swift
//  Blocspot
//
//  Created by Forrest Zhao on 5/23/16.
//  Copyright © 2016 Forrest Zhao. All rights reserved.
//

import Foundation
import MapKit

class PositionOfInterest: NSObject, MKAnnotation {
    let locationName: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.locationName = locationName
        self.coordinate = coordinate
        
        super.init()
    }

    
    
}