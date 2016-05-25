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
    static let sharedDataSource = DataSource()
    
    func queryMaps(searchTerm: String, currentLocation: CLLocationCoordinate2D, searchHistory: SearchHistory) {
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = searchTerm
        request.region = MKCoordinateRegionMakeWithDistance(currentLocation, 1000, 1000) //set search radius to 1km
        
        MKLocalSearch(request: request).startWithCompletionHandler{ (response, error) in
            guard let response = response else {
                print("There was an error searching for: \(request.naturalLanguageQuery) error: \(error)")
                return
            }
            guard response.mapItems.count > 0 else {return}
            
            for item in response.mapItems{
                //display in view controller
            }
            //save search term to search history
            searchHistory.addToSearchHistory(request)
        }
    }
}