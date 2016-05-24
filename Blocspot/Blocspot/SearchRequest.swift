//
//  SearchRequest.swift
//  Blocspot
//
//  Created by Forrest Zhao on 5/22/16.
//  Copyright © 2016 Forrest Zhao. All rights reserved.
//

import Foundation
import MapKit

class UserSearch: NSObject {
    let searchTerm: String?
    var searchResults: MKLocalSearchResponse
    //let searchResults: Array<MKMapItem>
    
    init(searchTerm: String) {
        self.searchTerm = searchTerm
        self.searchResults = nil
        super.init()
    }
    
    var term: String {
        get {
            return searchTerm!
        }
    }
    
    var results: MKLocalSearchResponse{
        get{
            return searchResults
        }
        set{
            searchResults = results
        }
    }
    
}