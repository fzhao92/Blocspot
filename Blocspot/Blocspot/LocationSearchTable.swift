//
//  SearchResultsTable.swift
//  Blocspot
//
//  Created by Forrest Zhao on 5/25/16.
//  Copyright © 2016 Forrest Zhao. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class LocationSearchTable: UITableViewController {
    var matchingItems:[MKMapItem] = []
    var mapView: MKMapView? = nil
}

/*
func par(<#parameters#>) -> <#return type#> {
    <#function body#>
}
*/

extension LocationSearchTable: UISearchResultsUpdating {
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        guard let mapView = mapView,
            let searchBarText = searchController.searchBar.text else { return }
        DataSource.sharedInstance.search(searchBarText, mapView: mapView)
        matchingItems = DataSource.sharedInstance.searchResults
        self.tableView.reloadData()
        /*
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = searchBarText
        request.region = mapView.region
        let search = MKLocalSearch(request: request)
        search.startWithCompletionHandler { response, _ in
            guard let response = response else {
                return
            }
            self.matchingItems = response.mapItems
            self.tableView.reloadData()
         */
    }
}

extension LocationSearchTable {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return matchingItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        let selectedItem = matchingItems[indexPath.row].placemark
        cell.textLabel?.text = selectedItem.name
        cell.detailTextLabel?.text = ""
        return cell
    }
}