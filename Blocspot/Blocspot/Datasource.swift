//
//  Datasource.swift
//  Blocspot
//
//  Created by Forrest Zhao on 5/23/16.
//  Copyright © 2016 Forrest Zhao. All rights reserved.
//

import Foundation
import MapKit

class DataSource {
    class var sharedDataSource: DataSource {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: DataSource? = nil
        }
        dispatch_once(&Static.onceToken){
            Static.instance = DataSource()
        }
        return Static.instance!
    }
    
    
    
    func search(searchRequest: UserSearch, currentLocation: CLLocationCoordinate2D) {
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = searchRequest.searchTerm
        request.region = MKCoordinateRegionMakeWithDistance(currentLocation, 1000, 1000) //set search radius to 1km
        
        MKLocalSearch(request: request).startWithCompletionHandler{ (response, error) in
            guard error == nil else {return}
            guard response != nil else {return}
            guard response?.mapItems.count > 0 else {return}
            
        }
    }
}