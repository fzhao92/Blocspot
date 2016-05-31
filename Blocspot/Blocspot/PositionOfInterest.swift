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
    var isSaved: Bool
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.locationName = locationName
        self.coordinate = coordinate
        self.isSaved = false
        super.init()
    }
    
    var coord: CLLocationCoordinate2D {
        get {
            return coordinate
        }
    }
    
    var isSavedVal: Bool {
        set {
            isSaved = isSavedVal
        }
        get {
            return isSaved
        }
    }
}