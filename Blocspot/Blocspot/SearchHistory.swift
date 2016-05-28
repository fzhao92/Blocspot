//
//  SearchHistory.swift
//  Blocspot
//
//  Created by Forrest Zhao on 5/23/16.
//  Copyright © 2016 Forrest Zhao. All rights reserved.
//

import Foundation
import MapKit

class SearchHistory: NSObject {
    var searchHistoryArray: Dictionary<String, MKLocalSearchRequest>
    
    override init() {
        self.searchHistoryArray = [:]
        super.init()
    }
    
    func addToSearchHistory(searchRequest: MKLocalSearchRequest) {
        self.searchHistoryArray[searchRequest.naturalLanguageQuery!] = searchRequest
    }
}
