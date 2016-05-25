//
//  SearchRequest.swift
//  Blocspot
//
//  Created by Forrest Zhao on 5/22/16.
//  Copyright © 2016 Forrest Zhao. All rights reserved.
//

import Foundation
import MapKit

//probably going to remove this class in favor of just saving requests in SearchHistory
class UserSearchRequest: NSObject {
    let searchTerm: String?
    //var searchResults: MKLocalSearchResponse
    var searchResults: Array<MKMapItem>
    
    init(searchTerm: String) {
        self.searchTerm = searchTerm
        self.searchResults = [MKMapItem]()
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