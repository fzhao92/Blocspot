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
    static let sharedInstance = DataSource()
    var searchResults:[MKMapItem]
    var searchHistory: SearchHistory
    
    init () {
        searchResults = []
        searchHistory = SearchHistory()
    }
    
    func search(searchText: String?, mapView: MKMapView?) {
        guard let mapView = mapView,
            let searchBarText = searchText else { return }
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = searchBarText
        request.region = mapView.region
        let search = MKLocalSearch(request: request)
        search.startWithCompletionHandler { response, _ in
            guard let response = response else {
                return
            }
            self.searchHistory.addToSearchHistory(request) //save user search request
            self.searchResults = response.mapItems
        }
    }
}