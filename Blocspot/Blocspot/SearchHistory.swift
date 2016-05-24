//
//  SearchHistory.swift
//  Blocspot
//
//  Created by Forrest Zhao on 5/23/16.
//  Copyright © 2016 Forrest Zhao. All rights reserved.
//

import Foundation

class SearchHistory: NSObject {
    var searchHistory: Dictionary<String, UserSearch>
    
    override init() {
        self.searchHistory = [:]
        super.init()
    }
    
    func addToSearchHistory(searchRequest: UserSearch) {
        self.searchHistory[searchRequest.searchTerm!] = searchRequest
    }
}
